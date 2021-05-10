module.exports = {
  siteMetadata: {
    title: "Buildify",
    siteUrl: "https://buildify.sh",
  },
  plugins: [
    "gatsby-plugin-image",
    "gatsby-plugin-sitemap",
    {
      resolve: "gatsby-plugin-manifest",
      options: {
        icon: "src/images/icon.png",
      },
    },
    "gatsby-plugin-mdx",
    "gatsby-plugin-sharp",
    "gatsby-transformer-sharp",
    {
      resolve: "gatsby-source-filesystem",
      options: {
        name: "images",
        path: "./src/images/",
      },
      __key: "images",
    },
    {
      resolve: "gatsby-source-filesystem",
      options: {
        name: "pages",
        path: "./src/pages/",
      },
      __key: "pages",
    },
    {
      resolve: "gatsby-plugin-next-seo",
      options: {
        title: "Buildify",
        titleTemplate: "%s | Buildify",
        description: "An open-source tool for releasing software",
        openGraph: {
          type: "website",
          locale: "en_IE",
          url: "https://buildify.dev/",
          site_name: "Buildify",
        },
        twitter: {
          handle: "@buildifydev",
          site: "@buildifydev",
          cardType: "summary",
        },
      },
    },
  ],
};
