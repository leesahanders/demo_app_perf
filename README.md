# demo_app_perf

This is a quarto presentation on improving app performance containing a profvis example under the test folder. Enjoy!

It can be accessed at: <https://questionable.quarto.pub/improving-app-performance-with-profvis/#/title-slide>

## Additional resources 

There are links to various additional and recommended resources sprinkled throughout, however here a few overview level recommendations: 

Benchmarking / profiling tools
-   Profiling your shiny app with [profvis](https://shiny.rstudio.com/articles/profiling.html), [shinyloadtest](https://github.com/rstudio/shinyloadtest), [shinytest2](https://rstudio.github.io/shinytest2/articles/use-application-audit.html#load-testing-with-shinytest2)
-   Plumber: [profvis](https://rstudio.github.io/profvis/)
-   More granular profiling with [microbenchmark](https://cran.r-project.org/web/packages/microbenchmark/index.html)
-   Dash: [Dash Dev Tools](https://dash.plotly.com/devtools) / [pyinstrument](https://pyinstrument.readthedocs.io/en/latest/guide.html#profile-a-specific-chunk-of-code)
-   Streamlit / Bokeh / Flask / FastAPI: [pyinstrument](https://pyinstrument.readthedocs.io/en/latest/guide.html#profile-a-specific-chunk-of-code)

[Mastering Shiny](https://mastering-shiny.org/performance.html)
[Shiny in production: Principles, practices, and tools](https://www.rstudio.com/resources/rstudioconf-2019/shiny-in-production-principles-practices-and-tools/)
[Scaling and Performance Tuning in RStudio Connect](https://support.rstudio.com/hc/en-us/articles/231874748-Scaling-and-Performance-Tuning-in-RStudio-Connect)
Simulate runtime settings and events: [Shimmer Shiny Sizing](https://colorado.rstudio.com/rsc/shimmer_and_shiny/)

### shinyloadtest

 - Shinyloadtest package documentation: <https://rstudio.github.io/shinyloadtest/>
 - Shinyloadtest git repo: <https://github.com/rstudio/shinyloadtest/> 
 - Connect specific article: <https://rstudio.github.io/shinyloadtest/articles/load-testing-authenticated-apps.html>
 - Installing shinycannon: https://rstudio.github.io/shinyloadtest/articles/shinycannon.html#installation 
 - Analyzing the results: <https://rstudio.github.io/shinyloadtest/articles/analyzing-load-test-logs.html> 

### shinytest2 

- shinytest2 main documentation: <https://rstudio.github.io/shinytest2/articles/use-application-audit.html#load-testing-with-shinytest2> 
- shinytest2 load testing: <https://rstudio.github.io/shinytest2/articles/use-application-audit.html?q=load%20test#load-testing-with-shinytest2> 
- <https://www.youtube.com/watch?v=Gucwz865aqQ>
- <https://www.youtube.com/watch?v=7KLv6HdIxvU>
- <https://github.com/schloerke/presentation-2022-07-28-rstudioconf22-shinytest2>
- <https://github.com/schloerke/presentation-2022-04-27-appsilon-shinytest2>
- <https://www.jumpingrivers.com/blog/end-to-end-testing-shinytest2-part-1/>

### CRAN whales case study 

- Cran whales: <https://rstudio.github.io/promises/articles/casestudy.html>
- Cran whales <talk: https://www.youtube.com/watch?v=Wy3TY0gOmJw>
- Cran whales article: <https://cran.r-project.org/web/packages/promises/vignettes/casestudy.html>
- Output: [https://rpubs.com/jcheng/cranwhales-etl](https://rpubs.com/jcheng/cranwhales-etl)
- Cranwhales app: <https://gallery.shinyapps.io/087-crandash/>
- Install it yourself: <https://github.com/rstudio/cranwhales>

### Related packages

 - Novartis developed shinyValidator: <https://github.com/Novartis/shinyValidator> 
 - shinyValidator slide deck: <https://appsilonconf2022.rinterface.com/?panelset3=package-your-app2&panelset4=what2&panelset5=purpose2#1> 
   - (Note that shinyValidator is not to be confused with shinyValidate which is used for input validation: <https://rstudio.github.io/shinyvalidate/> )
 - reactlog: <https://rstudio.github.io/reactlog/> 
 - shinytest2: <https://rstudio.github.io/shinytest2/articles/use-application-audit.html> 
 - Python load testing: <https://locust.io/> 

## Publishing 

Notes for the developer: 

This presentation is published to the RStudio demo server using push button publishing from the RStudio IDE. 

It is also published to my quarto pub space. I run `quarto publish quarto-pub` from terminal after cd-ing in to the directory. Answer "Y" to overwrite my previous site and to use the correct account. For example, to publish this slide deck I'm running: `quarto publish quarto-pub app_perf.qmd`. It will need to be a quarto project. If you have an existing directory of documents that you want to treat as a project just invoke `quarto create-project` with no arguments from within the directory. 

I can access my account and see my deployments at <https://questionable.quarto.pub/>. 