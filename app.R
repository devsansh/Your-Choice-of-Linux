library(shiny)

# Define UI ----
ui <- fluidPage(
  titlePanel("Best Linux Distros"),
  sidebarLayout(
    
    sidebarPanel(
      h1("Overiew"),
      
      p("1.",a("Fedora",href = "https://getfedora.org/")),
      p("2.",a("Ubuntu",href = "https://ubuntu.com/")),
      p("3.",a("Pop OS",href = "https://pop.system76.com/")),
      p("4.",a("Manjaro",href = "https://manjaro.org/")),
      p("5.",a("Linux Mint",href = "https://linuxmint.com/")),
      img(src="l.png",height = 120,width = 200)
      
      
      ),
    
    mainPanel(
      
      h1(strong("Top 5 Linux Distros for Coders")),
      p("1.Fedora is an open-source Linux-based operating system that is popular among programmers as it is easy to install and use, comes preloaded with many development tools, and is constantly updated with the latest technologies.",style = "font-family: 'times'; font-si16pt"),
      br(),
      p("2.Ubuntu is a widely used Linux distribution that is popular among programmers due to its large community, easy installation and configuration, and user-friendly interface. It provides a platform for software development, web development, and app development.",style = "font-family: 'times'; font-si16pt"),
      br(),
      p("3.Pop OS is a Linux distribution designed specifically for developers, scientists, and engineers. It comes preloaded with tools for programming and data analysis, making it an ideal choice for those working in these fields.",style = "font-family: 'times'; font-si16pt"),
      br(),
      p("4.Manjaro is a user-friendly Linux distribution that is popular among programmers for its ease of use and stability. It has a rolling release model, meaning it is constantly updated with the latest software packages and technologies.",style = "font-family: 'times'; font-si16pt"),
      br(),
      p("5.Linux Mint is a free and open-source Linux distribution that is popular among programmers due to its stability, user-friendly interface, and ease of use. It provides a robust platform for software development and comes preloaded with many development tools.",style = "font-family: 'times'; font-si16pt"),
      br(),
      
      selectInput("linux",h3("Your Choice ?"),
                  choices = list("Fedora","Ubuntu","Pop OS","Manjaro","Linux Mint"),
                            selected = "Fedora"),
      
      textOutput("display_var" )
                  
                  )
      )
  )
  #########################################

# Define server logic ----
server <- function(input, output) {
  
  output$display_var <- renderText({
    
  paste("You Have Selected ",input$linux)
  })
  
  
  
}

 #########################################

# Run the app ----
shinyApp(ui = ui, server = server)