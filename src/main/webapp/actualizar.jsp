<%-- 
    Document   : actualizar
    Created on : 29-sep-2021, 19:31:01
    Author     : PC_Daniel
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Producto"%>
<%@page import="Controladores.ControlProducto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/estilos/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Crud Web</title>
    </head>
    <body>
        <%  
            String CodigoStr = request.getParameter("codigoProducto"); 
            int codigo = Integer.parseInt(CodigoStr.toString());  
            ControlProducto ctrProducto = new ControlProducto(); 
            ArrayList<Producto> consultaProducto = new ArrayList<>(); 
            consultaProducto = ctrProducto.consultar(codigo); 
            
        %>
        
        <div class="container text-center bg-info margen">
            <h1> CRUD WEB JSP + BOOTSTRAP </h1>
        </div>
        
        <section>
            <form method="POST" action="ControlProducto">
                <div class="container">
                    <h3>Gestión de productos </h3>
                    <div class="row">
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control"  name="codigoProducto" value="<%out.println(consultaProducto.get(0).getCodigoProducto()); %>" readonly="">
                                <label for="floatingInput">Codigo: </label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput"  name="nombreProducto" value="<%out.println(consultaProducto.get(0).getNombreProducto()); %>" required="">
                                <label for="floatingInput">Nombre: </label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" name="cantidadProducto" value="<%out.println(consultaProducto.get(0).getCantidadProducto()); %>" required="">
                                <label for="floatingInput">Cantidad: </label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" placeholder="Arroz" name="precioProducto" value="<%out.println(consultaProducto.get(0).getPrecioProducto()); %>" required="">
                                <label for="floatingInput">Precio: </label>
                            </div>
                            <label>Categoria: </label>
                            <br>
                            <select class="form-select" multiple aria-label="multiple select example" name="categoriaProducto" required="">
                                <option value="Abarrotes">Abarrotes</option>
                                <option value="Lacteos">Lacteos</option>
                                <option value="Aseo">Aseo</option>
                              </select>
                        </div>
                    </div>
                    <div class="row float-end">
                        <div class="col">
                            <button class="btn btn-success btnSize" value="Actualizar" name="btnAccion">Actualizar Producto</button>
                        </div>
                    </div>
                </div>          
            </form>
        </section>
        
        
        
        
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>