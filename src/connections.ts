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

export const runRawQuery = async (query: string, param = {}): Promise<Result | undefined> => {
  try {
    const driver: Driver = neo4j.driver(URI, neo4j.auth.basic(USER, PASSWORD));
    const session = driver.session();
    const result = await session.run(query, param);
    await session.close();
    await driver.close();
    return result;
  } catch (err) {
    console.error(`Raw query error\n${err}.`);
    throw err;
  }
};
export const runMultipleQueries = async (queries: string[]): Promise<void> => {
  const driver: Driver = neo4j.driver(URI, neo4j.auth.basic(USER, PASSWORD));
  const session = driver.session();

  try {
    for (const query of queries) {
      const trimmedQuery = query.trim();
      if (trimmedQuery.length > 0) {
        console.log("Running query:", trimmedQuery.slice(0, 100) + "...");
        await session.run(trimmedQuery);
      }
    }
  } catch (err) {
    console.error(`Error while running multiple queries: ${err}`);
    throw err;
  } finally {
    await session.close();
    await driver.close();
  }
};

