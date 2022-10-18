    // desarrollar un sitio que permita ver los items cargados por un us admin
    // cualquiera puede acceder pero solo el adm tiene los permisos para abm
    // items tienen que tener relacion 1 a N
        //la db debe tener al menos una relacion 1-N (debe haber una tabla item relacionada a una tabla cat mediante una FK)
    //acceso publico... secciones: 
    // listado de items-lista de todos los items   
    // detalle de item... se debe poder visualizar y navegar cada item particularmente
    // listado de categorias ->lista de todos las categorias
    // listadod de item por categoria-> se debe poder visualizar los items pertenecientes a una categoria seleccionada

    //en cada item se debe mostrar a que categoria pertenece por ej item-> arbitro martin categoria-> fed tandil

    //acceso adm...
    //se debe loguear con us y pass
    //se debe poder desloguear
    //solo los us logueados pueden modificar cat e item

    //crear servicios de ABM
        //Administrar items (entidad del lado N de la relacion)
        //lista de item/agregar item/eliminar item/editar item

    //al agregar item se debe poder elegir la cat a la que pertenecen utilizando un select que muestre el nombre de la misma

    //Administrar categorias (entidad del lado 1 de la relacion)
        //lista de cat/agregar cat/eliminar cat/editar cat

    //opcional se puede subir una foto cuando se crea el item o cat

    //se debe mostrar todo el html en un motor tipo Smarty o similar
    //todas las acciones deben ser manejadas con MVC
    //urls semanticas
    //el sitio necesita un archivo sql para instalar la base de datos
    




