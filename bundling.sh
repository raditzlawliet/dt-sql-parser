tsc
# echo 'window.dtSQLParser = { parser, filter };' >> lib/index.js
        # browserify lib/index.js > lib/dt-sql-parser.js
rm -f build
mkdir build
browserify lib/index.js -s dtSQLParser > build/dt-sql-parser.js
browserify lib/index.js -s dtSQLParser | uglifyjs > build/dt-sql-parser.min.js