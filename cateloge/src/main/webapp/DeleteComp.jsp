<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Delete Company</title>
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
                <a class="mr-5 hover:text-white" href="adminpage">Back</a>
            </nav>

        </div>
    </header>
    <br>

    <body>

        <section class="text-gray-600 body-font overflow-hidden">
            <div class="container px-5 py-25 mx-auto">
                <div class="lg:w-4/5 mx-auto flex flex-wrap">
                    <img alt="ecommerce" class="lg:w-1/2 w-full lg:h-auto h-64 object-cover object-center rounded" src="https://source.unsplash.com/400x400/?delete">
                    <div class="lg:w-1/2 w-full lg:pl-10 lg:py-6 mt-6 lg:mt-0">

                        <div class="container px-5 py-24 mx-auto flex flex-wrap items-center">
                            <div class="mb-3 xl:w-96">
                                <div class="container px-3 py-18 mx-auto flex flex-wrap items-center">
                                    <div class="mb-3 xl:w-96">
                                        <form action="deleteCompany" method="post">
                                            <label for="exampleSearch2" class="form-label inline-block mb-2 text-white-50" style="color: white;">Delete Company by id</label>
                                            <input type="text" class="form-control block w-full px-3 py-1.5 text-base font-normal
                                      text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition
                                      ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none
                                    " id="id" name="id" placeholder="Company id" />
                                            <br>
                                            <input type="submit" value="Delete" class="btn btn-outline-light">
                                        </form>
                                        Delete the company <br>using company id.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </body>

    </html>