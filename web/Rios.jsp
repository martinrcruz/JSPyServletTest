<%-- 
    Document   : Rios
    Created on : Apr 27, 2021, 12:58:28 PM
    Author     : martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PAGINA 3 RIOS.JSP</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
    </head>
    <body background="images/imagen1.jpg" style="background-size: 100%;" id="body">
        <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-center">
            <a class="navbar-brand p-2" href="index.html" style="font-size: 32px;">Gestor de reservas para Hotel Trivago</a>

        </nav>
        <nav class="nav nav-pills justify-content-center bg-light">
            <a class="nav-item nav-link active" href="index.html">INICIO</a>
            <a class="nav-item nav-link disabled" href="index.html"  tabindex="-1" aria-disabled="true">REGISTRO</a>
            <a class="nav-item nav-link" href="index.html">CONTACTO</a>
        </nav>

        <div>
            <h1  style="text-align: center; background-color: rgba(0, 0, 0, 0.52); color:white;">PAGINA DE RECEPCION DE DATOS</h1>
            <h6 style="text-align: center;"> ANALISTA PROGRAMADOR - INACAP.</h6>

        </div>
        <%
            String MRnombre3, MRclave3, MRapellido3;
            MRnombre3 = (String) request.getParameter("MRnombreServ");
            MRclave3 = (String) request.getParameter("MRclave1Serv");
            MRapellido3 = (String) request.getParameter("MRapellidoServ");
        %>

        <div class="container">
            <div class="row">
                <div class="col-3">
                </div>
                <div class="col-6">
                    <form action="Reporte_Martin.jsp" id="signupForm3" class="form-group bg-light p-5" style="border-radius: 12px" method="get">
                        <input type="hidden" id="MRnombre3" name="MRnombre3" value="<%= MRnombre3%>">       
                        <input type="hidden" id="MRclave3" name="MRclave3" value="<%= MRclave3%>">
                        <input type="hidden" id="MRapellido3" name="MRapellido3" value="<%= MRapellido3%>">




                        <label for="MRnombreComprador"> Nombre de comprador: </label><br>
                        <input type="text" name="MRnombreComprador" id="MRnombreComprador" value="" size="58" maxlength="20"  required placeholder="Escriba el nombre del comprador..."/><br><br>
                        <hr>
                        <label for="MRtelefonoComprador"> Telefono </label><br>
                        <input type="tel" name="MRtelefonoComprador" id="MRtelefonoComprador" value="" size="58" maxlength="20"  required placeholder="Escriba el telefono del comprado aqui..."/><br><br>

                        <hr>

                        <fieldset class="form-group">
                            <div class="row">
                                <legend class="col-form-label col-7 pt-4">Tipo de habitacion:</legend>
                                <h3></h3>
                                <div class="col-5 pt-4">
                                    <div class="form-check ">
                                        <input class="form-check-input" type="radio" name="MRtipoHabitacionComprador" id="MRtipoHabitacionComprador" value="MRnormalHabitacion" checked>
                                        <label class="form-check-label" for="MRtipoHabitacionComprador">
                                            Normal
                                        </label>
                                        <small id="emailHelp" class="form-text text-muted pb-2">$30.000/per.</small>

                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="MRtipoHabitacionComprador" id="MRtipoHabitacionComprador" value="MRgoldenHabitacion">
                                        <label class="form-check-label" for="MRtipoHabitacionComprador">
                                            Golden
                                        </label>
                                        <small id="emailHelp" class="form-text text-muted pb-2">$60.000/per.</small>

                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="MRtipoHabitacionComprador" id="MRtipoHabitacionComprador" value="MRplatinoHabitacion">
                                        <label class="form-check-label" for="MRtipoHabitacionComprador">
                                            Platino
                                        </label>
                                        <small id="emailHelp" class="form-text text-muted pb-2">$100.000/per.</small>

                                    </div>
                                </div>
                            </div>
                        </fieldset>



                        <hr>

                        <div class="row ">
                            <div class="col-7">
                                <label for="cantidadPersonasComprador"> Cantidad de personas: </label>
                            </div>
                            <div class="col-5">
                                <input type="number" name="MRcantidadPersonasComprador" id="MRcantidadPersonasComprador" value="" min="1" max="4"  required />
                                <small id="emailHelp" class="form-text text-muted">1 a 4</small>
                                <br><br>
                            </div>
                        </div>
                        <hr>

                        <div class="row">
                            <div class="col-7">
                                <label for="MRcantDiasHospedajeComprador"> Cantidad de dias en hospedaje: </label>
                            </div>
                            <div class="col-5">
                                <input type="number" name="MRcantDiasHospedajeComprador" id="MRcantDiasHospedajeComprador" value="" min="3" max="10"  required />
                                <small id="emailHelp" class="form-text text-muted">3 a 10</small>
                                <br><br>
                            </div>
                        </div>
                        <hr>



                        <fieldset class="form-group">
                            <div class="row">
                                <legend class="col-form-label col-7">Servicio de alimentacion:</legend>
                                <h3></h3>
                                <div class="col-5">
                                    <div class="form-check ">
                                        <input class="form-check-input" type="radio" name="MRservAlimentacionComprador" id="MRservAlimentacionComprador" value="MRsiAlimentacion" checked>
                                        <label class="form-check-label" for="MRservAlimentacionComprador">
                                            Si
                                        </label>
                                        <small id="emailHelp" class="form-text text-muted pb-2">$5.000 adicionales</small>

                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="MRservAlimentacionComprador" id="MRservAlimentacionComprador" value="MRnoAlimentacion">
                                        <label class="form-check-label" for="MRservAlimentacionComprador">
                                            No
                                        </label>
                                        <small id="emailHelp" class="form-text text-muted pb-2">$0.</small>

                                    </div>

                                </div>
                            </div>
                        </fieldset>

                        <hr>

                        <fieldset class="form-group">
                            <div class="row">
                                <legend class="col-form-label col-7">Tipo de cliente:</legend>
                                <h3></h3>
                                <div class="col-5">
                                    <div class="form-check ">
                                        <input class="form-check-input" type="radio" name="MRtipoClienteComprador" id="MRtipoClienteComprador" value="MRvipCliente" checked>
                                        <label class="form-check-label" for="MRtipoClienteComprador">
                                            Si
                                        </label>
                                        <small id="emailHelp" class="form-text text-muted pb-2">VIP 10% DSCTO.</small>

                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="MRtipoClienteComprador" id="MRtipoClienteComprador" value="MRnormalCliente">
                                        <label class="form-check-label" for="MRtipoClienteComprador">
                                            No
                                        </label>
                                        <small id="emailHelp" class="form-text text-muted pb-2">NORMAL 0% DSCTO.</small>

                                    </div>

                                </div>
                            </div>
                        </fieldset>
                        <hr>

                        <br>
                        <br>


                        <input type="submit" value="REGISTRAR" class="btn-success" id="botonCase1"/>
                        <input type="reset" value="LIMPIAR" class="btn-warning" id="botonCase2">
                    </form>
                </div>
                <div class="col-3">
                </div>
            </div>
        </div>



        <div>

        </div>















    </body>
</html>
