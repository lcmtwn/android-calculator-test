Then /^I see "([^\"]*)" in info field$/ do |expected_text|
    actual_text = query("AppCompatEditText id:'editText'", "text").first
    unless expected_text == actual_text
        fail "Expected '#{expected_text}', but got '#{actual_text}'"
    end
end

Then /^I see "([^\"]*)" in result field$/ do |expected_text|
    actual_text = query("AppCompatTextView id:'infoTextView'", "text").first
    unless expected_text == actual_text
        fail "Expected '#{expected_text}', but got '#{actual_text}'"
    end
end

When /^I press number: "([^\"]*)"$/ do |number|
    number.to_s.each_char do |n|
        touch("AppCompatButton text:'#{n}'")
    end
end
