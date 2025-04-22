/// Custom result transformer to convert raw Neo4j result into nodes and relationships
// const customResultTransformer = (result: Result) => {
// 	const nodes: Node[] = [];
// 	const relationships: Relationship[] = [];
// 	const recordObjectMap = new Map<string, RecordShape>();
  
// 	result.records.forEach((record) => {
// 	  record.forEach((value) => {
// 		if (value instanceof neo4j.types.Node) {
// 		  nodes.push({
// 			id: value.identity.toString(),
// 			labels: value.labels,
// 			properties: value.properties,
// 		  });
// 		  recordObjectMap.set(value.identity.toString(), value);
// 		}
  
// 		if (value instanceof neo4j.types.Relationship) {
// 		  relationships.push({
// 			id: value.identity.toString(),
// 			type: value.type,
// 			startNodeId: value.start.toString(),
// 			endNodeId: value.end.toString(),
// 			properties: value.properties,
// 		  });
// 		  recordObjectMap.set(value.identity.toString(), value);
// 		}
// 	  });
// 	});
  
// 	return { nodes, relationships, recordObjectMap };
//   };
  
//   // Connect function to run queries on Neo4j and return results
//   export const connect = async (
// 	query: string,
// 	param = {},
// 	options: { write?: boolean; transform?: boolean } = {}
//   ): Promise<{
// 	nodes?: Node[];
// 	relationships?: Relationship[];
// 	recordObjectMap?: Map<string, RecordShape>;
// 	raw?: Result;
//   } | undefined> => {
// 	const driver: Driver = neo4j.driver(URI, neo4j.auth.basic(USER, PASSWORD));
// 	const session = driver.session({ database: "neo4j" });
  
// 	try {
// 	  const result = await session[options.write ? "writeTransaction" : "readTransaction"](
// 		async (tx) => tx.run(query, param)
// 	  );
  
// 	  if (options.transform) {
// 		const transformed = customResultTransformer(result);
// 		return transformed;
// 	  }
  
// 	  return { raw: result };
// 	} catch (err) {
// 	  console.error(`Connection error\n${err}`);
// 	} finally {
// 	  await session.close();
// 	  await driver.close();
// 	}
//   };
// export const App = () => {
// 	const [nodes, setNodes] = useState<Node[]>([]);
// 	const [relationships, setRelationships] = useState<Relationship[]>([]);
// 	const [label, setLabel] = useState<string | null>(null);
// 	const [newNodeName, setNewNodeName] = useState("");
// 	const [createMode, setCreateMode] = useState<"none" | "relationship">("none");
// 	const [selectedNodes, setSelectedNodes] = useState<Node[]>([]);
      
// 	const nvlRef = useRef<NVL | null>(null);
  
// 	const clearLabel = () => {
// 	  setLabel(null);
// 	};
  
// 	const mergeNodes = (existing: Node[], incoming: Node[]) => {
// 	  const existingIds = new Set(existing.map((n) => n.id));
// 	  return [...existing, ...incoming.filter((n) => !existingIds.has(n.id))];
// 	};
  
// 	const mergeRelationships = (existing: Relationship[], incoming: Relationship[]) => {
// 	  const existingIds = new Set(existing.map((r) => r.id));
// 	  return [...existing, ...incoming.filter((r) => !existingIds.has(r.id))];
// 	};
  
// 	const createNode = async () => {
// 	  if (!newNodeName) return;
  
// 	  const query = `
// 		MERGE (n:CustomNode {name: $name})
// 		RETURN n, labels(n) AS n_labels
// 	  `;
  
// 	//   const result = await connect(query, { name: newNodeName });
// 	const result = await connect(query, { name: newNodeName }, { write: true });

  
// 	  if (!result) return;
  
// 	  const { styledNodes } = styleGraph(result);
  
// 	  setNodes((prev) => mergeNodes(prev, styledNodes));
// 	  setNewNodeName("");
  
// 	  if (nvlRef.current) {
// 		setTimeout(() => {
// 		  nvlRef.current?.fit([styledNodes[0].id]); // Focus the new node
// 		}, 0);
// 	  }
// 	};
  
// 	const getNodeName = (node: Node): string | undefined => {
// 		if (Array.isArray(node.captions) && node.captions.length > 0) {
// 		  // Pick the last caption or the most relevant one
// 		  return node.captions[node.captions.length - 1].value;
// 		}
// 		return undefined;
// 	  };
      
      
// 	  const createRelationship = async (source: Node, target: Node, type: string) => {
// 		const sourceName = getNodeName(source);
// 		const targetName = getNodeName(target);
      
