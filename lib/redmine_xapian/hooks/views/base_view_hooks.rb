# frozen_string_literal: true

# Redmine Xapian is a Redmine plugin to allow attachments searches by content.
#
# Xabier Elkano, Karel Pičman <karel.picman@kontron.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

module RedmineXapian
  module Hooks
    module Views
      # Base view's hooks
      class BaseViewHooks < Redmine::Hook::ViewListener
        def view_layouts_base_html_head(context = {})
          return unless context[:controller].instance_of?(SearchController)

          "\n".html_safe + stylesheet_link_tag('redmine_xapian', plugin: :redmine_xapian)
        end
      end
    end
  end
end
