#install.packages("shiny")
library(shiny)
library(ggplot2)

ui <- fluidPage(
  titlePanel("App test"),
  
  tags$head(
    tags$style(HTML("
      /* Make sidebar scrollable */
      .sidebar-scroll {
        max-height: 80vh;  /* Limits height to 80% of viewport */
        overflow-y: auto;  /* Enables vertical scrolling */
        padding-right: 15px;
        border-right: 2px solid #ddd; /* Optional: Adds a divider */
      }
      
      /* Ensure the plot remains visible */
      .sticky-plot {
        position: sticky;
        top: 10px;
        background: white;
        z-index: 100;
        padding: 10px;
      }
    "))
  ),
  
  sidebarLayout(
    sidebarPanel(
      div(class = "sidebar-scroll",  # Scrollable container for inputs
        sliderInput("y_value1", "y1:", min = 0, max = 1, step = 0.01, value = 1),
        sliderInput("x_value1", "x1:", min = 0, max = 1, step = 0.01, value = 1),
        sliderInput("z_value1", "z1:", min = 0, max = 1, step = 0.01, value = 1),
        checkboxInput("asymmetric_mode1", "asymmetric1", value = FALSE),
        conditionalPanel(
          condition = "input.asymmetric_mode1 == true",
          sliderInput("alpha_value1", "alpha_1", min = 0, max = 1, value = 1, step = 0.01),
          #sliderInput("d_z_value1", "d_z1", min = 0, max = 1, value = 1, step = 0.01),
        ),
        numericInput("perc_1", "Percentage of clone 1:", value = 100, min = 0, max = 100, step = 0.01),
        textOutput("mark_1"),
        br(),
        checkboxInput("activate_set2", "Activate Set 2", value = FALSE),
        conditionalPanel(
          condition = "input.activate_set2",
          sliderInput("y_value2", "y2:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("x_value2", "x2:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("z_value2", "z2:", min = 0, max = 1, step = 0.01, value = 1),
          checkboxInput("asymmetric_mode2", "asymmetric2", value = FALSE),
          conditionalPanel(
            condition = "input.asymmetric_mode2 == true",
            sliderInput("alpha_value2", "alpha_2", min = 0, max = 1, value = 1, step = 0.01),
            #sliderInput("d_z_value2", "d_z2", min = 0, max = 1, value = 1, step = 0.01)
          ),
          numericInput("perc_2", "Percentage of clone 2:", value = NA, min = 0, max = 100, step = 0.01),
          textOutput("mark_2")),
        br(),
        checkboxInput("activate_set3", "Activate Set 3", value = FALSE),
        conditionalPanel(
          condition = "input.activate_set3",
          sliderInput("y_value3", "y3:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("x_value3", "x3:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("z_value3", "z3:", min = 0, max = 1, step = 0.01, value = 1),
          checkboxInput("asymmetric_mode3", "asymmetric3", value = FALSE),
          conditionalPanel(
            condition = "input.asymmetric_mode3 == true",
            sliderInput("alpha_value3", "alpha_3", min = 0, max = 1, value = 1, step = 0.01),
            #sliderInput("d_z_value3", "d_z3", min = 0, max = 1, value = 1, step = 0.01)
          ),
          numericInput("perc_3", "Percentage of clone 3:", value = NA, min = 0, max = 100, step = 0.01),
          textOutput("mark_3")),
        br(),
        checkboxInput("activate_set4", "Activate Set 4", value = FALSE),
        conditionalPanel(
          condition = "input.activate_set4",
          sliderInput("y_value4", "y4:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("x_value4", "x4:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("z_value4", "z4:", min = 0, max = 1, step = 0.01, value = 1),
          checkboxInput("asymmetric_mode4", "asymmetric4", value = FALSE),
          conditionalPanel(
            condition = "input.asymmetric_mode4 == true",
            sliderInput("alpha_value4", "alpha_4", min = 0, max = 1, value = 1, step = 0.01),
            #sliderInput("d_z_value4", "d_z4", min = 0, max = 1, value = 1, step = 0.01)
          ),
          numericInput("perc_4", "Percentage of clone 4:", value = NA, min = 0, max = 100, step = 0.01),
          textOutput("mark_4")),
        br(),
        checkboxInput("activate_set5", "Activate Set 5", value = FALSE),
        conditionalPanel(
          condition = "input.activate_set5",
          sliderInput("y_value5", "y5:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("x_value5", "x5:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("z_value5", "z5:", min = 0, max = 1, step = 0.01, value = 1),
          checkboxInput("asymmetric_mode5", "asymmetric5", value = FALSE),
          conditionalPanel(
            condition = "input.asymmetric_mode5 == true",
            sliderInput("alpha_value5", "alpha_5", min = 0, max = 1, value = 1, step = 0.01),
            #sliderInput("d_z_value5", "d_z5", min = 0, max = 1, value = 1, step = 0.01)
          ),
          numericInput("perc_5", "Percentage of clone 5:", value = NA, min = 0, max = 100, step = 0.01),
          textOutput("mark_5")),
        br(),
        checkboxInput("activate_set6", "Activate Set 6", value = FALSE),
        conditionalPanel(
          condition = "input.activate_set6",
          sliderInput("y_value6", "y6:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("x_value6", "x6:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("z_value6", "z6:", min = 0, max = 1, step = 0.01, value = 1),
          checkboxInput("asymmetric_mode6", "asymmetric6", value = FALSE),
          conditionalPanel(
            condition = "input.asymmetric_mode6 == true",
            sliderInput("alpha_value6", "alpha_6", min = 0, max = 1, value = 1, step = 0.01),
            #sliderInput("d_z_value6", "d_z6", min = 0, max = 1, value = 1, step = 0.01)
          ),
          numericInput("perc_6", "Percentage of clone 6:", value = NA, min = 0, max = 100, step = 0.01),
          textOutput("mark_6")),
        br(),
        checkboxInput("activate_set7", "Activate Set 7", value = FALSE),
        conditionalPanel(
          condition = "input.activate_set7",
          sliderInput("y_value7", "y7:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("x_value7", "x7:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("z_value7", "z7:", min = 0, max = 1, step = 0.01, value = 1),
          checkboxInput("asymmetric_mode7", "asymmetric7", value = FALSE),
          conditionalPanel(
            condition = "input.asymmetric_mode7 == true",
            sliderInput("alpha_value7", "alpha_7", min = 0, max = 1, value = 1, step = 0.01),
            #sliderInput("d_z_value7", "d_z7", min = 0, max = 1, value = 1, step = 0.01)
          ),
          numericInput("perc_7", "Percentage of clone 7:", value = NA, min = 0, max = 100, step = 0.01),
          textOutput("mark_7")),
        br(),
        checkboxInput("activate_set8", "Activate Set 8", value = FALSE),
        conditionalPanel(
          condition = "input.activate_set8",
          sliderInput("y_value8", "y8:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("x_value8", "x8:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("z_value8", "z8:", min = 0, max = 1, step = 0.01, value = 1),
          checkboxInput("asymmetric_mode8", "asymmetric8", value = FALSE),
          conditionalPanel(
            condition = "input.asymmetric_mode8 == true",
            sliderInput("alpha_value8", "alpha_8", min = 0, max = 1, value = 1, step = 0.01),
            #sliderInput("d_z_value8", "d_z8", min = 0, max = 1, value = 1, step = 0.01)
          ),
          numericInput("perc_8", "Percentage of clone 8:", value = NA, min = 0, max = 100, step = 0.01),
          textOutput("mark_8")),
        br(),
        checkboxInput("activate_set9", "Activate Set 9", value = FALSE),
        conditionalPanel(
          condition = "input.activate_set9",
          sliderInput("y_value9", "y9:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("x_value9", "x9:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("z_value9", "z9:", min = 0, max = 1, step = 0.01, value = 1),
          checkboxInput("asymmetric_mode9", "asymmetric9", value = FALSE),
          conditionalPanel(
            condition = "input.asymmetric_mode9 == true",
            sliderInput("alpha_value9", "alpha_9", min = 0, max = 1, value = 1, step = 0.01),
            #sliderInput("d_z_value9", "d_z9", min = 0, max = 1, value = 1, step = 0.01)
          ),
          numericInput("perc_9", "Percentage of clone 9:", value = NA, min = 0, max = 100, step = 0.01),
          textOutput("mark_9")),
        br(),
        checkboxInput("activate_set10", "Activate Set 10", value = FALSE),
        conditionalPanel(
          condition = "input.activate_set10",
          sliderInput("y_value10", "y10:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("x_value10", "x10:", min = 0, max = 1, step = 0.01, value = 1),
          sliderInput("z_value10", "z10:", min = 0, max = 1, step = 0.01, value = 1),
          checkboxInput("asymmetric_mode10", "asymmetric10", value = FALSE),
          conditionalPanel(
            condition = "input.asymmetric_mode10 == true",
            sliderInput("alpha_value10", "alpha_10", min = 0, max = 1, value = 1, step = 0.01),
            #sliderInput("d_z_value10", "d_z10", min = 0, max = 1, value = 1, step = 0.01)
          ),
          numericInput("perc_10", "Percentage of clone 10:", value = NA, min = 0, max = 100, step = 0.01),
          textOutput("mark_10")),
        br(),
        checkboxInput("plot_black_line", "Plot Black Dashed Line", value = TRUE),
        br(),
        numericInput("xlim_min", "X-axis min:", value = 0, min = -Inf, max = Inf, step = 0.01),
        numericInput("xlim_max", "X-axis max:", value = 1, min = -Inf, max = Inf, step = 0.01),
        numericInput("ylim_min", "Y-axis min:", value = 0, min = -Inf, max = Inf, step = 0.01),
        numericInput("ylim_max", "Y-axis max:", value = 1, min = -Inf, max = Inf, step = 0.01),
        br(),
        numericInput("vline1", "Vertical line 1:", value = NA, min = -Inf, max = Inf, step = 0.01),
        selectInput("vline1_color", "Color:", choices = colors()),
        selectInput("vline1_type", "Line type:", choices = c("solid", "dashed", "dotted", "dotdash", "longdash", "twodash")),
        br(),
        actionButton("add_vline", "Add another vertical line"),
        br(),
        numericInput("hline1", "Horizontal line 1:", value = NA, min = -Inf, max = Inf, step = 0.01),
        selectInput("hline1_color", "Color:", choices = colors()),
        selectInput("hline1_type", "Line type:", choices = c("solid", "dashed", "dotted", "dotdash", "longdash", "twodash")),
        br(),
        actionButton("add_hline", "Add another horizontal line"),
        br(),
        numericInput("x_axis_font_size", "X-axis font size:", value = 12, min = 5, max = 30),
        numericInput("y_axis_font_size", "Y-axis font size:", value = 12, min = 5, max = 30),
        numericInput("xlab_font_size", "X-axis label font size:", value = 14, min = 5, max = 30),
        numericInput("ylab_font_size", "Y-axis label font size:", value = 14, min = 5, max = 30),
        numericInput("legend_font_size", "Legend font size:", value = 12, min = 5, max = 30),
        br(),
        selectInput("file_format", "File format:", choices = c("png", "pdf", "jpeg", "tiff", "svg")),
        numericInput("plot_width_cm", "Width (cm):", value = 25.4, min = 2.54, step = 0.5),  # Default 10 inches = 25.4 cm
        numericInput("plot_height_cm", "Height (cm):", value = 20.32, min = 2.54, step = 0.5), # Default 8 inches = 20.32 cm
        selectInput("plot_unit", "Unit:", choices = c("cm", "in")),
        numericInput("plot_res", "Resolution (dpi):", value = 300, min = 72, step = 1),
        downloadButton("downloadPlot", "Download Plot"),
        textOutput("error_message")
      )
    ),
    mainPanel(
      div(class = "output-panel",  # Sticky output (plot stays visible)
          plotOutput("dynamic_plot") #, height = "600px"
      )
    )
  )
)


server <- function(input, output, session) {  # Add `session` here
  #
  #
  #
  user_set_percentages <- reactiveValues(
    perc_1 = FALSE,
    perc_2 = FALSE,
    perc_3 = FALSE,
    perc_4 = FALSE,
    perc_5 = FALSE,
    perc_6 = FALSE,
    perc_7 = FALSE,
    perc_8 = FALSE,
    perc_9 = FALSE,
    perc_10 = FALSE,
  )
  
  # Observe changes in percentage inputs
  observeEvent(input$perc_1, {
    user_set_percentages$perc_1 <- !is.na(input$perc_1)
  })
  observeEvent(input$perc_2, {
    user_set_percentages$perc_2 <- !is.na(input$perc_2)
  })
  observeEvent(input$perc_3, {
    user_set_percentages$perc_3 <- !is.na(input$perc_3)
  })
  observeEvent(input$perc_4, {
    user_set_percentages$perc_4 <- !is.na(input$perc_4)
  })
  observeEvent(input$perc_5, {
    user_set_percentages$perc_5 <- !is.na(input$perc_5)
  })
  observeEvent(input$perc_6, {
    user_set_percentages$perc_6 <- !is.na(input$perc_6)
  })
  observeEvent(input$perc_7, {
    user_set_percentages$perc_7 <- !is.na(input$perc_7)
  })
  observeEvent(input$perc_8, {
    user_set_percentages$perc_8 <- !is.na(input$perc_8)
  })
  observeEvent(input$perc_9, {
    user_set_percentages$perc_9 <- !is.na(input$perc_9)
  })
  observeEvent(input$perc_10, {
    user_set_percentages$perc_10 <- !is.na(input$perc_10)
  })
  
  # Calculate percentages dynamically
  percentages <- reactive({
    # Count the number of activated clones
    num_clones <- 1 + input$activate_set2 + input$activate_set3 + input$activate_set4 +
      input$activate_set5 + input$activate_set6 + input$activate_set7 +
      input$activate_set8 + input$activate_set9 + input$activate_set10
    
    # Get user-set percentages
    user_perc <- c(
      ifelse(user_set_percentages$perc_1, input$perc_1, NA),
      ifelse(user_set_percentages$perc_2, input$perc_2, NA),
      ifelse(user_set_percentages$perc_3, input$perc_3, NA),
      ifelse(user_set_percentages$perc_4, input$perc_4, NA),
      ifelse(user_set_percentages$perc_5, input$perc_5, NA),
      ifelse(user_set_percentages$perc_6, input$perc_6, NA),
      ifelse(user_set_percentages$perc_7, input$perc_7, NA),
      ifelse(user_set_percentages$perc_8, input$perc_8, NA),
      ifelse(user_set_percentages$perc_9, input$perc_9, NA),
      ifelse(user_set_percentages$perc_10, input$perc_10, NA)
    )
    
    # Calculate remaining percentage to distribute
    remaining_perc <- 100 - sum(user_perc, na.rm = TRUE)
    
    # Count the number of clones without user-set percentages
    num_unset_clones <- num_clones - sum(!is.na(user_perc))
    
    # Calculate default percentages for unset clones
    default_perc <- ifelse(num_unset_clones > 0, remaining_perc / num_unset_clones, 0)
    
    # Combine user-set and default percentages
    perc <- c(
      ifelse(user_set_percentages$perc_1, input$perc_1, default_perc),
      ifelse(user_set_percentages$perc_2, input$perc_2, default_perc),
      ifelse(user_set_percentages$perc_3, input$perc_3, default_perc),
      ifelse(user_set_percentages$perc_4, input$perc_4, default_perc),
      ifelse(user_set_percentages$perc_5, input$perc_5, default_perc),
      ifelse(user_set_percentages$perc_6, input$perc_6, default_perc),
      ifelse(user_set_percentages$perc_7, input$perc_7, default_perc),
      ifelse(user_set_percentages$perc_8, input$perc_8, default_perc),
      ifelse(user_set_percentages$perc_9, input$perc_9, default_perc),
      ifelse(user_set_percentages$perc_10, input$perc_10, default_perc)
    )
    
    perc
  })
  
  # Update percentage inputs with calculated values
  observe({
    updateNumericInput(session, "perc_1", value = percentages()[1])
    updateNumericInput(session, "perc_2", value = percentages()[2])
    updateNumericInput(session, "perc_3", value = percentages()[3])
    updateNumericInput(session, "perc_4", value = percentages()[4])
    updateNumericInput(session, "perc_5", value = percentages()[5])
    updateNumericInput(session, "perc_6", value = percentages()[6])
    updateNumericInput(session, "perc_7", value = percentages()[7])
    updateNumericInput(session, "perc_8", value = percentages()[8])
    updateNumericInput(session, "perc_9", value = percentages()[9])
    updateNumericInput(session, "perc_10", value = percentages()[10])
  })
  
  # Display marks for user-set percentages
  output$mark_1 <- renderText({
    if (user_set_percentages$perc_1) "Percentage set by user" else ""
  })
  output$mark_2 <- renderText({
    if (user_set_percentages$perc_2) "Percentage set by user" else ""
  })
  output$mark_3 <- renderText({
    if (user_set_percentages$perc_3) "Percentage set by user" else ""
  })
  output$mark_4 <- renderText({
    if (user_set_percentages$perc_4) "Percentage set by user" else ""
  })
  output$mark_5 <- renderText({
    if (user_set_percentages$perc_5) "Percentage set by user" else ""
  })
  output$mark_6 <- renderText({
    if (user_set_percentages$perc_6) "Percentage set by user" else ""
  })
  output$mark_7 <- renderText({
    if (user_set_percentages$perc_7) "Percentage set by user" else ""
  })
  output$mark_8 <- renderText({
    if (user_set_percentages$perc_8) "Percentage set by user" else ""
  })
  output$mark_9 <- renderText({
    if (user_set_percentages$perc_9) "Percentage set by user" else ""
  })
  output$mark_10 <- renderText({
    if (user_set_percentages$perc_10) "Percentage set by user" else ""
  })
  
  # Display error message if sum of percentages exceeds 100
  output$error_message <- renderText({
    total_perc <- sum(percentages(), na.rm = TRUE)
    if (total_perc != 100) {
      paste("Error: The sum of percentages is ",total_perc, " instead of 100!", sep="")
    } else {
      ""
    }
  })
  #
  #
  #
  vlines <- reactiveValues(count = 1)
  hlines <- reactiveValues(count = 1)
  
  observeEvent(input$add_vline, {
    vlines$count <- vlines$count + 1
    insertUI(
      selector = "#add_vline",
      where = "beforeBegin",
      ui = tagList(
        numericInput(paste0("vline", vlines$count), paste0("Vertical line ", vlines$count, ":"), value = NA, min = -Inf, max = Inf, step = 0.01),
        selectInput(paste0("vline", vlines$count, "_color"), "Color:", choices = colors()),
        selectInput(paste0("vline", vlines$count, "_type"), "Line type:", choices = c("solid", "dashed", "dotted", "dotdash", "longdash", "twodash"))
      )
    )
  })
  
  observeEvent(input$add_hline, {
    hlines$count <- hlines$count + 1
    insertUI(
      selector = "#add_hline",
      where = "beforeBegin",
      ui = tagList(
        numericInput(paste0("hline", hlines$count), paste0("Horizontal line ", hlines$count, ":"), value = NA, min = -Inf, max = Inf, step = 0.01),
        selectInput(paste0("hline", hlines$count, "_color"), "Color:", choices = colors()),
        selectInput(paste0("hline", hlines$count, "_type"), "Line type:", choices = c("solid", "dashed", "dotted", "dotdash", "longdash", "twodash"))
      )
    )
  })
  
  output$dynamic_plot <- renderPlot({
    y1 <- input$y_value1
    x1 <- input$x_value1
    z1 <- input$z_value1
    alpha_1 <- input$alpha_value1
    #d_z1 <- input$d_z_value1
    y2 <- input$y_value2
    x2 <- input$x_value2
    z2 <- input$z_value2
    alpha_2 <- input$alpha_value2
    #d_z2 <- input$d_z_value2
    y3 <- input$y_value3
    x3 <- input$x_value3
    z3 <- input$z_value3
    alpha_3 <- input$alpha_value3
    #d_z3 <- input$d_z_value3
    y4 <- input$y_value4
    x4 <- input$x_value4
    z4 <- input$z_value4
    alpha_4 <- input$alpha_value4
    #d_z4 <- input$d_z_value4
    y5 <- input$y_value5
    x5 <- input$x_value5
    z5 <- input$z_value5
    alpha_5 <- input$alpha_value5
    #d_z5 <- input$d_z_value5
    y6 <- input$y_value6
    x6 <- input$x_value6
    z6 <- input$z_value6
    alpha_6 <- input$alpha_value6
    #d_z6 <- input$d_z_value6
    y7 <- input$y_value7
    x7 <- input$x_value7
    z7 <- input$z_value7
    alpha_7 <- input$alpha_value7
    #d_z7 <- input$d_z_value7
    y8 <- input$y_value8
    x8 <- input$x_value8
    z8 <- input$z_value8
    alpha_8 <- input$alpha_value8
    #d_z8 <- input$d_z_value8
    y9 <- input$y_value9
    x9 <- input$x_value9
    z9 <- input$z_value9
    alpha_9 <- input$alpha_value9
    #d_z9 <- input$d_z_value9
    y10 <- input$y_value10
    x10 <- input$x_value10
    z10 <- input$z_value10
    alpha_10 <- input$alpha_value10
    #d_z10 <- input$d_z_value10

    activate_set1 <- input$activate_set1
    activate_set2 <- input$activate_set2
    activate_set3 <- input$activate_set3
    activate_set4 <- input$activate_set4
    activate_set5 <- input$activate_set5
    activate_set6 <- input$activate_set6
    activate_set7 <- input$activate_set7
    activate_set8 <- input$activate_set8
    activate_set9 <- input$activate_set9
    activate_set10 <- input$activate_set10
    
    d <- seq(0, 1, 0.05)
    
    if ( input$asymmetric_mode1 ) {
      y_red1 <- (1 - d*alpha_1) * y1
    } else {
      y_red1 <- (1 - d) * y1
    }
    z_red1 <- (1 - d) * z1
    x_imp1 <- (1 - z_red1) * x1
    e1 <- 1 - (1 - x_imp1) * (1 - y_red1)
    e_overall_drug <- e1*(input$perc_1/100)
    df <- data.frame(d = d, e = e1, group = "AML_01")
    x_imp1 <- (1 - z_red1) * x1
    
    if (activate_set2) {
      if (input$asymmetric_mode2) {
        y_red2 <- (1 - d * input$alpha_value2) * y2
        #z_red2 <- (1 - d * input$d_z_value2) * z2
      } else {
        y_red2 <- (1 - d) * y2
        
      }
      z_red2 <- (1 - d) * z2
      x_imp2 <- (1 - z_red2) * x2
      e2 <- 1 - (1 - x_imp2) * (1 - y_red2)
      e_overall_drug <- e_overall_drug + e2 * (input$perc_2 / 100)
      df <- rbind(df, data.frame(d = d, e = e2, group = "AML_02"))
    } else {
      e2 <- rep(1, length(d))
    }
    
    if (activate_set3) {
      if (input$asymmetric_mode3) {
        y_red3 <- (1 - d * input$alpha_value3) * y3
        #z_red3 <- (1 - d * input$d_z_value3) * z3
      } else {
        y_red3 <- (1 - d) * y3
        
      }
      z_red3 <- (1 - d) * z3
      x_imp3 <- (1 - z_red3) * x3
      e3 <- 1 - (1 - x_imp3) * (1 - y_red3)
      e_overall_drug <- e_overall_drug + e3 * (input$perc_3 / 100)
      df <- rbind(df, data.frame(d = d, e = e3, group = "AML_03"))
    } else {
      e3 <- rep(1, length(d))
    }
    
    if (activate_set4) {
      if (input$asymmetric_mode4) {
        y_red4 <- (1 - d * input$alpha_value4) * y4
        #z_red4 <- (1 - d * input$d_z_value4) * z4
      } else {
        y_red4 <- (1 - d) * y4
        
      }
      z_red4 <- (1 - d) * z4
      x_imp4 <- (1 - z_red4) * x4
      e4 <- 1 - (1 - x_imp4) * (1 - y_red4)
      e_overall_drug <- e_overall_drug + e4 * (input$perc_4 / 100)
      df <- rbind(df, data.frame(d = d, e = e4, group = "AML_04"))
    } else {
      e4 <- rep(1, length(d))
    }
    
    if (activate_set5) {
      if (input$asymmetric_mode5) {
        y_red5 <- (1 - d * input$alpha_value5) * y5
        #z_red5 <- (1 - d * input$d_z_value5) * z5
      } else {
        y_red5 <- (1 - d) * y5
        
      }
      z_red5 <- (1 - d) * z5
      x_imp5 <- (1 - z_red5) * x5
      e5 <- 1 - (1 - x_imp5) * (1 - y_red5)
      e_overall_drug <- e_overall_drug + e5 * (input$perc_5 / 100)
      df <- rbind(df, data.frame(d = d, e = e5, group = "AML_05"))
    } else {
      e5 <- rep(1, length(d))
    }
    
    if (activate_set6) {
      if (input$asymmetric_mode6) {
        y_red6 <- (1 - d * input$alpha_value6) * y6
        #z_red6 <- (1 - d * input$d_z_value6) * z6
      } else {
        y_red6 <- (1 - d) * y6
        
      }
      z_red6 <- (1 - d) * z6
      x_imp6 <- (1 - z_red6) * x6
      e6 <- 1 - (1 - x_imp6) * (1 - y_red6)
      e_overall_drug <- e_overall_drug + e6 * (input$perc_6 / 100)
      df <- rbind(df, data.frame(d = d, e = e6, group = "AML_06"))
    } else {
      e6 <- rep(1, length(d))
    }
    
    if (activate_set7) {
      if (input$asymmetric_mode7) {
        y_red7 <- (1 - d * input$alpha_value7) * y7
        #z_red7 <- (1 - d * input$d_z_value7) * z7
      } else {
        y_red7 <- (1 - d) * y7
        
      }
      z_red7 <- (1 - d) * z7
      x_imp7 <- (1 - z_red7) * x7
      e7 <- 1 - (1 - x_imp7) * (1 - y_red7)
      e_overall_drug <- e_overall_drug + e7 * (input$perc_7 / 100)
      df <- rbind(df, data.frame(d = d, e = e7, group = "AML_07"))
    } else {
      e7 <- rep(1, length(d))
    }
    
    if (activate_set8) {
      if (input$asymmetric_mode8) {
        y_red8 <- (1 - d * input$alpha_value8) * y8
        #z_red8 <- (1 - d * input$d_z_value8) * z8
      } else {
        y_red8 <- (1 - d) * y8
        
      }
      z_red8 <- (1 - d) * z8
      x_imp8 <- (1 - z_red8) * x8
      e8 <- 1 - (1 - x_imp8) * (1 - y_red8)
      e_overall_drug <- e_overall_drug + e8 * (input$perc_8 / 100)
      df <- rbind(df, data.frame(d = d, e = e8, group = "AML_08"))
    } else {
      e8 <- rep(1, length(d))
    }
    
    if (activate_set9) {
      if (input$asymmetric_mode9) {
        y_red9 <- (1 - d * input$alpha_value9) * y9
        #z_red9 <- (1 - d * input$d_z_value9) * z9
      } else {
        y_red9 <- (1 - d) * y9
      }
      z_red9 <- (1 - d) * z9
      x_imp9 <- (1 - z_red9) * x9
      e9 <- 1 - (1 - x_imp9) * (1 - y_red9)
      e_overall_drug <- e_overall_drug + e9 * (input$perc_9 / 100)
      df <- rbind(df, data.frame(d = d, e = e9, group = "AML_09"))
    } else {
      e9 <- rep(1, length(d))
    }
    
    if (activate_set10) {
      if (input$asymmetric_mode10) {
        y_red10 <- (1 - d * input$alpha_value10) * y10
        #z_red10 <- (1 - d * input$d_z_value10) * z10
      } else {
        y_red10 <- (1 - d) * y10
      }
      z_red10 <- (1 - d) * z10
      x_imp10 <- (1 - z_red10) * x10
      e10 <- 1 - (1 - x_imp10) * (1 - y_red10)
      e_overall_drug <- e_overall_drug + e10 * (input$perc_10 / 100)
      df <- rbind(df, data.frame(d = d, e = e10, group = "AML_10"))
    } else {
      e10 <- rep(1, length(d))
    }
    
    
    e_overall_d <- e_overall_drug
    
    # df <- data.frame(d = rep(d, 10),
    #                  e = c(e1, e2, e3, e4, e5, e6, e7, e8, e9, e10),
    #                  group = rep(c("CLN_01", "CLN_02", "CLN_03", "CLN_04", "CLN_05", "CLN_06", "CLN_07", "CLN_08", "CLN_09", "CLN_10"),
    #                              each = length(d)))
    
    df2 <- data.frame(d = d, e = e_overall_d)
    
    ylim_min <- min(c(df$e, df2$e))*0.9
    ylim_max <- max(c(df$e, df2$e))*1.1
    
    # ggplot(df, aes(x = d, y = e, color = group)) +
    #   geom_line() +
    #   geom_line(data = df2, aes(x = d, y = e), color = "black", linetype = "dashed", size = 1.5) +
    #   labs(x = "d", y = "e_total", color = "CLN type") +
    #   ylim(ylim_min, ylim_max) +
    #   #geom_hline(yintercept = 1, color = "white", size=1.1) +
    #   theme_classic()
    
    p <- ggplot(df, aes(x = d, y = e, color = group)) +
      geom_line() +
      #geom_line(data = df2, aes(x = d, y = e), color = "black", linetype = "dashed", size = 1.5) +
      labs(
        x = "Drug effect (d)",
        y = "Total effect per AML (e)",
        color = "AML type"
      ) +
      theme_classic() +
      theme(
        axis.text.x = element_text(size = input$x_axis_font_size),
        axis.text.y = element_text(size = input$y_axis_font_size),
        axis.title.x = element_text(size = input$xlab_font_size),
        axis.title.y = element_text(size = input$ylab_font_size),
        legend.text = element_text(size = input$legend_font_size),
        legend.title = element_text(size = input$legend_font_size)
      )
    
    for (i in 1:vlines$count) {
      if (!is.na(input[[paste0("vline", i)]])) {
        p <- p + geom_vline(xintercept = input[[paste0("vline", i)]], 
                            linetype = input[[paste0("vline", i, "_type")]], 
                            color = input[[paste0("vline", i, "_color")]])
      }
    }
    
    for (i in 1:hlines$count) {
      if (!is.na(input[[paste0("hline", i)]])) {
        p <- p + geom_hline(yintercept = input[[paste0("hline", i)]], 
                            linetype = input[[paste0("hline", i, "_type")]], 
                            color = input[[paste0("hline", i, "_color")]])
      }
    }
    
    if (input$plot_black_line) {
      p <- p + geom_line(data = df2, aes(x = d, y = e), color = "black", linetype = "dashed", size = 1.5)
    }
    
    print(p)
  })
  
  output$downloadPlot <- downloadHandler(
    filename = function() { paste0("plot.", input$file_format) },
    content = function(file) {
      ggsave(file, plot = last_plot(),
             device = input$file_format,
             width = input$plot_width_cm,
             height = input$plot_height_cm,
             units = input$plot_unit,
             dpi = input$plot_res)
    }
  )
  # output$downloadPlot <- downloadHandler(
  #   filename = function() {
  #     paste0("plot.", input$file_format)
  #   },
  #   content = function(file) {
  #     width <- input$plot_width
  #     height <- input$plot_height
  #     res <- input$plot_res
  #     format <- input$file_format
  #     
  #     ggsave(file, plot = p, device = format, width = width, height = height, dpi = res)
  #   }
  # )
  
}

shinyApp(ui = ui, server = server)
