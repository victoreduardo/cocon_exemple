# frozen_string_literal: true

class TbItem < ActiveRecord::Base
  # main config ...............................................................
  audited
  self.table_name = :tb_items

  # extends ...................................................................
  # includes ..................................................................
  # security (i.e. attr_accessible) ...........................................
  # relationships .............................................................
  # validations ...............................................................
  validates_presence_of :title
  validates_length_of :title, maximum: 255

  # callbacks .................................................................
  # scopes ....................................................................
  # additional config .........................................................
  # class methods .............................................................
  # public instance methods ...................................................
  # protected instance methods ................................................
  # private instance methods ..................................................
end
