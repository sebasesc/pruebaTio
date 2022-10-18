{include file="header.tpl"}
<!-- formulario de alta de arbitros -->
<form action="add" method="POST" class="my-4">
    <div class="row">
        <div class="col-5">
            <div class="form-group">
                <label>Arbitro</label>
                <input name="arbitro" type="text" class="form-control">
            </div>
        </div>

        <div class="col-3">
            <div class="form-group">
                <label>Asociacion</label>
                <input name="asociacion" type="text" class="form-control">  
            </div>
        </div>

        <div class="col-3">
            <div class="form-group">
                <label>Region</label>  
                <input name="region" type="text" class="form-control">
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary mt-2">Agregar</button>
</form>

<span>ver todos los arbitros de la region: </span>
<select>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="show" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
        <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Action</a>
        <a class="dropdown-item" href="#">Another action</a>
        <a class="dropdown-item" href="#">Something else here</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="#">Separated link</a>
        </div>
    </li>
</select>


<!-- lista de arbitros -->
<ul class="list-group">
    {foreach from=$umpires item=$umpire}
        <li class='list-group-item d-flex justify-content-between align-items-center'>
            <span> <b>{$umpire->arbitro}</b> - {$umpire->asociacion} - {$umpire->region} </span>
            <div>
                <a href='show-edit-umpire/{$umpire->id}' type='button' class='btn btn-secondary'>Editar</a>
                <a href='delete/{$umpire->id}' type='button' class='btn btn-danger'>Borrar</a>
            </div>
        </li>
    {/foreach}
</ul>
<p class="mt-3"><small>Mostrando arbitros disponibles</small></p>
