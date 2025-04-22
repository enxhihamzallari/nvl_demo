// const handleOnNodeClick = (node: NVLNode) => {
//         if (createMode === "relationship") {
//               if (selectedNodes.length === 0) {
//                 setSelectedNodes([node]);
//               } else if (selectedNodes.length === 1) {
//                 setSelectedNodes((prev) => {
//                   const secondNode = node;
//                   const [firstNode] = prev;

//                   if (firstNode.id === secondNode.id) {
//                     alert("Cannot create relationship to the same node.");
//                     return [];
//                   }

//                   const type = prompt("Enter relationship type (e.g., KNOWS)");
//                   if (!type) return [];

//                   createRelationship(firstNode, secondNode, type);
//                   return [];
//                 });
//               }
//             } else {
//               if (node.captions && node.captions.length > 0) {
//                 nvlRef.current?.fit([node.id]);
//                 const label = node.captions[0].value;
//                 label && setLabel(label);
//               }
//             }
//       };

///////////
// const handleRelClick = (rel: NVLRelationship) => {
//     const confirmDelete = window.confirm("Do you want to delete this relationship?");
//     if (!confirmDelete) return;
  
//     const query = `
//       MATCH ()-[r]->() WHERE id(r) = $relId
//       DELETE r
//     `;
  
//     connect(query, { relId: Number(rel.id) }).then(() => {
//       setRelationships((prev) => prev.filter((r) => r.id !== rel.id));
//     });
//   };

////////////

// const handleNodeRightClick = (node: NVLNode) => {
//     const confirmDelete = window.confirm("Do you want to delete this node?");
//     if (!confirmDelete) return;
  
//     const query = `
//       MATCH (n) WHERE id(n) = $nodeId
//       DETACH DELETE n
//     `;
  
//     connect(query, { nodeId: Number(node.id) }).then(() => {
//       setNodes((prev) => prev.filter((n) => n.id !== node.id));
//       setRelationships((prev) =>
//         prev.filter((r) => r.from !== node.id && r.to !== node.id)
//       );
//     });
//   };

/////////

// mouseEventCallbacks={{
//     onZoom: clearLabel,
//     onPan: clearLabel,
//     onCanvasClick: clearLabel,
//     onNodeClick: handleOnNodeClick,
//     onNodeRightClick: handleNodeRightClick,
//     onRelClick: handleRelClick,
//   }}


///////////////////
    // const createRelationship = async (source: NVLNode, target: NVLNode, type: string) => {
    //   const query = `
    // 	MATCH (a {name: $aName}), (b {name: $bName})
    // 	MERGE (a)-[r:${type.toUpperCase()}]->(b)
    // 	RETURN a, labels(a) AS a_labels, r, b, labels(b) AS b_labels
    //   `;
  
    //   const result = await connect(query, {
    // 	aName: (source as any).properties?.name,
    // 	bName: (target as any).properties?.name,
    //   });
  
    //   if (!result) return;
  
    //   const { styledNodes, styledRelationships } = styleGraph(result);
  
    //   setNodes((prev) => mergeNodes(prev, styledNodes));
    //   setRelationships((prev) => mergeRelationships(prev, styledRelationships));
  
    //   // Fit the view to the new relationship
    //   if (nvlRef.current) {
    // 	nvlRef.current?.fit([source.id, target.id]);
    //   }
    // };



/////////connections.ts
// Extend Node and Relationship from NVLBase to include additional properties
// interface Node extends NVLNode {
//   labels: string[];  // Neo4j node labels
//   properties: Record<string, any>;  // Properties of the node
// }

// interface Relationship extends NVLRelationship {
//   startNodeId: string;  // Start node ID of the relationship
//   endNodeId: string;    // End node ID of the relationship
//   properties: Record<string, any>;  // Properties of the relationship
//   tots: string; // 
// }

