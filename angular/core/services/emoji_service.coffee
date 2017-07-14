angular.module('diehard_fundApp').factory 'EmojiService', ($timeout) ->
  new class EmojiService
    source: window.DiehardFund.emojis.source
    render: window.DiehardFund.emojis.render
    defaults: window.DiehardFund.emojis.defaults

    listen: (scope, model, field, target) ->
      scope.$on 'emojiSelected', (event, emoji, selector) ->
        return unless selector == target
        elem = document.querySelector(selector)
        caretPosition = elem.selectionEnd
        model[field] = "#{model[field].substring(0, elem.selectionEnd)} #{emoji} #{model[field].substring(elem.selectionEnd)}"
        $timeout ->
          elem.selectionEnd = elem.selectionStart = caretPosition + emoji.length + 2
          elem.focus()
