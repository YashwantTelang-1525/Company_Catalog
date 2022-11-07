<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>homePage</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <style>
        body {
            background-color: black;
        }
    </style>

    <header class="text-gray-400 bg-gray-900 body-font">
        <div class="container mx-auto flex flex-wrap p-1 flex-col md:flex-row items-center">
            <a class="flex title-font font-medium items-center text-white mb-3 md:mb-0">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" style="margin-left:40px; margin-top:5px;" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-purple-500 rounded-full" viewBox="0 0 24 24">
          <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
        </svg>
                <span class="ml-3 text-xl">Winter CC</span>
            </a>
            <nav class="md:ml-auto flex flex-wrap items-center text-base justify-center" style="margin-right:24px ;">
                <a class="mr-5 hover:text-white" href="addCompany">Add Company</a>
                <a class="mr-5 hover:text-white" href="search">Search</a>
                <a class="mr-5 hover:text-white" href="deletecomp">Delete</a>
                <a class="mr-5 hover:text-white" href="updateComp">Update</a>
                <a class="mr-5 hover:text-white" href="feedbackrepo">Feedback Report</a>
                <a class="mr-5 hover:text-white" href="./">log out</a>

            </nav>

        </div>
    </header>

    <body>
        <div class="container">

            <section class="text-gray-600 body-font">
                <div class="flex flex-col text-center w-full mb-15">
                    <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Comapny Catelog</h1>
                </div>
                <div class="container px-5 py-18 mx-auto flex flex-col">
                    <div class="lg:w-4/6 mx-auto">
                        <div class="rounded-lg h-64 overflow-hidden">
                            <img alt="content" class="object-cover object-center h-full w-full" src="https://source.unsplash.com/1200x500/?company">
                        </div>
                        <div class="flex flex-col sm:flex-row mt-10">
                            <div class="sm:w-1/3 text-center sm:pr-8 sm:py-8">
                                <div class="w-20 h-20 rounded-full inline-flex items-center justify-center bg-gray-200 text-gray-400">
                                    <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10" viewBox="0 0 24 24">
                            <path d="M20 21v-2a4 4 0 00-4-4H8a4 4 0 00-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                          </svg>
                                </div>
                                <div class="flex flex-col items-center text-center justify-center">
                                    <h2 class="font-medium title-font mt-4 text-gray-500 text-lg">Yashwant Telang</h2>
                                    <div class="w-12 h-1 bg-indigo-500 rounded mt-2 mb-4"></div>
                                    <p class="text-base">I am final year IT engineer student pursuing BE from PCCOE campus.</p>
                                </div>
                            </div>
                            <div class="sm:w-2/3 sm:pl-8 sm:py-8 sm:border-l border-gray-200 sm:border-t-0 border-t mt-4 pt-4 sm:mt-0 text-center sm:text-left">
                                <p class="leading-relaxed text-lg mb-4">The Administrative Service embraces all the permanent officials in the State, high and low, that is, a multitude engaged in clerical jobs of a routine nature and those actually concerned with administration, including the
                                    highest departmental adviser to the political chief of a great Department of the government.</p>
                                <a class="text-indigo-500 inline-flex items-center" href="https://en.wikipedia.org/wiki/Company">Learn More(Wiki)
                          <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
                            <path d="M5 12h14M12 5l7 7-7 7"></path>
                          </svg>
                        </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </body>

    <footer class="text-gray-600 body-font">
        <div class="container px-5 py-24 mx-auto flex md:items-center lg:items-start md:flex-row md:flex-nowrap flex-wrap flex-col">
            <div class="w-64 flex-shrink-0 md:mx-0 mx-auto text-center md:text-left md:mt-0 mt-10">
                <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-indigo-500 rounded-full" viewBox="0 0 24 24">
                <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
              </svg>
                    <span class="ml-3 text-xl">Winter Company</span>
                </a>
                <p class="mt-2 text-sm text-gray-500">We value your time to select better choice</p>
            </div>
            <div class="flex-grow flex flex-wrap md:pr-20 -mb-10 md:text-left text-center order-first">
                <div class="lg:w-1/4 md:w-1/2 w-full px-4">
                    <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm mb-3">CATELOGS</h2>
                    <nav class="list-none mb-10">

                    </nav>
                </div>
                <div class="lg:w-1/4 md:w-1/2 w-full px-4">
                    <nav class="list-none mb-10">

                    </nav>
                </div>
                <div class="lg:w-1/4 md:w-1/2 w-full px-4">
                    <nav class="list-none mb-10">

                    </nav>
                </div>
                <div class="lg:w-1/4 md:w-1/2 w-full px-4">
                    <nav class="list-none mb-10">

                    </nav>
                </div>
            </div>
        </div>
        <div class="bg-gray-100">
            <div class="container mx-auto py-4 px-5 flex flex-wrap flex-col sm:flex-row">
                <p class="text-gray-500 text-sm text-center sm:text-left">© 2020 CompanyCatelog —
                    <a href="https://twitter.com/knyttneve" rel="noopener noreferrer" class="text-gray-600 ml-1" target="_blank">@yashwant</a>
                </p>
                <span class="inline-flex sm:ml-auto sm:mt-0 mt-2 justify-center sm:justify-start">
              <a class="text-gray-500">
                <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                </svg>
              </a>
              <a class="ml-3 text-gray-500">
                <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
                </svg>
              </a>
              <a class="ml-3 text-gray-500">
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                  <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
                  <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
                </svg>
              </a>
              <a class="ml-3 text-gray-500">
                <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="0" class="w-5 h-5" viewBox="0 0 24 24">
                  <path stroke="none" d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"></path>
                  <circle cx="4" cy="4" r="2" stroke="none"></circle>
                </svg>
              </a>
            </span>
            </div>
        </div>
    </footer>

    </html>