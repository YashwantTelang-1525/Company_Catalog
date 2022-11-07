<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="spring" uri="http://java.sun.com/jstl/core_rt" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>Company List</title>
            <link rel="stylesheet" href="bootstrap.min.css">
            <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
        </head>
        <style>
            body {
                background-color: black;
            }
            
            tr:hover {
                background-color: cadetblue;
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

        <body>

            <div class="container">

                <section class="text-gray-600 body-font">
                    <div class="flex flex-col text-center w-full mb-15">
                        <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">feedback list</h1>
                    </div>
                    <div class="container px-3 py-18 mx-auto flex flex-col">
                        <div class="lg:w-4/6 mx-auto">
                            <div class="rounded-lg h-64 overflow-hidden">
                                <img alt="content" class="object-cover object-center h-full w-full" src="https://source.unsplash.com/1200x500/?quotes">
                            </div>
                            <div class="flex flex-col sm:flex-row mt-10">
                            </div>
                        </div>
                        <table class="table table-bordered table-hover" style="color: white;">
                            <tr>
                                <th>usernm</th>
                                <th>email</th>
                                <th>suggestions</th>

                            </tr>
                            <spring:forEach items="${list}" var="ac">
                                <tr>
                                    <td>${ac.usernm}</td>
                                    <td>${ac.email}</td>
                                    <td>${ac.suggestions}</td>

                                </tr>
                            </spring:forEach>
                        </table>
                    </div>

                </section>
            </div>
        </body>

        </html>