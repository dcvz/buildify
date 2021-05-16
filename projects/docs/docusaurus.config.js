/** @type {import('@docusaurus/types').DocusaurusConfig} */
const remarkEmoji = require("remark-emoji");
const remarkExternalLinks = require("remark-external-links");

module.exports = {
  title: "Buildify Documentation",
  tagline: "Documentation about how to use and contribute to the tool.",
  url: "https://dev.buildify.dev",
  baseUrl: "/",
  onBrokenLinks: "throw",
  onBrokenMarkdownLinks: "warn",
  favicon: "img/favicon.ico",
  organizationName: "buildifydev",
  projectName: "buildify",
  customFields: {
    defaultDocsLandingPage: "tutorial/get-started",
  },
  themeConfig: {
    prism: {
      additionalLanguages: ["ruby", "typescript", "javascript"],
      theme: require("prism-react-renderer/themes/dracula"),
    },
    algolia: {
      apiKey: "dev",
      indexName: "dev",
      contextualSearch: true,
      searchParameters: {},
    },
    navbar: {
      title: "Buildify",
      logo: {
        alt: "Buildify Logo",
        src: "img/logo.svg",
      },
      items: [
        {
          href: "https://github.com/craftweg/buildify",
          label: "GitHub",
          position: "right",
        },
      ],
    },
    footer: {
      style: "dark",
      links: [
        {
          title: "Docs",
          items: [
            {
              label: "Get Started",
              to: "/",
            },
          ],
        },
        {
          title: "Community",
          items: [
            {
              label: "GitHub Discussions",
              href: "https://github.com/craftweg/buildify/discussions",
            },
            {
              label: "Slack",
              href: "https://join.slack.com/t/buildifydev/shared_invite/zt-q1ab0kza-nFfA1pLCkafi3_cU85yIRQ",
            },
            {
              label: "Twitter",
              href: "https://twitter.com/buildifydev",
            },
          ],
        },
        {
          title: "More",
          items: [
            {
              label: "buildify.dev",
              to: "https://buildify.dev",
            },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} Buildify, Inc. Built with Docusaurus.`,
    },
  },
  plugins: [],
  presets: [
    [
      "@docusaurus/preset-classic",
      {
        docs: {
          routeBasePath: "/",
          sidebarPath: require.resolve("./sidebars.js"),
          editUrl:
            "https://github.com/craftweg/buildify/blob/main/projects/docs/",
          remarkPlugins: [remarkEmoji, remarkExternalLinks],
        },
        theme: {
          customCss: require.resolve("./src/css/custom.css"),
        },
      },
    ],
  ],
};
