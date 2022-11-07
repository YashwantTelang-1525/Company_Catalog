<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Registration form</title>
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
                <a class="mr-5 hover:text-white">First Link</a>
                <a class="mr-5 hover:text-white">Second Link</a>
                <a class="mr-5 hover:text-white">Third Link</a>
                <a class="mr-5 hover:text-white">Fourth Link</a>
            </nav>

        </div>
    </header>

    <body>
        <section class="text-gray-600 body-font">
            <div class="container px-3 py-18 mx-auto flex flex-wrap items-center">
                <div class="lg:w-3/5 md:w-1/2 md:pr-16 lg:pr-0 pr-0">
                    <h1 class="title-font font-medium text-3xl text-gray-900" style="color:white">Company Catelogue</h1>
                    <p class="leading-relaxed mt-4" style="color:white">Springboot Application <br> Eclipse jdk 17 <br> Yashwant Telang.</p>
                </div>
                <div class="lg:w-2/6 md:w-1/2 bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0">
                    <h2 class="text-gray-900 text-lg font-medium title-font mb-2">Register</h2>
                    <form action="addacc" method="post">
                        <div class="relative mb-1">
                            <label for="name" class="leading-7 text-sm text-gray-600">Full Name</label>
                            <input type="text" id="name" name="name" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                        </div>
                        <div class="relative mb-1">
                            <label for="email" class="leading-7 text-sm text-gray-600">Email</label>
                            <input type="email" id="email" name="email" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                        </div>
                        <div class="relative mb-1">
                            <label for="password" class="leading-7 text-sm text-gray-600">password</label>
                            <input type="password" id="password" name="password" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                        </div>
                        <br>
                        <input style="margin-left: 120px;" type="submit" value="Submit" class="btn btn-outline-success">

                        <br>
                        <a style="margin-left: 135px;" href="./">sign in</a>
                        <p class="text-xs text-gray-500 mt-3">Literally you probably haven't heard of them jean shorts.</p>
                    </form>
                </div>
            </div>
        </section>

        <footer class="text-gray-400 bg-gray-900 body-font">
            <div class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
                <a class="flex title-font font-medium items-center md:justify-start justify-center text-white">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-purple-500 rounded-full" viewBox="0 0 24 24">
                  <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
                </svg>
                    <span class="ml-3 text-xl">Tailblocks</span>
                </a>
                <p class="text-sm text-gray-400 sm:ml-4 sm:pl-4 sm:border-l-2 sm:border-gray-800 sm:py-2 sm:mt-0 mt-4">© 2020 Tailblocks —
                    <a href="https://twitter.com/knyttneve" class="text-gray-500 ml-1" target="_blank" rel="noopener noreferrer">@knyttneve</a>
                </p>
                <span class="inline-flex sm:ml-auto sm:mt-0 mt-4 justify-center sm:justify-start">
                <a class="text-gray-400">
                  <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                    <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                  </svg>
                </a>
                <a class="ml-3 text-gray-400">
                  <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                    <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
                  </svg>
                </a>
                <a class="ml-3 text-gray-400">
                  <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                    <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
                    <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
                  </svg>
                </a>
                <a class="ml-3 text-gray-400">
                  <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="0" class="w-5 h-5" viewBox="0 0 24 24">
                    <path stroke="none" d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"></path>
                    <circle cx="4" cy="4" r="2" stroke="none"></circle>
                  </svg>
                </a>
              </span>
            </div>
        </footer>


    </body>

    </html>