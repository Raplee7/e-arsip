<?php

namespace App\Controllers;

use App\Models\Model_user;
use App\Models\Model_dep;

class User extends BaseController
{

    public function __construct()
    {
        $this->Model_user = new Model_user();
        $this->Model_dep = new Model_dep();
        helper('form');
    }

    public function index()
    {
        $data = array(
            'title' => 'User',
            'user' => $this->Model_user->all_data(),
            'isi'    => 'user/v_index'
        );
        return view('layout/v_wrapper', $data);
    }
    public function add()
    {
        $data = array(
            'title' => 'Add User',
            'dep' => $this->Model_dep->all_data(),
            'isi'    => 'user/v_add'
        );
        return view('layout/v_wrapper', $data);
    }
}