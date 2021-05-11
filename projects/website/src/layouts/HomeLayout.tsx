import React from "react";
import NavigationBar from "../components/NavigationBar";
import Footer from "../components/Footer";

type Props = {
  children?: React.ReactNode;
};

const HomeLayout = ({ children }: Props) => {
  return (
    <main>
      <header>
        <NavigationBar />
      </header>
      {children}
      <Footer />
    </main>
  );
};

export default HomeLayout;
