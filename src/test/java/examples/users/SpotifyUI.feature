
Feature: SpotifyUI

  Background:
    * configure driver = { type: 'chromedriver', executable: 'src/test/resources/chromedriver.exe' }
    * url ''
    @SpotifyUI
  Scenario: UI Test

    Given driver 'https://open.spotify.com/'
    * maximize()
    When click("//button[@data-testid='login-button']")
    And input('#login-username', 'bugra.yurdagul@outlook.com')
    And input('#login-password', '2847233By')
    And click('#login-button')
    And waitFor('.IPVjkkhh06nan7aZK7Bx').click()
    And waitFor('.AINMAUImkAYJd4ertQxy').click()
    And waitFor('.o4KVKZmeHsoRZ2Ltl078').click()
    And waitFor('.RLzMolC7kIdp65LyfQPb')
    And input("//input[@data-testid='playlist-edit-details-name-input']",'MentorLabs Challenge')
    And click('.Button-qlcn5g-0.jvEinx')
    And input('.Type__TypeElement-goli3j-0.ebHsEf.l42JW4EP_5CU1Ba7jYIc', 'Daft Punk')
    And waitFor("//button[@data-testid='add-to-playlist-button']").click()
    And waitFor("//div[contains(text(),'Çalma Listesine eklendi')]")













