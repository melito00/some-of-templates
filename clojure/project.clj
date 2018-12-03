(defproject clj-exercise "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.9.0"]
                 [org.clojure/tools.cli "0.4.1"]]
  :main ^:skip-aot clj-exercise.core
  :target-path "target/%s"
  :plugins [[lein-bin "0.3.4"]]
  :repl { :plugins [[lein-pprint "1.1.1"]] }
  :profiles {:uberjar {:aot :all}})
