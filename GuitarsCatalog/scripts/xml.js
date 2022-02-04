function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null);

// guitars catalog
    let guitars_catalog = doc.createElement("guitars_catalog");
    doc.appendChild(guitars_catalog);

// guitars
    let guitars = doc.createElement("guitars");
    guitars_catalog.appendChild(guitars);

// a single guitar 1
    let guitars_guitar = doc.createElement("guitar");
    guitars.appendChild(guitars_guitar);

    let guitar_brand = doc.createElement("brand");
    guitars_guitar.appendChild(guitar_brand);
    guitar_brand.appendChild(doc.createTextNode("Ibanez Cosmic Shadow"));

    let guitar_image = doc.createElement("image");
    guitars_guitar.appendChild(guitar_image);
    guitar_image.appendChild(doc.createTextNode("ibanez-black.jpg"));

    let guitar_company_name = doc.createElement("company_name");
    guitars_guitar.appendChild(guitar_company_name);
    guitar_company_name.appendChild(doc.createTextNode("Ibanez"));

    let guitar_rating = doc.createElement("rating");
    guitars_guitar.appendChild(guitar_rating);
    guitar_rating.appendChild(doc.createTextNode("4.6"));

// guitars' main info
    let guitars_mainInfo = doc.createElement("mainInfo");
    guitars.appendChild(guitars_mainInfo);

    let mainInfo_type = doc.createElement("type");
    mainInfo_type.setAttribute("category","Електрическа");
    guitars_mainInfo.appendChild(mainInfo_type);

    let mainInfo_color = doc.createElement("color");
    guitars_mainInfo.appendChild(mainInfo_color);
    mainInfo_color.appendChild(doc.createTextNode("Черна"));

    let mainInfo_orientation = doc.createElement("orientation");
    mainInfo_orientation.setAttribute("hand","За лява ръка");
    guitars_mainInfo.appendChild(mainInfo_orientation);

    let mainInfo_num_of_strings = doc.createElement("num_of_strings");
    guitars_mainInfo.appendChild(mainInfo_num_of_strings);
    mainInfo_num_of_strings.appendChild(doc.createTextNode("6 струни"));

    let mainInfo_cost = doc.createElement("cost");
    mainInfo_cost.setAttribute("currency","EUR");
    guitars_mainInfo.appendChild(mainInfo_cost);
    mainInfo_cost.appendChild(doc.createTextNode("1915"));

// guitars' descriptions
    let guitars_descriptions = doc.createElement("descriptions");
    guitars.appendChild(guitars_descriptions);

    let descriptions_guitar = doc.createElement("guitar");
    guitars_descriptions.appendChild(descriptions_guitar);
// -----------------------------------------------------
        // descriptions' guitar elements
        let descriptions_brand = doc.createElement("brand");
        descriptions_guitar.appendChild(descriptions_brand);
        descriptions_brand.appendChild(doc.createTextNode("Ibanez Cosmic Shadow"));

        let descriptions_image = doc.createElement("image");
        descriptions_guitar.appendChild(descriptions_image);
        descriptions_image.appendChild(doc.createTextNode("ibanez-black.jpg"));

        let descriptions_company_name = doc.createElement("company_name");
        descriptions_guitar.appendChild(descriptions_company_name);
        descriptions_company_name.appendChild(doc.createTextNode("Ibanez"));

        let descriptions_rating = doc.createElement("rating");
        descriptions_guitar.appendChild(descriptions_rating);
        descriptions_rating.appendChild(doc.createTextNode("4.6"));
// ------------------------------------------------------

    let descriptions_description = doc.createElement("description");
    guitars_descriptions.appendChild(descriptions_description);
    descriptions_description.appendChild(doc.createTextNode(
        "Изработена с олекотен корпус от махагон и шия от 5 части клен/венге, " +
        "тази китара се отличава с резонансен тон, който няма да ви тежи."));

// guitars' guitar "about" information
    let guitars_guitarAbout = doc.createElement("guitarAbout");
    guitars.appendChild(guitars_guitarAbout);

    let guitarAbout_guitar = doc.createElement("guitar");
    guitars_guitarAbout.appendChild(guitarAbout_guitar);
