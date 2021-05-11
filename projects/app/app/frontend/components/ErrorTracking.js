"use strict";
exports.__esModule = true;
var React = require("react");
var js_1 = require("@bugsnag/js");
var plugin_react_1 = require("@bugsnag/plugin-react");
// @ts-ignore
var bugsnagKey = process.env.BUGSNAG_FRONTEND_KEY;
var ErrorTracking = function (_a) {
    var children = _a.children;
    var ErrorBoundary;
    if (bugsnagKey) {
        console.log(bugsnagKey);
        js_1["default"].start({
            // @ts-ignore
            apiKey: bugsnagKey,
            plugins: [new plugin_react_1["default"]()]
        });
        // @ts-ignore
        ErrorBoundary = js_1["default"].getPlugin("react").createErrorBoundary(React);
        return <ErrorBoundary>{children}</ErrorBoundary>;
    }
    else {
        return <>{children}</>;
    }
};
exports["default"] = ErrorTracking;
