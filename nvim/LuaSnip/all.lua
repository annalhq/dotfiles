local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("read", {
    t("int n; cin >> n;"),
  }),

  s("cp", {
    t({
      "#include <bits/stdc++.h>",
      "",
      "using namespace std;",
      "",
      "#define ll long long",
      "#define endl '\\n'",
      "#define vin(name,len) vector<int> name(len); for (auto &_ : name) cin >> _;",
      "#define vinl(name,len) vector<long long> name(len); for (auto &_ : name) cin >> _;",
      '#define vout(v) for (auto _ : v) cout << _ <<  " "; cout << endl;',
      "",
      "inline void solve() {",
      "  ",
    }),
    i(1),
    t({
      "",
      "}",
      "",
      "int main() {",
      "    ios::sync_with_stdio(false);",
      "    cin.tie(nullptr);",
      "    int t = 1;",
      "    cin >> t;",
      "    while (t--) solve();",
      "    return 0;",
      "}",
    }),
  }),
}