// -----------------------------------------------------
    // descriptions' guitar elements
    let guitarAbout_brand = doc.createElement("brand");
    guitarAbout_guitar.appendChild(guitarAbout_brand);
    guitarAbout_brand.appendChild(doc.createTextNode("Ibanez Cosmic Shadow"));

    let guitarAbout_image = doc.createElement("image");
    guitarAbout_guitar.appendChild(guitarAbout_image);
    guitarAbout_image.appendChild(doc.createTextNode("ibanez-black.jpg"));

    let guitarAbout_company_name = doc.createElement("company_name");
    guitarAbout_guitar.appendChild(guitarAbout_company_name);
    guitarAbout_company_name.appendChild(doc.createTextNode("Ibanez"));

    let guitarAbout_rating = doc.createElement("rating");
    guitarAbout_guitar.appendChild(guitarAbout_rating);
    guitarAbout_rating.appendChild(doc.createTextNode("4.6"));
// ------------------------------------------------------

    let guitarAbout_countryOfOrigin = doc.createElement("countryOfOrigin");
    guitarAbout_countryOfOrigin.setAttribute("code","JP");
    guitars_guitarAbout.appendChild(guitarAbout_countryOfOrigin);

    let guitarAbout_yearOfManufacture = doc.createElement("yearOfManufacture");
    guitars_guitarAbout.appendChild(guitarAbout_yearOfManufacture);
    guitarAbout_yearOfManufacture.appendChild(doc.createTextNode("2017"));

    let guitarAbout_website = doc.createElement("website");
    guitars_guitarAbout.appendChild(guitarAbout_website);
    guitarAbout_website.appendChild(doc.createTextNode("www.ibanez.com"))

// guitars' product details

    let guitars_productDetails = doc.createElement("productDetails");
    guitars_productDetails.setAttribute("isAvailable","Да");
    guitars.appendChild(guitars_productDetails);

    let productDetails_guitar = doc.createElement("guitar");
    guitars_productDetails.appendChild(productDetails_guitar);
// -----------------------------------------------------
    // productDetails' guitar elements
    let productDetails_brand = doc.createElement("brand");
    productDetails_guitar.appendChild(productDetails_brand);
    productDetails_brand.appendChild(doc.createTextNode("Ibanez Cosmic Shadow"));

    let productDetails_image = doc.createElement("image");
    productDetails_guitar.appendChild(productDetails_image);
    productDetails_image.appendChild(doc.createTextNode("ibanez-black.jpg"));

    let productDetails_company_name = doc.createElement("company_name");
    productDetails_guitar.appendChild(productDetails_company_name);
    productDetails_company_name.appendChild(doc.createTextNode("Ibanez"));

    let productDetails_rating = doc.createElement("rating");
    productDetails_guitar.appendChild(productDetails_rating);
    productDetails_rating.appendChild(doc.createTextNode("4.6"));
// ------------------------------------------------------

    let productDetails_series = doc.createElement("series");
    productDetails_series.setAttribute("guitarId","RG5320L-CSW");
    guitars_productDetails.appendChild(productDetails_series);

    let productDetails_fingerboard_material = doc.createElement("fingerboard_material");
    guitars_productDetails.appendChild(productDetails_fingerboard_material);
    productDetails_fingerboard_material.appendChild(doc.createTextNode("Черен абанос"));

    let productDetails_amount = doc.createElement("amount");
    guitars_productDetails.appendChild(productDetails_amount);
    productDetails_amount.appendChild(doc.createTextNode("1 брой"));

    let productDetails_condition = doc.createElement("condition");
    guitars_productDetails.appendChild(productDetails_condition);
    productDetails_condition.appendChild(doc.createTextNode("Отлично"));

    let productDetails_comingWith = doc.createElement("comingWith");
    guitars_productDetails.appendChild(productDetails_comingWith);
    productDetails_comingWith.appendChild(doc.createTextNode("Няма информация"));

    return doc;
}
