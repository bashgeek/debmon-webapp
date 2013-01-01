package DebMonWeb::Static;
use Mojo::Base 'Mojolicious::Controller';
use Mojo::JSON;

sub process {
  my $self = shift;

  my $payload_json = $self->param('payload');

  my $json  = Mojo::JSON->new;
  my $payload  = $json->decode($payload_json);
  if ($json->error) {
      $self->render('Could not decode payload: ' . $json->error);
  } else {
      $self->render('KTHXBYE');
  }
}

1;
