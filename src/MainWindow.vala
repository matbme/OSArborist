/* MainWindow.vala
 *
 * Copyright 2022 Mateus Melchiades <mateusbmelchiades@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX=FileCopyrightText: 2022 Mateus Melchiades <mateusbmelchiades@gmail.com>
 */

namespace OSArborist {
    public class MainWindow : Adw.ApplicationWindow {
        public Gtk.Application app { private get; construct; }
        private Gtk.Box content_view;

        public MainWindow (Gtk.Application application) {
            Object (
                app: application,
                resizable: true,
                default_width: 800,
                default_height: 600,
                title: "OSArborist"
            );
        }

        construct {
            set_application (app);
            content_view = new Gtk.Box (Gtk.Orientation.VERTICAL, 0);

            var header_bar = new Adw.HeaderBar ();
            content_view.append (header_bar);

            set_content (content_view);
        }
    }
}
