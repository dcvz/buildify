"use strict";
var __assign = (this && this.__assign) || function () {
    __assign = Object.assign || function(t) {
        for (var s, i = 1, n = arguments.length; i < n; i++) {
            s = arguments[i];
            for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p))
                t[p] = s[p];
        }
        return t;
    };
    return __assign.apply(this, arguments);
};
exports.__esModule = true;
var vite_1 = require("vite");
var vite_plugin_ruby_1 = require("vite-plugin-ruby");
var vite_plugin_full_reload_1 = require("vite-plugin-full-reload");
var plugin_react_refresh_1 = require("@vitejs/plugin-react-refresh");
var plugin_legacy_1 = require("@vitejs/plugin-legacy");
var vite_plugin_bugsnag_1 = require("vite-plugin-bugsnag");
var version = "0.1.0";
var isDistEnv = process.env.RAILS_ENV === "production";
var bugsnagOptions = {
    apiKey: process.env.BUGSNAG_API_KEY || "",
    appVersion: version
};
exports["default"] = vite_1.defineConfig({
    define: {
        "process.env.BUGSNAG_FRONTEND_KEY": JSON.stringify(process.env.BUGSNAG_FRONTEND_KEY)
    },
    plugins: [
        vite_plugin_ruby_1["default"](),
        vite_plugin_full_reload_1["default"](["config/routes.rb", "app/views/**/*"], { delay: 200 }),
        plugin_react_refresh_1["default"](),
        plugin_legacy_1["default"]({
            targets: ["defaults", "not IE 11"]
        }),
        isDistEnv &&
            vite_plugin_bugsnag_1.BugsnagBuildReporterPlugin(__assign(__assign({}, bugsnagOptions), { releaseStage: process.env.RAILS_ENV })),
        isDistEnv &&
            vite_plugin_bugsnag_1.BugsnagSourceMapUploaderPlugin(__assign(__assign({}, bugsnagOptions), { overwrite: true })),
    ]
});
