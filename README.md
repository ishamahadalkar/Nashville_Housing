# Nashville Housing Data Cleaning

<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/ishamahadalkar/Nashville_Housing">
    <img src="logo.jpeg" alt="Logo" >
  </a>
  
<!-- Section Name tag -->
<a name="#about-the-project"></a>
<h3 align="center">Nashville Housing Data Cleaning</h3>

  <p align="center">
    The "Nashville Housing Data Cleanup" project is dedicated to preparing and refining datasets related to housing in Nashville, Tennessee, for comprehensive analysis. Focused on ensuring data accuracy and reliability, this project involves addressing various data quality issues, including missing values, duplicates,  and inconsistencies within the Nashville housing datasets. By employing effective data cleaning techniques and best practices, the project aims to transform raw housing data into a clean, standardized, and trustworthy dataset suitable for detailed analysis. Through meticulous data cleaning processes, the project endeavors to provide insights into Nashville's housing market dynamics, trends, and patterns, supporting informed decision-making for stakeholders in the region.
    <br />
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#data-sources">Data Sources</a>
      <ul>
          <li><a href="#preprocessing">Preprocessing</a></li>
      </ul>
    </li>
    <li><a href="#approach">Approach</a></li>
    <li><a href="#code-structure">Code Structure</a></li>
    <li><a href="#lessons-learned">Lessons Learned</a></li>
    <li><a href="#future-work">Future Work</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- Section Name tag -->
<a name="#built-with"></a>

### Built With

* [![MySQL][MySQL.com]][MySQL-url]
* [![MySQLWorkbench][MySQLWorkbench.com]][MySQLWorkbench-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

<!-- Section Name tag -->
<a name="#getting-started"></a>

### Prerequisites

<!-- Section Name tag -->
<a name="#prerequisites"></a>

You will need to install MySQL Workbench or another similar SQL software to load the data and run the queries. Download and install MySQL Workbench from the official website if you haven't already.

Make sure you have a MySQL database instance set up where you can import the provided SQL data. If you haven't already, install MySQL and create a database for this project.

### Installation

<!-- Section Name tag -->
<a name="#installation"></a>

1. Clone the repo
   ```sh
   git clone https://github.com/ishamahadalkar/Nashville_Housing
   ```
2. Set Up Your Database: Make sure you have a MySQL database instance set up where you can import the provided SQL data. If you haven't already, install MySQL and create a database for this project.
   
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- DATA SOURCES -->
## Data Sources

<!-- Section Name tag -->
<a name="#data-sources"></a>

The data was downloaded from Kaggle: [https://www.kaggle.com/datasets/tmthyjames/nashville-housing-data](https://www.kaggle.com/datasets/tmthyjames/nashville-housing-data)

### Preprocessing

<!-- Section Name tag -->
<a name="#preprocessing"></a>

There will be no preprocessing done for the data since we are going to be doing all the cleaning in SQL.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- APPROACH -->
## Approach

<!-- Section Name tag -->
<a name="#approach"></a>

1. Utilized MySQL Workbench's upload wizard to load all data from the CSV file into a dedicated table in the database, ensuring seamless data transfer and compatibility with MySQL Workbench's interface.
2. Conducted a comprehensive review of the dataset's structure to identify any inconsistencies, errors, or areas requiring improvement.
3. Employed SQL queries to perform various data manipulation tasks aimed at optimizing the dataset for analysis.
4. Implemented modifications to columns, extracted relevant attributes, and eliminated duplicates using straightforward SQL operations to enhance dataset quality and usability.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CODE STRUCTURE -->
## Code Structure

<!-- Section Name tag -->
<a name="#code-structure"></a>

- Cleaning.sql: Contains SQL queries for data exploration and analysis.
- Nashville-Housing-Data.csv: Dataset containing the Nashville Housing Data.


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- Lessons Learned -->
## Lessons Learned

<!-- Section Name tag -->
<a name="#lessons-learned"></a>

1. Figured out ways to convert and standardize date formats across datasets. This helped us keep dates consistent and made it easier to analyze data based on dates.
2. Explored different methods to populate data based on various fields and update tables dynamically. This made it easier to keep our data up-to-date and synchronized with changing requirements.
3. Learned how to alter columns and break them down into individual attributes. We also discovered string manipulation techniques to extract useful information, improving data granularity.
4. Additionally, we found strategies to remove duplicates and unused columns, making our data cleaner and reducing redundancy.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE WORK -->
## Future Work

<!-- Section Name tag -->
<a name="#future-work"></a>

For future work, I will investigate the implementation of automated data population and synchronization mechanisms to streamline the process of updating datasets based on changing requirements or incoming data streams. I will explore automated deduplication algorithms and tools to streamline the process and reduce manual intervention.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->
## License

<!-- Section Name tag -->
<a name="#license"></a>

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

<!-- Section Name tag -->
<a name="#contact"></a>

Your Name - [@LinkedIn]([linked-url]) - mahadalkar.isha@gmail.com

Project Link: [https://github.com/ishamahadalkar/Nashville_Housing](https://github.com/ishamahadalkar/Nashville_Housing)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

<!-- Section Name tag -->
<a name="#acknowledgments"></a>

* [Kaggle Nashville Housing Dataset](https://www.kaggle.com/datasets/tmthyjames/nashville-housing-data)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/ishamahadalkar/Nashville_Housing.svg?style=for-the-badge
[contributors-url]: https://github.com/ishamahadalkar/Nashville_Housing/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ishamahadalkar/Nashville_Housing.svg?style=for-the-badge
[forks-url]: https://github.com/ishamahadalkar/Nashville_Housing/network/members
[stars-shield]: https://img.shields.io/github/stars/ishamahadalkar/Nashville_Housing.svg?style=for-the-badge
[stars-url]: https://github.com/ishamahadalkar/Nashville_Housing/stargazers
[issues-shield]: https://img.shields.io/github/issues/ishamahadalkar/Nashville_Housing.svg?style=for-the-badge
[issues-url]: https://github.com/ishamahadalkar/Nashville_Housing/issues
[license-shield]: https://img.shields.io/github/license/ishamahadalkar/Nashville_Housing.svg?style=for-the-badge
[license-url]: https://github.com/ishamahadalkar/Nashville_Housing/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/isha-mahadalkar
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
[MySQL.com]: https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white
[MySQL-url]: https://www.mysql.com
[MySQLWorkbench.com]: https://img.shields.io/badge/MySQL_Workbench-4479A1?style=for-the-badge&logo=mysql&logoColor=white
[MySQLWorkbench-url]: https://www.mysql.com/products/workbench/
