# frozen_string_literal: true

class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '演劇' },
    { id: 3, name: 'ミュージカル' },
    { id: 4, name: '日本芸能' },
    { id: 5, name: '舞踊' },
    { id: 6, name: '朗読' },
    { id: 7, name: '2.5次元' },
    { id: 8, name: 'ひとり芝居' },
    { id: 9, name: 'シェイクスピア' },
    { id: 10, name: 'その他' }
  ]
end
