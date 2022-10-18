<?php
require_once 'app/models/admin.php';
require_once 'app/models/teams.php';
require_once 'app/models/umpires.php';
require_once 'app/views/matchview.php';
require_once 'app/views/auth.view.php';
require_once 'helpers/auht.helper.php';

class AdmController {
    private $model_umpire;
    private $model_team;
    private $view;
    private $authview;
    private $model_admin;
    private $helper;

    public function __construct() {
        $this->model_umpire = new UmpireModel();
        $this->model_team = new TeamModel();
        $this->model_admin = new AdminModel();
        $this->view = new MatchView();
        $this->authview = new AuthView();
        $this->helper = new AuthHelper();
    }

    function addTeam() {
        $this->helper->checkLoggedIn();        
        // validar entrada de datos
        $equipo = $_POST['equipo'];
        $asociacion = $_POST['asociacion'];
        $region = $_POST['region'];

        $id = $this->model_team->insertTeam($equipo, $asociacion, $region);
        header("Location: " . BASE_URL . "list-teams"); 
    }
    
    function deleteTeam($id) {
        $this->helper->checkLoggedIn();
        $this->model_team->deleteTeamById($id);
        header("Location: " . BASE_URL . "list-teams");
    }
    
    function addUmpire() {
        $this->helper->checkLoggedIn();
        // validar entrada de datos
        $arbitro = $_POST['arbitro'];
        $asociacion = $_POST['asociacion'];
        $region = $_POST['region'];

        $id = $this->model_umpire->insertUmpire($arbitro, $asociacion, $region);
        header("Location: " . BASE_URL . "list-umpires"); 
    }
   
    function deleteUmpire($id) {
        $this->helper->checkLoggedIn();
        $this->model_umpire->deleteUmpireById($id);
        header("Location: " . BASE_URL. "list-umpires");
    }

    public function showEditFormUmpire($id){
        $this->helper->checkLoggedIn();
        $this->authview->showEditFormUmpire($id);
    }

    public function EditUmpire($id){
        $this->helper->checkLoggedIn();
        if ((!empty($_POST))) {
            $arbitro = $_POST['arbitro'];
            $asociacion = $_POST['asociacion'];
            $region = $_POST['region'];
            $this->model_umpire->editUmpire($arbitro, $asociacion, $region, $id);
            header("Location: " . BASE_URL . "list-umpires"); 
        }      
    }
    
    public function showEditFormTeam($id){
        $this->helper->checkLoggedIn();
        $this->authview->showEditFormTeam($id);
    }

    public function EditTeam($id){
        $this->helper->checkLoggedIn();
        if ((!empty($_POST))) {
            $equipo = $_POST['equipo'];
            $asociacion = $_POST['asociacion'];
            $region = $_POST['region'];
            $this->model_team->editTeam($equipo, $asociacion, $region, $id);
            header("Location: " . BASE_URL . "list-teams"); 
        }   
    
}
}