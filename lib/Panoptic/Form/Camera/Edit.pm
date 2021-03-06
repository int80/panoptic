package Panoptic::Form::Camera::Edit;

use HTML::FormHandler::Moose;
extends 'Panoptic::Form';
with 'HTML::FormHandler::TraitFor::Model::DBIC';

has '+item_class' => ( default => 'Camera' );

has_field 'title' => (
    type => 'Text',
    required => 1,
    placeholder => 'Name',
);

has_field 'address' => (
    type => 'Text',
    required => 1,
    placeholder => 'Address',
);

has_field 'model' => (
    type => 'Select',
    empty_select => 'Choose camera model...',
    label_column => 'name',
);

has_field 'host' => (
    type => 'Select',
    label_column => 'hostname',
    required => 1,
);

has_field 'username' => (
    type => 'Text',
    placeholder => 'Username',
);

has_field 'password' => (
    type => 'Text',
    placeholder => 'Password',
);

__PACKAGE__->meta->make_immutable;
