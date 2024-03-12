<?php
function checkForm($datasPost)
{
    $errors = [];
    foreach ($datasPost as $data) {
        if (isset($data['requireds'])) {
            foreach ($data['requireds']['isset'] as $dataName => $dataValue) {
                if (empty($dataValue)) {
                    $errors[$dataName] = "Ce champ est obligatoire.";
                }
            }
            foreach ($data['requireds']['isset']['strlen'] as $dataName => $dataValue) {
                if (strlen($dataValue) <= 1) {
                    $errors[$dataName] = "Ce champs doit être rempli avec plus d'un caractère";
                }
            }
        }
    }
}
