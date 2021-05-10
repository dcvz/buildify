import React from "react";
import ErrorTracking from "./ErrorTracking";
import theme from "../style/theme";

const App = () => {
  // @ts-ignore
  return (
    <ErrorTracking>
      <div sx={{ bg: "red" }}>Hello it xxxxasdgas;</div>
    </ErrorTracking>
  );
};

export default App;
