# SolarCode

## Our team

 **Team** : Dimitrios Makris, Anestis Mitakidis, Athanasios Aggelakopoulos, Sofoklis Strompolas

We are a cohesive team of three electrical engineers and one software developer, each of us bringing a rich tapestry of technical expertise and innovative thinking to the forefront of the SolarCode project. Our combined experience spans across critical domains such as data analysis, software engineering, and environmental solutions, underpinning our unified goal to leverage technology for sustainable development. With a shared vision of harnessing solar energy to illuminate a greener future for Athens, our diverse backgrounds enable us to tackle the multifaceted challenges of renewable energy adoption, from the intricacies of electrical engineering to the complexities of software solutions. Together, we are dedicated to transforming our technical knowledge into actionable insights and innovative solutions that drive environmental change.

### Revolutionizing Urban Energy with Community Solar Power

At SolarCode, we're pioneering a sustainable future by transforming Athens into a solar-powered metropolis. Our groundbreaking app facilitates a unique partnership between residents, businesses, and the city government, fostering a vibrant solar community committed to green energy.

### How It Works

Our innovative platform empowers individuals to either contribute financially or offer rooftop space to install solar panels. This isn't just about going green; it's an investment in a cleaner, sustainable future that pays back. Participants enjoy the dual benefits of contributing to a greener city and receiving returns through net metering, effectively reducing their electricity bills.

#### The Process:

1. **Expression of Interest** : Residents fill out a simple form indicating their interest, be it monetary contribution or offering rooftop space.
2. **Seamless Integration** : Leveraging advanced algorithms, we match contributions with available rooftop spaces, optimizing solar panel installations across the city.
3. **Municipal Partnership** : The city enhances this initiative by providing additional funding and access to public building rooftops, amplifying our impact.

### The Outcome

Our vision goes beyond mere energy production; we aim to create a symbiotic ecosystem where:

* **Green Energy Flourishes** : Increased solar installations contribute to a significant reduction in the city's carbon footprint.
* **Community Engagement** : Residents actively participate in the city's transition to sustainable energy, fostering a sense of community and shared purpose.
* **Economic Incentives** : Participants benefit financially, receiving returns on their investments through reduced energy bills.

### Join Us

By joining SolarCode, you're not just investing in solar energy; you're powering a movement towards a greener, more sustainable Athens. Together, we can turn rooftops into renewable energy powerhouses, making our city a beacon of sustainability.

Embrace the future of urban living. Invest in green energy. Make Athens shine brighter.

## About SolarCode

At SolarCode, we're at the forefront of engineering a greener, more sustainable Athens through smart solar energy solutions. Leveraging cutting-edge technology and data-driven insights, we aim to optimize urban spaces for solar energy, making green living accessible to everyone.

### Our Technology Stack

SolarCode's platform is built on a foundation of robust, scalable technologies designed to deliver a seamless and impactful user experience. Here’s a glimpse into the tools and technologies that power our vision:

* **Flutter** : Our mobile and web applications are developed using Flutter, enabling a responsive, intuitive user interface that ensures a smooth experience for our users across all devices.
* **Python & Flask** : The backbone of our server-side logic, these powerful tools help us manage the application’s functionality and handle requests efficiently.
* **Google Solar API & Google Cloud Platform** : We harness the power of Google's vast resources for solar energy estimation and cloud computing, ensuring our platform runs smoothly and scales effortlessly.
* **Athens GeoNode Portal** : Access to geospatial data through the Athens GeoNode Portal allows us to analyze and select optimal rooftop spaces for solar panel installations, taking into account various environmental and architectural factors.
* **SQL Databases** : Our structured data storage solution supports complex queries and ensures data integrity, providing a solid foundation for our application's data management needs.
* **REST API** : We employ RESTful services to facilitate seamless communication between our application components, ensuring a cohesive and efficient ecosystem.
* **Machine Learning** : Utilizing advanced algorithms, such as Decision Trees and Support Vector Machines (SVM), we classify and predict the most suitable locations for solar panel installations based on a comprehensive dataset from the Athens GeoNode and other sources.
* **Data Analysis & Visualization** : With the aid of tools like Pandas, NumPy, Pyplot, and Seaborn, we perform in-depth data analysis and visualization, enabling us to extract meaningful insights and present them in an understandable format.
* **Normalization & Data Cleaning** : Ensuring data quality and consistency through normalization and cleaning processes, we lay the groundwork for accurate analysis and machine learning outcomes.

### Our Approach

By integrating these technologies, SolarCode not only simplifies the process of contributing to Athens' solar community but also ensures that every decision is backed by data-driven insights. From the initial interest form to the final installation, every step is optimized for efficiency, impact, and user satisfaction.

### Join Our Solar Revolution

With SolarCode, you're not just installing solar panels—you're becoming part of a larger movement towards sustainability and green energy. Together, we can transform Athens, one rooftop at a time.

