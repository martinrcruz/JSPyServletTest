<%-- 
    Document   : Reporte_Martin
    Created on : Apr 27, 2021, 12:59:08 PM
    Author     : martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body background="images/imagen1.jpg" style="background-size: 100%;" id="body">
        <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-center">
            <a class="navbar-brand p-2" href="index.html"style="font-size: 32px;">Gestor de reservas para Hotel Trivago</a>

        </nav>
        <nav class="nav nav-pills justify-content-center bg-light">
            <a class="nav-item nav-link active" href="index.html">INICIO</a>
            <a class="nav-item nav-link disabled" href="index.html"  tabindex="-1" aria-disabled="true">REGISTRO</a>
            <a class="nav-item nav-link" href="index.html">CONTACTO</a>
        </nav>

        <div>
            <h1  style="text-align: center; background-color: rgba(0, 0, 0, 0.52); color:white;">PAGINA DE RECEPCION DE DATOS</h1>
            <h6 style="text-align: center;"> ANALISTA PROGRAMADOR - INACAP.</h6>



            <!-- Validacion -->
            <%
                String MRnombreRep, MRclaveRep, MRapellidoRep, MRnombreComp, MRtelefonoComp, MRtipoHabitacionComp, MRservAlimentacionComp, MRtipoClienteComp;
                int MRvalorDiarioUnidad = 0, MRvalorDiarioTotal = 0, valorServicioAlimentacion = 0, valorTotal = 0, MRcantPersonasComp, MRcantDiasComp;
                float descuentos = 0;

                MRnombreRep = (String) request.getParameter("MRnombre3");
                MRclaveRep = (String) request.getParameter("MRclave3");
                MRapellidoRep = (String) request.getParameter("MRapellido3");
                MRnombreComp = (String) request.getParameter("MRnombreComprador");
                MRtelefonoComp = (String) request.getParameter("MRtelefonoComprador");
                MRtipoHabitacionComp = (String) request.getParameter("MRtipoHabitacionComprador");
                MRcantPersonasComp = Integer.parseInt(request.getParameter("MRcantidadPersonasComprador"));
                MRcantDiasComp = Integer.parseInt(request.getParameter("MRcantDiasHospedajeComprador"));
                MRservAlimentacionComp = (String) request.getParameter("MRservAlimentacionComprador");
                MRtipoClienteComp = (String) request.getParameter("MRtipoClienteComprador");

                //VALIDACION RADIO TIPO DE HABITACION       *DEBIDO A UN ERROR INTERNO DE NETBEANS O GLASSFISH, NO PUEDO USAR EL SELECTOR SWITCH :(
                String tipoHabitacion = "";
                int valorHabitacionDiario;
                if (MRtipoHabitacionComp.equals("MRnormalHabitacion")) {
                    tipoHabitacion = "Habitacion Normal";
                    valorHabitacionDiario = 30000;
                } else if (MRtipoHabitacionComp.equals("MRgoldenHabitacion")) {
                    tipoHabitacion = "Habitacion Golden";
                    valorHabitacionDiario = 60000;
                } else {
                    tipoHabitacion = "Habitacion Platino";
                    valorHabitacionDiario = 100000;
                }

                //VALIDACION RADIO SERVICIO ALIMENTACION
                String servicioAlimentacion = "";
                int valorServAlimPorPersona = 0;
                if (MRservAlimentacionComp.equals("MRsiAlimentacion")) {
                    servicioAlimentacion = "Si";
                    valorServAlimPorPersona = 5000;
                } else if (MRservAlimentacionComp.equals("MRnoAlimentacion")) {
                    servicioAlimentacion = "No";
                    valorServAlimPorPersona = 0;
                }

                // CALCULOS
                //VALOR DIARIO TOTAL
                MRvalorDiarioTotal = valorHabitacionDiario * MRcantPersonasComp;

                //VALOR SERVICIO ALIMENTACION
                valorServicioAlimentacion = valorServAlimPorPersona * MRcantPersonasComp;

                //CALCULO VALOR TOTAL
                valorTotal = (MRvalorDiarioTotal * MRcantDiasComp) + valorServicioAlimentacion;

                //VALIDACION RADIO TIPO CLIENTE
                String tipoCliente = "", descuento = "";
                double descuentoValor;

                if (MRtipoClienteComp.equals("MRvipCliente")) {
                    tipoCliente = "Cliente VIP";
                    descuento = "si";
                    //DESCUENTOS
                    descuentoValor = valorTotal * 0.10;
                } else {
                    tipoCliente = "Cliente Normal";
                    descuento = "no";
                    descuentoValor = 0;
                }

                //VALOR TOTAL CON DESCUENTO
                double valorTotalDescuento = valorTotal - descuentoValor;

            %>



        </div>
        <div class="container-fluid bg-light">
            <div class="row">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="row">USUARIO SISTEMA</th>
                            <th scope="row">Nombre Huesped</th>
                            <th scope="row">Telefono Huesped</th>
                            <th scope="row">Tipo Habitacion</th>
                            <th scope="row">Valor diario</th>
                            <th scope="row">Cantidad ocupantes</th>
                            <th scope="row">Valor diario total</th>
                            <th scope="row">Servicio alim.</th>
                            <th scope="row">Valor serv. alim.</th>
                            <th scope="row">Descuentos</th>
                            <th scope="row">Valor total a pagar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="col"><%= MRnombreRep + " " + MRapellidoRep%></th>
                            <td><%= MRnombreComp%></td>
                            <td><%= MRtelefonoComp%></td>
                            <td><%= tipoHabitacion%></td>
                            <td>$<%= valorHabitacionDiario%></td>
                            <td><%= MRcantPersonasComp%></td>
                            <td>$<%= MRvalorDiarioTotal%></td>
                            <td><%= servicioAlimentacion%></td>
                            <td>$<%= valorServicioAlimentacion%></td>
                            <td>$<%= descuentoValor%></td>
                            <td>$<%= valorTotalDescuento%></td>


                        </tr>
                        <tr>
                            <th scope="col"></th>
                            <td class="bg-light"></td>
                            <td class="bg-light"></td>
                            <td class="bg-light"></td>
                            <td class="bg-light"</td>
                            <td class="bg-light"</td>
                            <td class="bg-light"></td>
                            <td class="bg-light"></td>
                            <td class="bg-light"></td>
                            <td class="bg-light"></td>

                        </tr>

                    </tbody>
                    <thead>
                        <tr>
                            <th scope="row" class="bg-light"></th>
                            <th scope="row" class="bg-light"></th>
                            <th scope="row" class="bg-light"></th>
                            <th scope="row" class="bg-light"></th>
                            <th scope="row" class="bg-light"></th>
                            <th scope="row" class="bg-light"></th>
                            <th scope="row" class="bg-light"></th>
                            <th scope="row">Cantidad de dias</th>
                            <th scope="row">Valor sin descuento</th>
                            <th scope="row" class="bg-light"></th>
                            <th scope="row" class="bg-light"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="col"  class="bg-light"></th>
                            <td  class="bg-light"></td>
                            <td class="bg-light"></td>
                            <td class="bg-light"></td>
                            <td class="bg-light"></td>
                            <td class="bg-light"></td>
                            <td class="bg-light"></td>
                            <td><%= MRcantDiasComp%></td>
                            <td>$<%= valorTotal%></td>
                            <td class="bg-light"></td>
                            <td class="bg-light"></td>



                        </tr>
                        <tr>
                            <th scope="col"></th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>

                        </tr>

                    </tbody>

                </table>
            </div>
        </div>



    </body>
</html>
