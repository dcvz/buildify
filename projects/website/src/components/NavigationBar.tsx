import React from "react";
import { styled } from "../styles/stitches.config";
import * as Toolbar from "@radix-ui/react-toolbar";

const StyledToolbar = styled(Toolbar.Root, {
  display: "flex",
});

const itemStyles = {};

const StyledLink = styled(Toolbar.Link, itemStyles);

const NavigationBar = () => {
  return (
    <nav>
      <StyledToolbar>
        <StyledLink>Buildify</StyledLink>
        <Toolbar.Separator />
        <StyledLink>Documentation</StyledLink>
        <StyledLink>Blog</StyledLink>
      </StyledToolbar>
    </nav>
  );
};

export default NavigationBar;
