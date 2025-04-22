import neo4j, { Driver, QueryResult, RecordShape, Result } from "neo4j-driver";
import { URI, USER, PASSWORD } from "./creds";
import { Node as NVLNode, Relationship as NVLRelationship, nvlResultTransformer, Relationship } from "@neo4j-nvl/base";


export const connect = async (
  query: string,
  param = {}
): Promise<
  | {
      recordObjectMap: Map<string, RecordShape>;
      nodes: NVLNode[];
      relationships: NVLRelationship[];
    }
  | undefined
> => {
  try {
    const driver: Driver = neo4j.driver(URI, neo4j.auth.basic(USER, PASSWORD));
    return await driver.executeQuery(query, param, {
      resultTransformer: nvlResultTransformer,
    });
    

  } catch (err) {
    console.error(`Connection error\n${err}.`);
    throw err;
  }
};

