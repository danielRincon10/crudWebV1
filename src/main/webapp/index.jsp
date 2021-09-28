<%-- 
    Document   : index
    Created on : 27-sep-2021, 19:53:33
    Author     : PC_Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/estilos/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <div class="container bg-success bg-opacity-10 text-center margen">
                <h1> Crud Mision TIC JSP + Bootstrap</h1>
            </div>
        </header>
        
        <section>
            <form>
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="floatingInput" name="codigoProducto" placeholder="name">
                                <label for="floatingInput">Codigo: </label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" name="nombreProducto" placeholder="name">
                                <label for="floatingInput">Nombre: </label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="floatingInput" name="cantidadProducto" placeholder="name">
                                <label for="floatingInput">Cantidad: </label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="floatingInput" name="precioProducto" placeholder="name">
                                <label for="floatingInput">Precio: </label>
                            </div>
                            
                            <label>Categoria: </label>
                            
                            <select class="form-select" multiple aria-label="multiple select example">
                                <option value="Abarrotes">Abarrotes</option>
                                <option value="Granos">Granos</option>
                                <option value="Frutas">Frutas</option>
                                <option value="Verduras">Verduras</option>
                                <option value="Lacteos">Lacteos</option>
                                <option value="Carnicos">Carnicos</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <center>
                            <button class="btn btn-outline-success bg-opacity-10 btnSize" name="btnAccion" value="Insertar">Insertar Producto</button>
                        </center>
                    </div>
                </div>
            </form>
        </section>
        
        <section class=" container margen">
            <table class="table table-striped table-hover">
                <thead>
                  <tr>
                    <th scope="col">Codigo</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Cantidad</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Categoria</th>
                    <th scope="col">Acción</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>
                        <button class="btn btn-primary">Actualizar</button>
                        <button class="btn btn-danger">Eliminar</button>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                    <td>@mdo</td>
                    <td>
                        <button class="btn btn-primary">Actualizar</button>
                        <button class="btn btn-danger">Eliminar</button>
                    </td>
                  </tr>
                </tbody>
              </table>
        </section>
        
        <footer>
            <div class="container bg-success bg-opacity-10 text-center margen">
                <h5> Desarrollado por grupo X misión TIC 2021 </h5>
            </div>
        </footer>
        
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>

