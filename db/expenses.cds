namespace app.expenses;

using {
    managed,
    Currency
} from '@sap/cds/common';


entity Expenses : managed {
    key ID               : UUID   @Core  : {Computed};
        category         : Category;
        location         : String @title : 'Location';
        product          : String @title : 'Product';
        product_quantity : Double @title : 'Product Quantity';
        unit_of_measure  : String @title : 'Unit of Measure';
        unit_quantity    : Double @title : 'Unit Quantity';
        currency         : Currency;
        unit_price       : Double @title : 'Unit Price';
        total            : Double @title : 'Total';
};


type Category : Association to Categories;

entity Categories                     @(
    cds.autoexpose,
    cds.persistence.skip : 'if-unused'
) {
        name  : localized String(255) @title : '{i18n>Name}';
        descr : localized String(1000)@title : '{i18n>Description}';
    key code  : Integer               @(title : '{i18n>CategoryCode}');
}

annotate Categories with @UI.Identification : [{Value : descr }];
annotate Categories with @cds.odata.valuelist;

annotate Categories with {
    code @Common.Text : descr;
}

annotate Category with @(
    title       : '{i18n>Category}',
    description : '{i18n>CategoryCode.Description}'
);
