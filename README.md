# demo_app_perf

This is a quarto presentation on improving app performance containing a profvis example under the test folder. Enjoy!

It can be accessed at: <https://questionable.quarto.pub/improving-app-performance-with-profvis/#/title-slide>

## Publishing 

Notes for the developer: 

This presentation is published to the RStudio demo server using push button publishing from the RStudio IDE. 

It is also published to my quarto pub space. I run `quarto publish quarto-pub` from terminal after cd-ing in to the directory. Answer "Y" to overwrite my previous site and to use the correct account. For example, to publish this slide deck I'm running: `quarto publish quarto-pub app_perf.qmd`. It will need to be a quarto project. If you have an existing directory of documents that you want to treat as a project just invoke `quarto create-project` with no arguments from within the directory. 

I can access my account and see my deployments at <https://questionable.quarto.pub/reproduceable-workflows/>. 

## Additional resources 

There are links to various additional and recommended resources sprinkled throughout, however here a few overview level recommendations: 

Benchmarking / profiling tools
-   Shiny: [shinyloadtest](https://github.com/rstudio/shinyloadtest) / [profvis](https://rstudio.github.io/profvis/)
-   Plumber: [profvis](https://rstudio.github.io/profvis/)
-   Dash: [Dash Dev Tools](https://dash.plotly.com/devtools) / [pyinstrument](https://pyinstrument.readthedocs.io/en/latest/guide.html#profile-a-specific-chunk-of-code)
-   Streamlit / Bokeh / Flask / FastAPI: [pyinstrument](https://pyinstrument.readthedocs.io/en/latest/guide.html#profile-a-specific-chunk-of-code)

[Mastering Shiny](https://mastering-shiny.org/performance.html)
[Shiny in production: Principles, practices, and tools](https://www.rstudio.com/resources/rstudioconf-2019/shiny-in-production-principles-practices-and-tools/)
[Scaling and Performance Tuning in RStudio Connect](https://support.rstudio.com/hc/en-us/articles/231874748-Scaling-and-Performance-Tuning-in-RStudio-Connect)
Simulate runtime settings and events: [Shimmer Shiny Sizing](https://colorado.rstudio.com/rsc/shimmer_and_shiny/)
