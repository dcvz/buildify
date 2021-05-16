import * as React from "react";
import { GatsbySeo } from "gatsby-plugin-next-seo";
import HomeLayout from "../layouts/HomeLayout";

const IndexPage = () => {
  return (
    <HomeLayout>
      <GatsbySeo titleTemplate="Buildify" />
      It works
    </HomeLayout>
  );
};

export default IndexPage;