// 		console.log("Creating relationship:", sourceName, targetName, type);
      
// 		if (!sourceName || !targetName) {
// 		  console.error("Missing node names. Cannot create relationship.");
// 		  return;
// 		}
      
// 		const query = `
// 		  MATCH (a {name: $aName}), (b {name: $bName})
// 		  MERGE (a)-[r:${type.toUpperCase()}]->(b)
// 		  RETURN a, labels(a) AS a_labels, r, b, labels(b) AS b_labels
// 		`;
      
// 		try {
// 		  const result = await connect(query, {
// 			aName: sourceName,
// 			bName: targetName,
// 		  });
      
// 		  console.log("Relationship creation result:", result);
      
// 		  if (!result) return;
      
// 		  const { styledNodes, styledRelationships } = styleGraph(result);
      
// 		  setNodes((prev) => mergeNodes(prev, styledNodes));
// 		  setRelationships((prev) => mergeRelationships(prev, styledRelationships));
      
// 		  nvlRef.current?.fit([source.id, target.id]);
// 		} catch (error) {
// 		  console.error("Relationship creation failed:", error);
// 		}
// 	  };	  
      
  
// 	useEffect(() => {
// 	  connect(
// 		"MATCH (a)-[r]->(b) RETURN a, labels(a) AS a_labels, r, b, labels(b) AS b_labels LIMIT 100"
// 	  )
// 		.then((result) => {
// 		  if (!result) return;
  
// 		  const { styledNodes, styledRelationships } = styleGraph(result);
  
// 		  setNodes(styledNodes);
// 		  setRelationships(styledRelationships);
// 		})
// 		.catch((err) => {
// 		  console.log(err);
// 		});
// 	}, []);
  
// 	return (
// 	  <>
// 		<div
// 		  style={{
// 			width: "100%",
// 			height: "95vh",
// 			background: "linear-gradient(to right, white, lightgrey)",
// 		  }}
// 		>
// 		  <InteractiveNvlWrapper
// 			ref={nvlRef}
// 			nodes={nodes}
// 			rels={relationships}
// 			mouseEventCallbacks={{
// 			  onZoom: clearLabel,
// 			  onPan: clearLabel,
// 			  onCanvasClick: clearLabel,
// 			  onNodeClick: (node) => {
// 				console.log("Clicked node:", node);
// 				if (createMode === "relationship") {
// 				  if (selectedNodes.length === 0) {
// 					setSelectedNodes([node]);
// 				  } else if (selectedNodes.length === 1) {
// 					setSelectedNodes((prev) => {
// 					  const secondNode = node;
// 					  const [firstNode] = prev;
  
// 					  if (firstNode.id === secondNode.id) {
// 						alert("Cannot create relationship to the same node.");
// 						return [];
// 					  }
  
// 					  const type = prompt("Enter relationship type (e.g., KNOWS)");
// 					  if (!type) return [];
  
// 					  createRelationship(firstNode, secondNode, type);
// 					  return [];
// 					});
// 				  }
// 				} else {
// 				  if (node.captions && node.captions.length > 0) {
// 					nvlRef.current?.fit([node.id]);
// 					const label = node.captions[0].value;
// 					label && setLabel(label);
// 				  }
// 				}
// 			  },
// 			}}
// 		  />
// 		</div>
  
// 		{label && <Modal label={label} />}
  
// 		<div style={{ padding: "1rem", background: "#eee" }}>
// 		  <h3>Create Node</h3>
// 		  <input
// 			placeholder="Node name"
// 			value={newNodeName}
// 			onChange={(e) => setNewNodeName(e.target.value)}
// 			style={{ marginRight: "0.5rem" }}
// 		  />
// 		  <button onClick={createNode}>Add Node</button>
  
// 		  <div style={{ marginTop: "1rem" }}>
// 			<h4>Relationship Mode</h4>
// 			<button
// 			  onClick={() => {
// 				setCreateMode((prev) => (prev === "relationship" ? "none" : "relationship"));
// 				setSelectedNodes([]);
// 			  }}
// 			  style={{
// 				background: createMode === "relationship" ? "#ccc" : "#fff",
// 				border: "1px solid #888",
// 				padding: "0.5rem",
// 			  }}
// 			>
// 			  {createMode === "relationship"
// 				? "Cancel Relationship Mode"
// 				: "Create Relationship Between Two Nodes"}
// 			</button>
// 		  </div>
// 		</div>
// 	  </>
// 	);
//   };