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
        <option value=\"PP\">PP</option>
        <option value=\"P\">P</option>
        <option value=\"M\">M</option>
        <option value=\"G\">G</option>
        <option value=\"GG\">GG</option>
        <option value=\"1\">1</option>
        <option value=\"2\">2</option>
        <option value=\"3\">3</option>
        <option value=\"4\">4</option>
        <option value=\"5\">5</option>
        <option value=\"6\">6</option>
        <option value=\"8\">8</option>
        <option value=\"10\">10</option>
        <option value=\"12\">12</option>
      </select>
    </div>
    <div class=\"col-sm-3\">
      <select name=\"category_{$index}\" class=\"form-control\"  selected=\"{$fieldsData['category']}\">
        <option value=\"category\">Categoria</option>
        <option value=\"Banho de Sol\">Banho de Sol</option>
        <option value=\"Bata e Blusa\">Bata e Blusa</option>
        <option value=\"Bermuda\">Bermuda</option>
        <option value=\"Biquíni\">Biquíni</option>
        <option value=\"Blazer\">Blazer</option>
        <option value=\"Blusa Manga Longa\">Blusa Manga Longa</option>
        <option value=\"Blusão Moletom\">Blusão Moletom</option>
        <option value=\"Blusinha\">Blusinha</option>
        <option value=\"Body > Manga Curta\">Body > Manga Curta</option>
        <option value=\"Body > Manga Longa\">Body > Manga Longa</option>
        <option value=\"Body > Sem Manga\">Body > Sem Manga</option>
        <option value=\"Body > Vestido e Camisa\">Body > Vestido e Camisa</option>
        <option value=\"Bolero\">Bolero</option>
        <option value=\"Bolsa e Mochila\">Bolsa e Mochila</option>
        <option value=\"Bota\">Bota</option>
        <option value=\"Cachecou, Lenço e Echarpe\">Cachecou, Lenço e Echarpe</option>
        <option value=\"Calça > Culote\">Calça > Culote</option>
        <option value=\"Calça > Jeans\">Calça > Jeans</option>
        <option value=\"Calça > Legging\">Calça > Legging</option>
        <option value=\"Calça > Moletom\">Calça > Moletom</option>
        <option value=\"Calça > Outros\">Calça > Outros</option>
        <option value=\"Calça > Plush\">Calça > Plush</option>
        <option value=\"Calça > Sarja\">Calça > Sarja</option>
        <option value=\"Calça > Social\">Calça > Social</option>
        <option value=\"Calça > Sport\">Calça > Sport</option>
        <option value=\"Calça > Tecido Fino\">Calça > Tecido Fino</option>
        <option value=\"Calça > Tecido Grosso\">Calça > Tecido Grosso</option>
        <option value=\"Camisa > Manga Curta\">Camisa > Manga Curta</option>
        <option value=\"Camisa > Manga Longa\">Camisa > Manga Longa</option>
        <option value=\"Camiseta > Manga Longa\">Camiseta > Manga Longa</option>
        <option value=\"Camiseta e Blusa > Gola Polo\">Camiseta e Blusa > Gola Polo</option>
        <option value=\"Camiseta e Blusinha > Manga Curta\">Camiseta e Blusinha > Manga Curta</option>
        <option value=\"Camisola\">Camisola</option>
        <option value=\"Capa de Chuva\">Capa de Chuva</option>
        <option value=\"Cardigan\">Cardigan</option>
        <option value=\"Carteira\">Carteira</option>
        <option value=\"Casaco\">Casaco</option>
        <option value=\"Casaco Inverno\">Casaco Inverno</option>
        <option value=\"Casaco Plush\">Casaco Plush</option>
        <option value=\"Casaco Sport\">Casaco Sport</option>
        <option value=\"Casaquinho\">Casaquinho</option>
        <option value=\"Chapéu e Boné\">Chapéu e Boné</option>
        <option value=\"Chinelo\">Chinelo</option>
        <option value=\"Cinto\">Cinto</option>
        <option value=\"Colete\">Colete</option>
        <option value=\"Colete Inverno\">Colete Inverno</option>
        <option value=\"Conjunto\">Conjunto</option>
        <option value=\"Conjunto > Inverno\">Conjunto > Inverno</option>
        <option value=\"Conjunto > Verão\">Conjunto > Verão</option>
        <option value=\"Fantasia\">Fantasia</option>
        <option value=\"Fantasia Luxo\">Fantasia Luxo</option>
        <option value=\"Jaqueta\">Jaqueta</option>
        <option value=\"Jardineira\">Jardineira</option>
        <option value=\"Jardineira e Salopete\">Jardineira e Salopete</option>
        <option value=\"Luva\">Luva</option>
        <option value=\"Macacão > Inverno\">Macacão > Inverno</option>
        <option value=\"Macacão > Manga Curta e Sem Manga\">Macacão > Manga Curta e Sem Manga</option>
        <option value=\"Macacão > Manga Longa\">Macacão > Manga Longa</option>
        <option value=\"Macacão > Plush\">Macacão > Plush</option>
        <option value=\"Macaquinho > Manga Curta e Sem Manga\">Macaquinho > Manga Curta e Sem Manga</option>
        <option value=\"Macaquinho > Sem Manga\">Macaquinho > Sem Manga</option>
        <option value=\"Maiô e Biquini\">Maiô e Biquini</option>
        <option value=\"Manta\">Manta</option>
        <option value=\"Meia\">Meia</option>
        <option value=\"Meia Calça\">Meia Calça</option>
        <option value=\"Meia com Sola\">Meia com Sola</option>
        <option value=\"Mochila\">Mochila</option>
        <option value=\"Óculos\">Óculos</option>
        <option value=\"Outros\">Outros</option>
        <option value=\"Pantufa\">Pantufa</option>
        <option value=\"Pijama > Inverno\">Pijama > Inverno</option>
        <option value=\"Pijama > Verão\">Pijama > Verão</option>
        <option value=\"Regata\">Regata</option>
        <option value=\"Roupão\">Roupão</option>
        <option value=\"Saia\">Saia</option>
        <option value=\"Salopete\">Salopete</option>
        <option value=\"Sandália e Papete\">Sandália e Papete</option>
        <option value=\"Sapatilha\">Sapatilha</option>
        <option value=\"Sapatinho\">Sapatinho</option>
        <option value=\"Sapato\">Sapato</option>
        <option value=\"Shorts\">Shorts</option>
        <option value=\"Shorts Sport\">Shorts Sport</option>
        <option value=\"Sobretudo\">Sobretudo</option>
        <option value=\"Suéter\">Suéter</option>
        <option value=\"Sunga\">Sunga</option>
        <option value=\"Tênis\">Tênis</option>
        <option value=\"Tiara e Faixa\">Tiara e Faixa</option>
        <option value=\"Touca e Gorro\">Touca e Gorro</option>
        <option value=\"Vestido\">Vestido</option>
        <option value=\"Vestido Básico\">Vestido Básico</option>
        <option value=\"Vestido Festa\">Vestido Festa</option>
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
