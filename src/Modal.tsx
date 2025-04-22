import React, { useEffect, useRef, useState } from "react";
import { InteractiveNvlWrapper } from "@neo4j-nvl/react";
import NVL, { Node as NVLNode, NvlOptions, Relationship } from "@neo4j-nvl/base";
import { connect } from "./connections";
import { styleGraph } from "./styling";

export const Modal = ({ label }: { label: string }) => {
  const [nodes, setNodes] = useState<NVLNode[]>([]);
  const [relationships, setRelationships] = useState<Relationship[]>([]);
  const [renderer, setRenderer] = useState<NvlOptions["renderer"]>("webgl");
  const nvlRef = useRef<NVL | null>(null);

  useEffect(() => {
    setRenderer("webgl");
    setNodes([]);
    setRelationships([]);

    const query = `MATCH (a)-[r]->(b) RETURN a, labels(a) AS a_labels, r, b, labels(b) AS b_labels LIMIT 100`;
    connect(query, { label })
      .then((result) => {
        if (!result) return;

        const { styledNodes, styledRelationships, positions } = styleGraph(
          result,
          label
        );
        setNodes(styledNodes);
        setRelationships(styledRelationships);

        setTimeout(() => {
          nvlRef.current?.setNodePositions(positions, true);
        });
      })
      .catch((err) => {
        console.log(err);
      });
  }, [label]);

  return (
    <div
      style={{
        backdropFilter: `blur(3px)`,
        borderRadius: "50%",
        border: `5px solid black`,
        width: 800,
        height: 800,
        margin: 10,
        position: "fixed",
        top: `50%`,
        left: `50%`,
        transform: `translate(-50%, -50%)`,
        overflow: "hidden",
        boxShadow: "0 0 10px 10px lightgrey",
        background:
          "radial-gradient(circle, rgba(255, 255, 255, 0.75), lightgrey)",
      }}
    >
      <InteractiveNvlWrapper
        ref={nvlRef}
        nvlOptions={{ renderer, initialZoom: 0.1 }}
        nodes={nodes}
        rels={relationships}
        mouseEventCallbacks={{
          onZoom: true,
          onPan: true,
        }}
        nvlCallbacks={{
          onLayoutDone: () => {
            setRenderer("canvas");
          },
        }}
      />

    </div>
  );
};