Embrace a brighter, greener future with SolarCode. Power your home, power your city.

## Front-End Architecture with Flutter

SolarCode's front-end is crafted with Flutter, a versatile and powerful framework for building natively compiled applications from a single codebase. Flutter enables us to deliver a high-performance, visually appealing mobile and web application that stands at the core of our user interaction. Here’s how we leverage Flutter and related technologies:

### Flutter Program Structure

Flutter applications are structured around widgets, the basic building blocks that manage everything from layout and interactivity to styling and animation. Our app employs a hierarchical widget structure, starting with the main app widget that initializes the application and includes routes to various pages within the app.

* **Main.dart** : Serves as the entry point of the application. It sets up the MaterialApp, which in turn provides essential app-wide configurations such as theme, navigation routes, and a home screen.
* **Widgets** : We extensively use both stateful and stateless widgets. Stateless widgets are used for UI elements that remain constant, while stateful widgets manage dynamic content that changes based on user interactions or data updates.
* **Pages** : Our application features multiple pages, including a user-friendly form for citizens to express their interest, and dynamic dashboards for both users and city administrators, showcasing real-time data and insights.

### Integration with Athens GeoNode Geospatial Data

The app harnesses the power of geospatial data from the Athens GeoNode to provide users with interactive maps and data visualizations. This integration allows us to:

* **Map Visualization** : Display interactive maps that highlight potential solar panel installation sites and existing solar energy infrastructures within Athens. Users can explore these maps to understand the impact of their contributions and the overall progress of the solar community.
* **Data-Driven Decisions** : Utilize geospatial data to inform our algorithms for optimal rooftop selection, ensuring that every installation maximizes energy production and environmental benefits.

### Key Features

* **Interactive Forms** : The application includes forms designed for ease of use, allowing citizens to quickly submit their interest in contributing space or funding. These forms are dynamically generated based on geospatial data to ensure relevance and accuracy.
* **User Dashboards** : Through personalized dashboards, users can track their solar energy contributions, view estimated energy savings, and monitor the growth of the solar community in real-time. These dashboards are a testament to the power of combining Flutter’s responsive UI capabilities with complex data handling and visualization.
* **City Administration Interface** : A specialized dashboard for city administrators offers a comprehensive overview of the solar project's reach, efficiency, and upcoming installations. This interface leverages advanced data visualizations to provide actionable insights, facilitating informed decision-making and strategy development.

### Technological Synergy

By combining Flutter's flexibility with advanced geospatial data analysis and visualization, SolarCode delivers a user-centric application that plays a pivotal role in Athens' transition to a sustainable future. Our front-end architecture is designed to be scalable, maintainable, and responsive, ensuring that as our community grows, our platform will continue to meet the evolving needs of all stakeholders.

---

## Back-end Architecture and Algorithm

### Backend Technologies

SolarCode's backend is engineered using a combination of Flask, Python, SQL databases, and APIs, creating a robust and scalable foundation. This setup allows us to handle complex data processing, manage user requests efficiently, and interact seamlessly with the Google Solar API and the Athens GeoNode geospatial dataset. Our backend architecture is designed to support the application's critical functions, including user data processing, algorithmic calculations, and the integration of AI for location classification.

### The Algorithm

Our custom-made algorithm is at the heart of SolarCode, enabling us to classify and prioritize applications for solar panel installations intelligently. Here’s how it works:

#### Input

The algorithm takes multiple inputs, including:

* Monetary applications (with ID, requested funds, and income range)
* Space applications (with ID, space in square meters, location, and income range)
* City funds available for investment
* Public space applications
* The comprehensive Athens GeoNode dataset

#### Calculations

The core of our algorithm involves several critical steps:

1. **Normalization and Weight Assignment** : We first decide on the weights for application data, applying normalization to standardize the inputs for consistent scoring.
2. **Scoring Applications** : Applications are scored based on weighted criteria. For monetary applications, weights are assigned to the amount requested and the applicant's income range. For space applications, weights are considered for the quantity of space, location efficiency (determined by our AI model), and the applicant's income range.
3. **Cost Estimation for Each Space Application** : We estimate how much money each space application can absorb, considering installation costs, the value of the photovoltaic systems, maintenance costs, and rental expenses.
4. **Budget Matching** : The total available investment funds are matched against the total cost for all applications. The algorithm adjusts the selection of applications based on the scores and available budget to either include all space applications or prioritize applications until the budget aligns with the total costs.

#### Output

The algorithm outputs:

1. Approved applications for solarization (monetary and space-based)
2. Utilization of municipal funds
3. Overall statistics (total funds used, total area of photovoltaic panels installed, energy produced, and CO2 emissions reduced)

### AI Integration for Location Classification

