namespace app.expenses;

using {
    managed,
    Currency
} from '@sap/cds/common';

entity Expenses : managed {
    key ID               : UUID   @Core  : {Computed};
        type             : String @title : 'Type';
        location         : String @title : 'Location';
        product          : String @title : 'Product';
        product_quantity : Double @title : 'Product Quantity';
        unit_of_measure  : String @title : 'Unit of Measure';
        unit_quantity    : Double @title : 'Unit Quantity';
        currency         : Currency;
        unit_price       : Double @title : 'Unit Price';
        total            : Double @title : 'Total';
};