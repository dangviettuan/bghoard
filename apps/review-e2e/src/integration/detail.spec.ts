describe('game review details', () => {
  beforeEach(() => cy.visit('/review/the-werewolves-of-millers-hollow'));

  it('should list reviews', () => {
    cy.contains('The Werewolves of Millers Hollow');
    cy.contains(
      'The Werewolves of Millers Hollow is a card game created by the French authors Philippe des Pallières and Hervé Marly that can be played with 8 to 47 players. The game is based on the Russian game Mafia. It was nominated for the 2003 Spiel des Jahres award.'
    );
    // Dummy text for reviews
    cy.contains('Lorem ipsum');
  });

  it('should have a form to add a review', () => {
    const reviewText = 'This is a new review at ' + new Date().getTime();
    cy.contains('label', 'Rating')
      .find('input')
      .type('3');
    cy.contains('label', 'Review')
      .find('textarea')
      .type(reviewText);
    cy.contains('button', 'Submit Review').click();

    cy.contains('label', 'Rating')
      .find('input')
      .should('have.value', '0');
    cy.contains('label', 'Review')
      .find('textarea')
      .should('have.value', '');

    cy.contains(reviewText);
  });
});
