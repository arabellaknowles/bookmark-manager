require 'pg'

feature 'Viewing bookmarks' do
  scenario 'Can view the bookmarks when requested' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add the test data
      Bookmark.create(url: "http://www.makersacademy.com", title: 'makers')
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: 'destroyallsoftware')
      Bookmark.create(url: "http://www.google.com", title: 'google')

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
