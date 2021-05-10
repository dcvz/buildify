import React from "react";
import ErrorTracking from "./ErrorTracking";
import "@shopify/polaris/dist/styles.css";

const App = () => {
  return (
    <ErrorTracking>
      <div>Hello world</div>
    </ErrorTracking>
  );
};

export default App;