// // Custom result transformer function
// const customResultTransformer = (result: QueryResult): { nodes: Node[]; relationships: Relationship[] } => {
//   const nodes: Node[] = [];
//   const relationships: Relationship[] = [];

//   // Iterate over the result records
//   result.records.forEach((record: RecordShape) => {
//     record.forEach((value: any) => {
//       if (value instanceof neo4j.types.Node) {
//         nodes.push({
//           id: value.identity.toString(),  // Convert node identity to string
//           labels: value.labels,  // Assign node labels
//           properties: value.properties,  // Assign node properties
//         });
//       }

//       if (value instanceof neo4j.types.Relationship) {
//         relationships.push({
//           id: value.identity.toString(), // Convert relationship identity to string
//           type: value.type, // Relationship type
//           startNodeId: value.start.toString(), // Convert start node ID to string
//           endNodeId: value.end.toString(), // Convert end node ID to string
//           properties: value.properties,
//           from: value.start.toString(), // Start node ID (required)
//           to: value.end.toString(),  
//           tots: value.type,
//         });
//       }
//     });
//   });

//   return { nodes, relationships };
// };

// // The connect function to query Neo4j
// export const connect = async (
//   query: string,
//   param = {},
//   options: { write?: boolean; transform?: boolean } = {}
// ): Promise<{
//   nodes?: Node[];
//   relationships?: Relationship[];
//   raw?: QueryResult;
// } | undefined> => {
//   const driver: Driver = neo4j.driver(URI, neo4j.auth.basic(USER, PASSWORD));
//   const session = driver.session({ database: "neo4j" });

//   try {
//     // Use the appropriate transaction type based on the write option
//     const result: QueryResult = await session[options.write ? "writeTransaction" : "readTransaction"](
//       async (tx) => tx.run(query, param)
//     );

//     // If transformation is requested, apply the custom result transformer
//     if (options.transform) {
//       const transformed = customResultTransformer(result);
//       return transformed;
//     }

//     // Otherwise, just return the raw result
//     return { raw: result };
//   } catch (err) {
//     console.error(`Connection error\n${err}`);
//   } finally {
//     await session.close();
//     await driver.close();
//   }
// };



////
// const createRelationship = async (source: NVLNode, target: NVLNode, type: string) => {
//     const sourceName = getNodeName(source);
//     const targetName = getNodeName(target);
  
//     console.log("Creating relationship:", sourceName, targetName, type);
  
//     if (!sourceName || !targetName) {
//       console.error("Missing node names. Cannot create relationship.");
//       return;
//     }
  
//     // const query = `
//     //   MATCH (a {name: $aName}), (b {name: $bName})
//     //   MERGE (a)-[r:${type.toUpperCase()}]->(b)
//     //   RETURN a, labels(a) AS a_labels, r, b, labels(b) AS b_labels
//     // `;
//     const params = {
//         aId: sourceElementId,
//         bId: targetElementId
//       };
//     const query = `MATCH (a), (b) WHERE id(a) = $aId AND id(b) = $bId CREATE (a)-[r:YOUR_REL_TYPE]->(b) RETURN a, r, b`;
    
//     // console.log("Running relationship query with:", {
//     // 	aName: sourceName,
//     // 	bName: targetName,
//     // 	query
//     //   });
//     try {
//       const result = await connect(query, {
//         aName: sourceName,
//         bName: targetName,
//       });
  
//       console.log("Relationship creation result:", result);
  
//       if (!result) return;
  
//       const { styledNodes, styledRelationships } = styleGraph(result);
//       console.log("Styled relationships:", styledRelationships);

  
//       setNodes((prev) => mergeNodes(prev, styledNodes));
//       setRelationships((prev) => mergeRelationships(prev, styledRelationships));
  
//       nvlRef.current?.fit([source.id, target.id]);
//       console.log("Creating relationship:", sourceName, targetName, type);
      
      
//     } catch (error) {
//       console.error("Relationship creation failed:", error);
//     }
//   };