A critical aspect of our algorithm is the use of AI to classify user locations based on their suitability for solar panel installations. We train a machine learning model on the Athens GeoNode dataset, enriched with data from Google's Solar API, which includes information on rooftop areas, potential power output, and efficiency. This AI model allows us to assess and score space applications with high precision, ensuring optimal placement of solar panels for maximum energy generation and environmental impact.

## Data Management and Analysis

### Overview

Our data analysis framework is built upon Google Colab, a powerful platform that allows us to perform complex data analysis and visualization tasks efficiently. Utilizing Python libraries such as Pandas for data manipulation, NumPy for numerical computations, and Matplotlib and Seaborn for visualization, we've been able to derive meaningful insights from the datasets provided by Athens GeoNode and the Google Solar API.

### Athens GeoNode Dataset

The Athens GeoNode dataset is a rich source of geospatial information, containing detailed polygons of rooftops across Athens. This dataset is crucial for identifying potential sites for solar PV installations in line with the city’s Climate Action Plan, which aims for a substantial increase in solar PV capacity by 2030. The GeoNode data allows us to assess the feasibility and potential impact of installations across various residential areas, prioritizing efforts that align with both environmental goals and social equity, particularly in supporting low-income households.

### Integration with Google Solar API

To augment the geospatial data from Athens GeoNode, we leverage the Google Solar API, which provides valuable insights based on latitude and longitude coordinates. This API helps us evaluate the solar potential of specific rooftops, offering estimates on possible power output, efficiency, and the overall feasibility of solar PV installations. By combining this information with the geospatial data, we can make informed decisions on where to focus our solarization efforts for maximum impact.

### Analysis and Visualization

Our data analysis process involves several steps, from cleaning and normalizing the data to applying sophisticated machine learning algorithms for pattern recognition and prediction. We have created multiple graphs and tables to visualize our findings, highlighting key statistics and totals that inform our strategy and operations. For instance, we calculate the potential energy production capacity of identified rooftops and estimate the CO2 emissions reduction achievable through our solar PV installations. These visualizations are not only instrumental in our planning and decision-making processes but also serve as compelling evidence of the viability and impact of our initiative to stakeholders and potential investors.

### Decision Support

The data analysis and insights generated play a crucial role in supporting SolarCode's decision-making processes. By understanding the spatial distribution of potential installation sites, along with their energy production and efficiency metrics, we can prioritize installations that offer the greatest benefits in terms of energy generation, cost-effectiveness, and social impact. This data-driven approach ensures that our efforts are aligned with Athens' goals for solar PV deployment, particularly in supporting low-income households and advancing the city's resilience and sustainability objectives.

## Looking Forward: SolarCode's Next Steps

### From Hackathon to Horizon

Born out of the intense, collaborative environment of the Apps4Athens hackathon, SolarCode represents the first step towards a sustainable, solar-powered future for Athens. Over the course of just two days, our team has laid the groundwork for a platform that aims to revolutionize how the city approaches energy consumption and production. Our journey is just beginning, and the road ahead is filled with opportunities for growth, learning, and impact.

### The Vision for SolarCode

At SolarCode, we are driven by the belief that technology can significantly contribute to solving some of the most pressing environmental challenges. Our project, initiated under the crunch of hackathon constraints, has the potential to become a pivotal solution for Athens, aligning with the city’s Climate Action Plan and resilience strategy. Here’s what we envision for the future:

* **Platform Development** : Enhancing the SolarCode app with additional features, improving user experience, and refining our algorithm to ensure optimal matching of solar panel installations with available rooftops.
* **Data Analysis and Expansion** : Continuing to harness and analyze data from Athens GeoNode and the Google Solar API, expanding our dataset to cover more areas and include more detailed environmental impact assessments.
* **Community Engagement** : Building a community of residents, city officials, and environmental activists passionate about contributing to a greener Athens. We plan to launch campaigns to raise awareness and involve more Athenians in our initiative.
* **Collaborations and Funding** : Seeking partnerships and funding opportunities to scale our project. This includes applying for grants, engaging with local businesses, and exploring collaborations with environmental organizations.

### Your Role in Our Journey

SolarCode is more than just a hackathon project; it’s a call to action for everyone who shares our vision for a sustainable future. Whether you're a developer, a city planner, an environmental advocate, or simply someone who believes in the power of community-driven change, we invite you to join us.

* **Contribute** : Whether through code, ideas, or advocacy, your contribution can help propel SolarCode from a promising prototype to a transformative community asset.
* **Spread the Word** : Help us grow our community by sharing our vision with your network. The more people know about SolarCode, the greater our collective impact.
* **Stay Engaged** : Follow our progress, provide feedback, and stay connected as we navigate the challenges and celebrate the milestones ahead.

### Gratitude and Acknowledgments

We extend our sincerest thanks to everyone involved in the Apps4Athens hackathon and Crowdpolicy—organizers, mentors, participants, and supporters. This event not only sparked the inception of SolarCode but also showcased the incredible potential for innovation when diverse minds collaborate towards a common goal.
