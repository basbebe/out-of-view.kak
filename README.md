# out-of-view.kak

Show out of view selections.

## Installation

Add [`out-of-view.kak`](rc/out-of-view.kak) to your autoload or source it manually.

``` kak
require-module out-of-view
```

## Usage

Enable out-of-view with `out-of-view-enable`.

## Configuration

``` kak
set-option global modelinefmt '{yellow}%opt{out_of_view_status_line}{default} {{mode_info}} {magenta}%val{client}{default} at {yellow}%val{session}{default} on {green}%val{bufname}{default} {{context_info}} {cyan}%val{cursor_line}{default}:{cyan}%val{cursor_char_column}{default}'
```

## Commands

- `out-of-view-enable`: Enable out-of-view.
- `out-of-view-disable`: Disable out-of-view.

## Options

- `out_of_view_format`: Format.  Default is: `↑ (%opt{out_of_view_selection_above_count}) | ↓ (%opt{out_of_view_selection_below_count})`.
- `out_of_view_status_line`: Status line.  Read-only.
- `out_of_view_selection_above_count`: Number of selections above the window.  Read-only.
- `out_of_view_selection_below_count`: Number of selections below the window.  Read-only.

[Kakoune]: https://kakoune.org
