<?php

function print_fields_for_products($fieldsQuantity = null, $errors, $fieldsData)
{
  if(empty($fieldsQuantity))
    $fieldsQuantity = get_fields_quantity();

  for($i = 1; $i <= $fieldsQuantity; $i++) {
    echo build_field_for_product($i, $errors[$i], $fieldsData[$i]);
  }
}

function get_fields_quantity()
{
  return 20;
}

function build_field_for_product($index, $error, $fieldsData)
{
  $html =
  "<div class=\"form-group required\">
    <label class=\"col-sm-2 control-label\">Produto {$index}</label>
    <div class=\"col-sm-10\"><div class=\"row\">
    <div class=\"col-sm-3\">
      <select name=\"condition_{$index}\" class=\"form-control\" selected=\"{$fieldsData['condition']}\">
        <option value=\"condition\">Estado</option>
        <option value=\"excelent\">Excelente</option>
        <option value=\"new\">Novo com Etiqueta</option>
      </select>
    </div>
    <div class=\"col-sm-3\">
      <select name=\"size_{$index}\" class=\"form-control\" selected=\"{$fieldsData['size']}\">
        <option value=\"size\">Tamanho</option>
      </select>
    </div>
    <div class=\"col-sm-3\">
      <select name=\"category_{$index}\" class=\"form-control\"  selected=\"{$fieldsData['category']}\">
        <option value=\"category\">Categoria</option>
      </select>
    </div>
    <div class=\"col-sm-3\">
      <input type=\"text\" name=\"brand_{$index}\" value=\"{$fieldsData['brand']}\" id=\"input-brand\" class=\"form-control\" placeholder=\"Marca\" />
    </div>";

  if ($error) {
    $html .= "<div class=\"col-sm-12\"><div class=\"text-danger\">{$error}</div></div>";
  }
  $html .= "</div>
   </div>
  </div>";

  return $html;
}

function create_email_content($data)
{
  $content = array();
  $content[] = "Nome: {$data['name']}";
  $content[] = "Email: {$data['email']}";
  $content[] = "";
  $content[] = "Produtos:";

  for($i = 1; $i <= get_fields_quantity(); $i++) {
    $category = ($data["category_{$i}"] == 'category')? 'Não selecionado' : $data["category_{$i}"];
    $brand = ($data["brand_{$i}"] == '')? 'Não informado' : ucfirst($data["brand_{$i}"]);
    $size = ($data["size_{$i}"] == 'size')? 'Não informado' : $data["size_{$i}"];
    $condition ($data["condition_{$i}"] == 'condition')? 'Não informado' : $data["condition_{$i}"];

    $content[] = "{$category}: {$brand}, tamanho {$size}. Estado do produto: {$condition}";
  }

  $content[] = "";
  $content[] = "Mensagem:";
  $content[] = $data["enquiry"];

  return implode("\r\n", $content);
}
