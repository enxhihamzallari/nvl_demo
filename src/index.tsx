import React from "react";
import { createRoot } from "react-dom/client";

import { App2 } from "./App2";

const container = document.getElementById("app");
if (container) {
  createRoot(container).render(<App2 />);
} else {
  console.error("No container found");
}
