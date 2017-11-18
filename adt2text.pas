unit AdT2text;
{$S-,Q-,R-,V-,B-,X+}
{$PACKRECORDS 1}
interface

const
{__AT2VER__}at2ver  = '2.3.56';
{__AT2DAT__}at2date = '07-01-2017';
{__AT2LNK__}at2link = '1:03pm';

const
  _ADT2_TITLE_STRING_ = '/�DLiB TR/�CK3R ][';
{$IFDEF GO32V2}
  _PLATFORM_STR_ = 'DOS';
{$ELSE}
  _PLATFORM_STR_ = 'SDL';
{$ENDIF}

const
{$IFDEF GO32V2}
  HELP_LINES = 1129;
{$ELSE}
  HELP_LINES = 1157;
{$ENDIF}

{$IFDEF GO32V2}

const
  ascii_line_01 = '           �-�������������������������������--��               ��-�';
  ascii_line_02 = '           �             ~�~`�`�         ~�~`�`� ~���������~`�`�  ~������~`�`�    �';
  ascii_line_03 = '           �             ~�~`�`�         ~�~`�`�     ~�~`�`�     ~�~`�`�    ~�~`�`�   �';
  ascii_line_04 = '           �        ~�~`�`�  ~�~`�`�         ~�~`�`�     ~�~`�`�    ~�~`�`�      ~�~`�`�  �';
  ascii_line_05 = '           �       ~�~`�`�   ~�~`�`�         ~�~`�`�     ~�~`�`�     ~�~`�`�     ~�~`�`�  �';
  ascii_line_06 = '                  ~�~`�`�    ~�~`�`�   ~�������~`�`�     ~�~`�`�           ~��~`�`�   �';
  ascii_line_07 = '                 ~�~`�`�  ~����~`�`�  ~�~`�`�    ~�~`�`�     ~�~`�`�          ~�~`�`�     �';
  ascii_line_08 = '                ~�~`�`�      ~�~`�`� ~�~`�`�     ~�~`�`�     ~�~`�`�        ~�~`�`�       �';
  ascii_line_09 = '               ~�~`�`�       ~�~`�`� ~�~`�`�     ~�~`�`�     ~�~`�`�      ~�~`�`�         �';
  ascii_line_10 = '           �  ~�~`�`�        ~�~`�`� ~�~`�`�     ~�~`�`�     ~�~`�`�     ~�~`�`�     ~�~`�`�  �';
  ascii_line_11 = '           �             ~�~`�`�  ~��������~`�`�     ~�~`�`�    ~����������~`�`�  �';
  ascii_line_12 = '           �-�����������������--��    ��-�����������-���  ��-����-�';
  ascii_line_13 = '                    .:: ~THE ULTiMATE FM-TRACKiNG TOOL~ ::.          ';
  ascii_line_14 = '           �-�--�� ��-�����������������--��  ��-�����������������-�';
  ascii_line_15 = '           � `code:`                               ~���       ��~     �';
  ascii_line_16 = '           � ~subz3ro/Altair~                 ~/�DLiB�R/�CK3R �� G3~  �';
  ascii_line_17 = '           � `additional ideas:`               ~�       �     ��~      ';
  ascii_line_18 = '           � ~Malfunction/Altair~                        ~'+at2ver+'~      ';
  ascii_line_19 = '           � ~Diode Millimpere~                                     �';
  ascii_line_20 = '           � `special thanks:`                                      �';
  ascii_line_21 = '           � ~encore~               HOMEPAGE   www.adlibtracker.net �';
  ascii_line_22 = '           � ~Maan M. Hamze~        EMAiL  subz3ro.altair@gmail.com �';
  ascii_line_23 = '           �-����������--��    ��-�������������������������������-�';

procedure C3WriteLn(str: String; atr1,atr2,atr3: Byte);

{$ELSE}

const
  ascii_line_01 = '�-�������������������������������--��               ��-�';
  ascii_line_02 = '�             ~�~`�`�         ~�~`�`� ~���������~`�`�  ~������~`�`�    �';
  ascii_line_03 = '�             ~�~`�`�         ~�~`�`�     ~�~`�`�     ~�~`�`�    ~�~`�`�   �';
  ascii_line_04 = '�        ~�~`�`�  ~�~`�`�         ~�~`�`�     ~�~`�`�    ~�~`�`�      ~�~`�`�  �';
  ascii_line_05 = '�       ~�~`�`�   ~�~`�`�         ~�~`�`�     ~�~`�`�     ~�~`�`�     ~�~`�`�  �';
  ascii_line_06 = '       ~�~`�`�    ~�~`�`�   ~�������~`�`�     ~�~`�`�           ~��~`�`�   �';
  ascii_line_07 = '      ~�~`�`�  ~����~`�`�  ~�~`�`�    ~�~`�`�     ~�~`�`�          ~�~`�`�     �';
  ascii_line_08 = '     ~�~`�`�      ~�~`�`� ~�~`�`�     ~�~`�`�     ~�~`�`�        ~�~`�`�       �';
  ascii_line_09 = '    ~�~`�`�       ~�~`�`� ~�~`�`�     ~�~`�`�     ~�~`�`�      ~�~`�`�         �';
  ascii_line_10 = '�  ~�~`�`�        ~�~`�`� ~�~`�`�     ~�~`�`�     ~�~`�`�     ~�~`�`�     ~�~`�`�  �';
  ascii_line_11 = '�             ~�~`�`�  ~��������~`�`�     ~�~`�`�    ~����������~`�`�  �';
  ascii_line_12 = '�-�����������������--��    ��-�����������-���  ��-����-�';
  ascii_line_13 = '         .:: ~THE ULTiMATE FM-TRACKiNG TOOL~ ::.          ';
  ascii_line_14 = '�-�--�� ��-�����������������--��  ��-�����������������-�';
  ascii_line_15 = '� `code:`                               ~���       ��~     �';
  ascii_line_16 = '� ~subz3ro/Altair~                 ~/�DLiB�R/�CK3R �� SDL~ �';
  ascii_line_17 = '� `additional ideas:`               ~�       �     ��~      ';
  ascii_line_18 = '� ~Malfunction/Altair~                        ~'+at2ver+'~      ';
  ascii_line_19 = '� ~Diode Milliampere~';
  ascii_line_20 = '� `special thanks:`                                      �';
  ascii_line_21 = '� ~Dmitry Smagin~                                        �';
  ascii_line_22 = '� ~Windfisch~            HOMEPAGE   www.adlibtracker.net �';
  ascii_line_23 = '� ~insane/Altair~        EMAiL  subz3ro.altair@gmail.com �';
  ascii_line_24 = '�-����������--��    ��-�������������������������������-�';

procedure C3WriteLn(posX,PosY: Byte; str: String; atr1,atr2,atr3: Byte);

{$ENDIF}

const
  help_data: array[1..HELP_LINES] of String[128] = (
    '@topic:general',
    '���������������������������',
    ' � `GENERAL KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~F1~                       Help',
    '~F2 (^S)~                  Save file',
    '~F3 (^L)~                  Load file',
    '~F4 (^A)~                  Toggle Nuke''m dialog',
    '~F5~                       Play',
    '~F6~                       Pause',
    '~F7~                       Stop',
    '~F8~                       Play song from current pattern or order',
    '~F9~                       Play current pattern or order only',
    '~[Ctrl] F8~                @F8 from current line � ',
    '~[Ctrl] F9~                @F9 from current line � (Pattern Editor)',
    '~[Alt] F6~                 Single-play pattern   � (~Shift~ toggles trace)',
    '~[Alt] F5~                 @F5 �',
    '@input:alt_f8',
    '~[Alt] F9~                 @F9 �',
    '~[Shift] F2~               Quick Save',
    '~[Shift] F3~               Quick Load',
    '@input:shift_f5',
    '~[Shift] F6~               Toggle Debug mode from position at cursor',
    '@input:shift_f8',
    '@input:shift_f9',
    '~[Shift] Space~            Toggle MidiBoard mode ON/OFF',
    '~^Space~                   Toggle Note Recorder mode ON/OFF',
    '~[Ctrl] Home,End~          Skip to previous/next pattern while Tracing',
    '~+,-~                      Same as above; play pattern from start',
    '',
    '@topic:note_recorder',
    '�����������������������������������������������������������������������Ŀ',
    '� `WHEN iN NOTE RECORDER MODE`                                            �',
    '�����������������������������������������������������������������������Ĵ',
    '� ~[Ctrl] ,'#26'~       Select group of tracks for recording                 �',
    '� ~[Alt] Q~          Quick reset last selected group of tracks            �',
    '� ~Enter~            Start recording from current position ~(*)~            �',
    '� ~Space~            `Toggle` using custom instrument for all tracks �      �@@spec_attr:01@@',
    '� ~[Alt] Space~      `Toggle` using present instruments in tracks    � ref. �@@spec_attr:02@@',
    '� ~MBoard keys~      Write notes to corresponding tracks           � ~(*)~  �',
    '� ~F8,F9~            Toggle pattern repeat OFF/ON                  �      �',
    '� ~Backspace~        Clear note/instrument sequence in tracks             �',
    '� ~^Backspace~       Clear complete note/instrument columns               �',
    '� ~,~              Rewind/Fast-Forward while recording                  �',
    '� ~[Shift] ,~      Increase/Decrease row correction for writing notes   �',
    '� ~[Shift] F6~       Continue in Debug mode from position at cursor       �',
    '� ~F7~               Stop recording and reset starting position;          �',
    '�                  current group of tracks can be modified              �',
    '� ~[Alt] 1..9,0~     Toggle track channel ON/OFF (~Shift~ toggles 1`X`)       �',
    '� ~[Alt] R~          Reset flags on all tracks                            �',
    '� ~*~                Reverse ON/OFF on all tracks                         �',
    '�����������������������������������������������������������������������Ĵ',
    '� In case you need non-continuos track selection, you can choose        �',
    '� from already selected group a subset of tracks where notes will be    �',
    '� written by manipulating track ON/OFF flags.                           �',
    '�������������������������������������������������������������������������',
    '',
    '�������������������������������������������������������������������Ŀ',
    '� `iF SONG iS PLAYED WiTH TRACE, iT CAN BE REMOVED WHiLE...`          �',
    '�������������������������������������������������������������������Ĵ',
    '� ~Enter~        Playback is paused and cursor stays on position      �',
    '� ~Esc~          Cursor jumps to last position and playback continues �',
    '� ~[Shift] Esc~  Cursor stays on position and playback continues      �',
    '���������������������������������������������������������������������',
    '',
    '~^Enter~                   Play next pattern according to order',
    '~[Ctrl]  ()~             Rewind current pattern (with Trace)',
    '~[Ctrl] '#26' ()~             Fast-Forward (with Trace)',
    '~[Ctrl][Alt] <hold down>~  Temporarily show Debug Info window',
    '~^B~                       Toggle Message Board window',
    '~^D~                       Toggle Debug Info window',
    '~^Q~                       Toggle Instrument Macro Editor window',
    '~^G~                       Toggle Arpeggio/Vibrato Macro Editor window',
    '~^M~                       Toggle Macro Browser window',
    '~^F~                       Toggle Song Variables window',
    '~^H~                       Toggle Replace window',
    '~^I~                       Toggle Instrument Control panel',
    '~^E~                       Toggle Instrument Editor window',
    '~^O~                       Toggle Octave Control panel',
    '~^P~                       Toggle Pattern List window',
    '~^R~                       Toggle Remap Instrument window',
    '~^T~                       Toggle Transpose window',
    '~^X~                       Toggle Rearrange Tracks window',
    '~^1..^8~                   Quick-set octave',
    '~[Alt]{Shift} +,- {,}~   Adjust volume level of sound output',
    '~[Alt] C~                  Copy object to clipboard (with selection)',
    '~[Alt] P~                  Paste object from clipboard',
    '~[Alt] M~                  Toggle marking lines ON/OFF',
    '~[Alt] L~                  Toggle Line Marking Setup window',
    '~[Alt] 1..9,0~             Toggle track channel ON/OFF (~Shift~ toggles 1`X`)',
    '~[Alt] S~                  Set all OFF except current track (solo)',
    '~[Alt] R~                  Reset flags on all tracks',
    '~*~                        Reverse ON/OFF on all tracks',
    '~F10~                      Quit program',
    '~F11~                      Toggle typing mode in Pattern Editor (`AT`'#26'`FT`'#26'`ST`)',
    '~F12~                      Toggle `line feed` in Pattern Editor',
    '~[Shift] F12~              Toggle `jump to marked line` in Pattern Editor',

{$IFDEF GO32V2}

    '~[Ctrl][Tab] [...] (*)~    Scroll screen content (if necessary)',
    '',
    '~(*) ,,,'#26',PgUp,PgDown,Home,End~',

{$ELSE}

    '~[Ctrl][Tab] [...] (*)~    Scroll Volume Analyzer section (if necessary)',
    '',
    '~(*) ,,PgUp,PgDown~',
    '',
    '@topic:wav_recorder',
    '��������������������������������',
    ' � `WAV RECORDER KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '',
    '~[Alt|Ctrl]{Shift} F11~    Toggle WAV recording ON',
    '~[Alt|Ctrl]{Shift} F12~    Toggle WAV recording OFF',
    '',
    '������������������������������������������������������Ŀ',
    '� `FUNCTiONALiTY OF ALTERNATiVE KEYS`                    �',
    '������������������������������������������������������Ĵ',
    '� ~Alt~    Toggle normal recording mode                  �',
    '� ~Ctrl~   Toggle ''per track'' recording mode             �',
    '� ~Shift~  Toggle Fade in / Fade out sound processing    �',
    '������������������������������������������������������Ĵ',
    '� POSSiBLE COMBiNATiONS: Alt,Ctrl,Alt+Shift,Ctrl+Shift �',
    '��������������������������������������������������������',
    '',
    'If ''per track'' recording mode is activated and song playback is stopped,',
    'you can exclude/include corresponding tracks from/to being recorded',
    'with ordinary track selection procedure:',
    '',
    '~[Alt] 1..9,0~             Toggle track channel ON/OFF (~Shift~ toggles 1`X`)',
    '~[Alt] S~                  Set all OFF except current track (solo)',
    '~[Alt] R~                  Reset flags on all tracks',

{$ENDIF}

    '',
    '@topic:pattern_order',
    '���������������������������������',
    ' � `PATTERN ORDER KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,,'#26'~                  Cursor navigation',
    '~PgUp,PgDn~                Move up/down 32 patterns',
    '~Home,End~                 Move to the top/end of pattern order',
    '~Tab,[Shift] Tab~          Move to next/previous entry',
    '~Insert~                   Insert entry',
    '~Delete~                   Delete entry',
    '~Backspace~                Clear entry',
    '~^Space~                   Enter skip mark',
    '~^C~                       Copy entry to clipboard',
    '~^V~                       Paste entry from clipboard',
    '~+,-~                      Adjust entry',
    '~^F2~                      Save module in tiny format',
    '~Enter~                    Switch to Pattern Editor',
    '',
    'ORDER ENTRiES: 0-7F',
    ' 80-FF = jump to pattern order 0-7F',
    '  syntax: order_number[hex](+80h); e.g. "9A" jumps to order 1A',
    '',
    '@topic:pattern_editor',
    '����������������������������������',
    ' � `PATTERN EDiTOR KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,,'#26'~                  Cursor navigation',
    '~PgUp,PgDn~                Move up/down 16 lines',
    '~Home,End~                 Move to the top/end of current pattern',
    '~Tab,[Shift] Tab~          Move to next/previous track',
    '~[Shift] PgDn,PgUp (+,-)~  Move to next/previous pattern',
    '~[Shift] Home,End~         Move fwd./bckwd. to the first/last pattern',
    '~^Home,^End~               Move to the end/top of previous/next pattern',
    '~Space~                    Advance to next row',
    '~^PgUp,^PgDn~              Transpose note or block halftone up/down',
    '~Backspace~                Remove note or clear attributes',
    '~Insert~                   Insert new line (within track only)',
    '~Delete~                   Delete line (within track only)',
    '~[Shift] Insert~           Insert new line',
    '~[Shift] Delete~           Delete line',
    '~[Shift] Enter~            Toggle fixed and regular note',
    '~^K~                       Insert Key-Off',
    '~^C~                       Copy object at cursor to clipboard',
    '~^V~                       Paste object from clipboard',
    '~[Alt][Shift] P~           Paste object from clipboard to more patterns',
    '~^Z~                       Undo last operation (if possible)',
    '~{Ctrl} "[","]"~           Change current instrument',
    '~[Alt] F2~                 Save current pattern to file',
    '~^F2~                      Save module in tiny format',
    '~[Shift] F3~               Quick load recent pattern data',
    '~Enter~                    Switch to Pattern Order',
    '',
    'NOTE SYSTEM: C,C#,D,D#,E,F,F#,G,G#,A,A#,B(H)',
    'VALiD NOTE ENTRiES: C,C-,C#,C1,C-1,C#1...',
    '',
    '@topic:block_operations',
    '������������������������������������������������������������������Ŀ',
    '� `BLOCK OPERATiONS iN PATTERN EDiTOR`                               �',
    '������������������������������������������������������������������Ĵ',
    '� Starting to mark a block: ~[Shift] ,,,'#26'~                        �',
    '� When at least one row in one track is marked, you can continue   �',
    '� marking also with ~PgUp,PgDn,Home,End~ (~Shift~ is still held down!) �',
    '� Quick mark: ~[Alt] Q~ (1x-2x-3x) track � pattern � discard       �',
    '� Toggle last marked block: ~[Alt] B~                                �',
    '������������������������������������������������������������������Ĵ',
    '� ~^B~  Blank block  (Insert blank block to pattern)                 �',
    '� ~^C~  Copy block   (Copy block to clipboard)                       �',
    '� ~^D~  Delete block (Remove block from pattern)                     �',
    '� ~^N~  Nuke block   (Clear block contents)                          �',
    '� ~^V~  Paste block  (Paste block from clipboard to pattern) ~(*)~     �',
    '� ~^X~  Cut block    (Combine both Copy and Delete operation)        �',
    '������������������������������������������������������������������Ĵ',
    '� `(*) PASTE BLOCK OPERATiON VARiANTS`                               �',
    '� ����������������������������������                               �',
    '� "Paste block" operation has three other functional variants      �',
    '� with different key shortcuts for activation:                     �',
    '� 1) ~[Alt] V~ toggles "Mix block" operation, when block data        �',
    '�    from clipboard is applied without overwriting existing data;  �',
    '� 2) ~[Shift] ^V~ toggles "Selective paste block" operation,         �',
    '�    when only block data from clipboard corresponding to current  �',
    '�    cursor position is being applied (i.e. note, instrument,      �',
    '�    1st effect or 2nd effect);                                    �',
    '� 3) ~[Alt][Shift] V~ toggles "Flipped paste block" operation,       �',
    '�    when block data from clipboard is applied vertically flipped. �',
    '�                                                                  �',
    '� `MANiPULATiON WiTH FX VOLUME iNFORMATiON`                          �',
    '� ���������������������������������������                          �',
    '� When there is block marked, which contains some effect           �',
    '� commands carrying volume information, you can increase/decrease  �',
    '� their values with ~+~/~-~ keys.                                      �',
    '� Effect commands are processed with following priority:           �',
    '�   1) Set instrument volume (~Cxx~),                                �',
    '�      Force instrument volume (~=xx~)                               �',
    '�   2) Set modulator volume (~9xx~)                                  �',
    '�   3) Set carrier volume (~Ixx~)                                    �',
    '�   4) Set global volume (~%xx~)                                     �',
    '� If effect command with higher priority has been processed,       �',
    '� all remaining effect commands with lower priority are skipped.   �',
    '��������������������������������������������������������������������',
    '',
    '@topic:pattern_list',
    '���������������������������������������',
    ' � `PATTERN LiST WiNDOW KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,~                      Cursor navigation',
    '~PgUp,PgDn~                Move up/down 20 patterns',
    '~Home,End~                 Move to the top/end of pattern list',
    '~Space~                    Mark/Unmark pattern',
    '~^Space~                   Unmark all marked patterns',
    '~[Shift] ^Space~           Reverse marks on all patterns',
    '~[Alt] C (^C)~             Copy pattern to clipboard',
    '~[Alt] P (^V)~             Paste pattern from clipboard',
    '~[Shift] ^V~               Paste pattern data from clipboard',
    '~[Alt] V~                  Paste pattern name(s) from clipboard',
    '~^N~                       Nuke current pattern',
    '~[Shift] ^N~               Nuke all marked patterns',
    '~^W~                       Swap marked patterns',
    '~[Shift] ^W~               Swap marked patterns w/o names',
    '~[Shift] Insert~           Insert new pattern',
    '~[Shift] Delete~           Delete current pattern',
    '~Enter~                    Rename pattern / Multiple paste',
    '~[Shift] F3~               Quick load recent pattern data',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:instrument_control',
    '��������������������������������������������',
    ' � `iNSTRUMENT CONTROL PANEL KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,~                      Cursor navigation',
    '~PgUp,PgDn~                Move up/down 16 instruments',
    '~Home,End~                 Move to the top/end of instrument list',
    '~Space~                    Mark/Unmark instrument',
    '~Enter~                    Rename instrument',
    '~^C~                       Copy instrument to clipboard',
    '~[Shift] ^C~               Copy instrument also with macro-definitions',
    '~^V~                       Paste instrument(s) from clipboard',
    '~[Shift] ^V~               Paste instrument data from clipboard',
    '~[Alt] V~                  Paste instrument name(s) from clipboard',
    '~^W~                       Swap marked instruments',
    '~[Shift] ^W~               Swap marked instruments w/o names',
    '~Tab~                      Toggle Instrument Editor window',
    '~[Shift] Tab~              Toggle Macro Editor window',
    '~[Shift] O~                Toggle operator mode  / ',
    '~[Shift] M,B,S,T,C,H~      Toggle `m`elodic and percussion (`B`D,`S`D,`T`T,T`C`,`H`H)',
    '~[Shift] F2~               Save instrument w/ fm-register macro to file',
    '~[Alt] F2~                 Save instrument bank to file',
    '~^F2~                      Save instrument bank w/ all macros to file',
    '~[Shift] F3~               Quick load recent instrument data',
    '~MBoard keys <hold down>~  Preview instrument',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:instrument_editor',
    '��������������������������������������������',
    ' � `iNSTRUMENT EDiTOR WiNDOW KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~[Alt] <section hotkey>~   Jump to section',
    '~Tab~                      Jump to next setting',
    '~[Shift] Tab~              Jump to previous setting',
    '~PgUp,PgDn (+,-)~          Adjust value',
    '~Space~                    Select item',
    '~^Space~ `(opt.)`            Toggle ADSR preview ON/OFF',
    '~[Ctrl] "[","]"~           Change current instrument',
    '~[Ctrl][Shift] "[","]"~    Change macro speed',
    '~[Alt]{Shift} 1..4,0~      Set operators for instrument preview ~(*)~',
    '~Enter~                    Toggle carrier/modulator/ slot settings',
    '~[Shift] O~                Toggle operator mode  / ',
    '~[Shift] M,B,S,T,C,H~      Toggle `m`elodic and percussion (`B`D,`S`D,`T`T,T`C`,`H`H)',
    '~[Shift] F2~               Save instrument w/ fm-register macro to file',
    '~[Shift] Enter~            Copy values from carrier/modulator slot',
    '~MBoard keys <hold down>~  Preview instrument',
    '~Esc~                      Return to Instrument Control panel',
    '',
    '~(*) [Alt] 1..4~           Set solo operator',
    '    ~[Alt][Shift] 1..4~    Toggle operator ON/OFF',
    '    ~[Alt] 0~              Reset',
    '',
    '@topic:macro_editor',
    '��������������������������������������������������',
    ' � `iNSTRUMENT MACRO EDiTOR WiNDOW KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~PgUp,PgDown~              Move up/down 16 lines',
    '~Tab (Enter)~              Jump to next field in order',
    '~[Shift] Tab~              Jump to previous field in order',
    '~[Shift] ,~              Synchronous navigation within tables',
    '~[Shift] Home,End~         Move to the start/end of current line in table',
    '~[Ctrl] ,'#26'~               Switch between macro tables',
    '~[Ctrl][Shift] ,'#26'~        Navigate to start/end of macro table',
    '~^PgUp,^PgDown~            Change current arpeggio/vibrato table',
    '~[Ctrl] "[","]"~           Change current instrument',
    '~[Ctrl][Shift] "[","]"~    Change macro speed',
    '~[Alt]{Shift} 1..4,0~      Set operators for instrument preview ~(*)~',
    '~[Alt] ^C~                 Copy values from carrier column',
    '~[Alt] ^M~                 Copy values from modulator column',
    '~^C~                       Copy line in table (whole table respectively)',
    '~[Shift] ^C~               Copy column in table',
    '~^V~                       Paste object from clipboard',
    '~^Enter~                   Paste data from instrument registers',
    '~[Shift] Enter~            Paste data to instrument registers',
    '~[Shift] ^Enter~           Paste data from instrument registers w/ selection',
    '~Backspace~                Clear current item in table',
    '~[Shift] Backspace~        Clear line in table',
    '~+,-~                      Adjust value at cursor / current item in table',
    '~^Home,^End~               Quick-adjust table length',
    '~[Shift] ^Home,^End~       Quick-adjust loop begin position',
    '~[Shift] ^PgUp,^PgDown~    Quick-adjust loop length',
    '~Insert~                   Insert new line in table',
    '~Delete~                   Delete line in table',
    '~^E~                       Toggle envelope restart ON/OFF     �',
    '~^N~                       Toggle note retrigger ON/OFF       �',
    '~^Z~                       Toggle ZERO frequency ON/OFF       �',
    '~[Alt] ^E,^N,^Z~           Reset all alike flags in table     � FM-register',
    '~^Backspace~               Toggle corresponding column ON/OFF � table',
    '~[Alt] S~                  Set all OFF except current column  �',
    '~[Alt] R~                  Reset flags on all columns         �',
    '~*~                        Reverse ON/OFF on all columns      �',
    '~\~                        Toggle current item (switch types only)',
    '~Space~                    Toggle macro-preview mode',
    '~^Space~                   Toggle Key-Off loop within macro-preview mode',
    '~^F2~                      Save instrument bank w/ all macros to file',
    '~Esc~                      Leave Instrument Macro Editor window',
    '',
    '~(*) [Alt] 1..4~           Set solo operator',
    '    ~[Alt][Shift] 1..4~    Toggle operator ON/OFF',
    '    ~[Alt] 0~              Reset',
    '',
    '@topic:macro_editor_(av)',
    '��������������������������������������������������������',
    ' � `APREGGiO/ViBRATO MACRO EDiTOR WiNDOW KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~PgUp,PgDown~              Move up/down 16 lines',
    '~Tab (Enter)~              Jump to next field in order',
    '~[Shift] Tab~              Jump to previous field in order',
    '~[Shift] ,~              Synchronous navigation within tables',
    '~[Ctrl] ,'#26'~               Switch between macro tables',
    '~[Ctrl][Shift] ,'#26'~        Navigate to start/end of macro table',
    '~^PgUp,^PgDown~            Change current arpeggio/vibrato table',
    '~[Ctrl] "[","]"~           Change current instrument',
    '~[Ctrl][Shift] "[","]"~    Change macro speed',
    '~[Alt]{Shift} 1..4,0~      Set operators for instrument preview ~(*)~',
    '~^C~                       Copy line in table (whole table respectively)',
    '~[Shift] ^C~               Copy column in table',
    '~^V~                       Paste object from clipboard',
    '~Backspace~                Clear current item in table',
    '~[Shift] Backspace~        Clear line in table',
    '~+,-~                      Adjust value at cursor / current item in table',
    '~^Home,^End~               Quick-adjust table length',
    '~[Shift] ^Home,^End~       Quick-adjust loop begin position',
    '~[Shift] ^PgUp,^PgDown~    Quick-adjust loop length',
    '~Space~                    Toggle macro-preview mode',
    '~^Space~                   Toggle Key-Off loop within macro-preview mode',
    '~[Shift] Esc~              Apply table indexes to current instrument',
    '~Esc~                      Leave Arpeggio/Vibrato Macro Editor window',
    '',
    '~(*) [Alt] 1..4~           Set solo operator',
    '    ~[Alt][Shift] 1..4~    Toggle operator ON/OFF',
    '    ~[Alt] 0~              Reset',
    '',
    '@topic:macro_browser',
    '��������������������������������������������',
    ' � `iNSTRUMENT MACRO BROWSER KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~[Shift] ,~              Move up/down in macro table',
    '~[Shift] ,'#26'~              Move left/right in macro table',
    '~[Shift] PgUp,PgDown~      Move page up/down in macro table',
    '~[Shift] Home,End~         Move to the start/end of macro table',
    '~[Ctrl] Home,End~          Move to the start/end of line in macro table',
    '~Enter~                    Load selected macro data',
    '~^Enter~ `(opt.)`            Load all macro data from bank',
    '~[Ctrl][Shift] "[","]"~    Change macro speed',
    '~MBoard keys <hold down>~  Preview instrument with selected macro data',
    '~Tab~ `(opt.)`               Switch to Arpeggio/Vibrato Macro Browser window',
    '~Esc~                      Leave Instrument Macro Browser window',
    '',
    '@topic:macro_browser_av',
    '��������������������������������������������������',
    ' � `ARPEGGiO/ViBRATO MACRO BROWSER KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,PgUp,PgDown,~',
    '~Home,End~                 Cursor navigation',
    '~[Shift] ,'#26'~              Move left/right in arpeggio table      �',
    '~[Shift] PgUp,PgDown~      Move page left/right in arpeggio table �',
    '~[Ctrl] ,'#26'~               Move left/right in vibrato table       � refer to',
    '~^PgUp,^PgDown~            Move page left/right in vibrato table  � ~(*)~',
    '~[Shift]{Alt} Space~       Toggle arpeggio table selection ~(**)~   �',
    '~[Ctrl] {Alt} Space~       Toggle vibrato table selection  ~(**)~   �',
    '~[Shift] Home,End~         Navigate to start/end of arpeggio table',
    '~^Home,^End~               Navigate to start/end of vibrato table',
    '~[Ctrl] "[","]"~           Change current instrument',
    '~[Ctrl][Shift] "[","]"~    Change macro speed',
    '~MBoard keys <hold down>~  Preview instrument with selected macro data',
    '~Enter~                    Load selected macro data',
    '~^Enter~ `(opt.)`            Load all macro data from bank',
    '~Esc~                      Leave Arpeggio/Vibrato Macro Browser window',
    '',
    '~(*)~  Key combination with ~Ctrl+Shift~ applies action to both tables',
    '~(**)~ ~Alt~ key invokes no arpeggio resp. vibrato table (index value reset)',
    '',
    '@topic:debug_info',
    '�������������������������������������',
    ' � `DEBUG iNFO WiNDOW KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,PgUp,PgDown,~',
    '~Home,End~                 Change current track',
    '~Tab~                      Toggle details',
    '~Backspace~                Toggle pattern repeat',
    '~Space~                    Enter Debug mode / Proceed step',
    '~^Space~                   Exit Debug mode',
    '~[Ctrl] Home,End~          Skip to previous/next pattern',
    '~+,-~                      Same as above; play pattern from start',
    '~^Enter~                   Play next pattern according to order',
    '~[Ctrl] ,'#26'~               Rewind/Fast-Forward current pattern',
    '~[Alt] 1..9,0~             Toggle track channel ON/OFF (~Shift~ toggles 1`X`)',
    '~[Alt] S~                  Set all OFF except current track (solo)',
    '~[Alt] R~                  Reset flags on all tracks',
    '~*~                        Reverse ON/OFF on all tracks',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:remap_dialog',
    '�������������������������������������������',
    ' � `REMAP iNSTRUMENT WiNDOW KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~PgUp,PgDown~              Move up/down 16 instruments',
    '~Tab~                      Jump to next selection',
    '~[Shift] Tab~              Jump to previous selection',
    '~MBoard keys <hold down>~  Preview instrument',
    '~Enter~                    Remap',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:rearrange_dialog',
    '�������������������������������������������',
    ' � `REARRANGE TRACKS WiNDOW KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~Tab~                      Jump to next selection',
    '~[Shift] Tab~              Jump to previous selection',
    '~^PgUp,^PgDown~            Shift track at cursor up/down in the track list',
    '~[Shift] ^PgUp,^PgDown~    Rotate track list from cursor upside/downside',
    '~Enter~                    Rearrange',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:replace_dialog',
    '����������������������������������',
    ' � `REPLACE WiNDOW KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~Tab~                      Jump to next selection',
    '~[Shift] Tab~              Jump to previous selection',
    '~^K~                       Insert Key-Off in note column',
    '~^N~                       Mark "new" field to clear found item',
    '~^W~                       Swap "to find" and "replace" mask content',
    '~Delete,Backspace~         Delete current/previous character',
    '~^Backspace~               Delete "to find" or "replace" mask content',
    '~[Shift] ^Backspace~       Delete content of both masks',
    '~Enter~                    Replace',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:song_variables',
    '�����������������������������������������',
    ' � `SONG VARiABLES WiNDOW KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,,'#26'~                  Cursor navigation',
    '~Tab (Enter)~              Jump to next variable field',
    '~[Shift] Tab~              Jump to previous variable field',
    '~Space~                    Select item',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:file_browser',
    '��������������������������������',
    ' � `FiLE BROWSER KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,,'#26'~',
        '~PgUp,PgDown,Home,End~     Cursor navigation',
{$IFDEF UNIX}
    '~/~                        Navigate to root directory',
{$ELSE}
    '~\~                        Navigate to drive root',
{$ENDIF}
    '~Backspace~                Navigate to parent directory',
    '~[Shift] Backspace~        Navigate to program home directory',
    '~MBoard keys <hold down>~  Preview instrument (instrument files only)',
    '~Enter~                    Choose file under cursor / read instrument bank',
    '~Esc~                      Leave without choosing file',
    '',
    '@topic:message_board',
    '����������������������������������������',
    ' � `MESSAGE BOARD WiNDOW KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,,,'#26',^PgUp,^PgDown,~',
    '~Home,End,^Home,^End~      Cursor navigation',
    '~PgUp,PgDown~              Move backwards/forwards over text',
    '~[Ctrl] ,'#26'~               Move word left/right',
    '~Backspace,Delete~         Delete character left/right',
    '~^Backspace,^T~            Delete word left/right',
    '~^K~                       Delete characters to end',
    '~^Y~                       Delete current line',
    '~Tab~                      Indent current line',
    '~^Space~                   Insert row for text at cursor',
    '~[Shift] ^Backspace~       Delete row for text at cursor',
    '~Insert~                   Toggle input and overwrite mode',
    '~Enter~                    Wrap line of text',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:input_field',
    '�������������������������������',
    ' � `iNPUT FiELD KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '~,'#26',Home,End~             Cursor navigation',
    '~[Ctrl] ,'#26'~               Move word left/right',
    '~Backspace,Delete~         Delete character left/right',
    '~^Backspace,^T~            Delete word left/right',
    '~^K~                       Delete characters to end',
    '~^Y~                       Delete string',
    '~Insert~                   Toggle input and overwrite mode',
    '',
    '@topic:midiboard',
    '�����������������������������',
    ' � `MiDiBOARD KEY REFERENCE` �',
    '��������������������������������������������������������������������������',
    '',
    '     C#  D#      F#  G#  A#      C#  D#      F#  G#  A#      C#  D#',
    '',
    '  ���  ��  ������  ��  ��  ������  ��  ������  ��  ��  ������  ��  ���',
    '  ���  ��  ������  ��  ��  ������  ��  ������  ��  ��  ������  ��  ���',
    '  ��� ~S~�� ~D~������ ~G~�� ~H~�� ~J~������ ~2~�� ~3~������ ~5~�� ~6~�� ~7~������ ~9~�� ~0~���',
    '  ���  ��  ������  ��  ��  ������  ��  ������  ��  ��  ������  ��  ���',
    '  ���  ��  ������  ��  ��  ������  ��  ������  ��  ��  ������  ��  ���',
    '  ��������������������������������������������������������������������',
    '  ��������������������������������������������������������������������',
    '  ��~Z~���~X~���~C~���~V~���~B~���~N~���~M~���~Q~���~W~���~E~���~R~���~T~���~Y~���~U~���~I~���~O~���~P~�',
    '  ��������������������������������������������������������������������',
    '  ��������������������������������������������������������������������',
    '',
    '    C   D   E   F   G   A   B   C   D   E   F   G   A   B   C   D   E',
    '',
    '�����������������������������������������������������������������������Ŀ',
    '� `WHiLE TRACKER iS iN MiDiBOARD MODE`                                    �',
    '�����������������������������������������������������������������������Ĵ',
    '� ~MBoard key~ copies note in note field, plays it, and advances song     �',
    '� to next row. If used with ~Left-Shift~ key and line marking toggled ON, �',
    '� it advances song to next highlighted row.                             �',
    '� If used with ~Right-Shift~ key, it makes a fixed note.                  �',
    '� ~Space~ plays row and advances song by one row.                         �',
    '� ~@@` inserts Key-Off, releases playing note and advances to next row.    �',
    '�������������������������������������������������������������������������',
    '',
    '@topic:instrument_registers',
    '��������������������������',
    ' � `iNSTRUMENT REGiSTERS` �',
    '��������������������������������������������������������������������������',
    '~Attack rate~',
    'Indicates how fast the sound volume goes to maximum.',
    '1=slow, 15=fast. 0 means no attack phase.',
    '',
    '~Decay rate~',
    'Indicates how fast the sound goes from maximum level to sustain level.',
    '1=slow, 15=fast. 0 means no decay phase.',
    '',
    '~Sustain level~',
    'Indicates the sustain level.',
    '1=loudest, 15=softest. 0 means no sustain phase.',
    '',
    '~Release rate~',
    'Indicates how fast the sound goes from sustain level to zero level.',
    '1=slow, 15=fast. 0 means no release phase.',
    '',
    '~Output level~',
    'Ranges from 0 to 63, indicates the attenuation according to the',
    'envelope generator output. In Additive synthesis, varying',
    'the output level of any operator varies the volume of its corresponding',
    'channel. In FM synthesis, varying the output level of carrier varies',
    'the volume of its corresponding channel, but varying the output of',
    'the modulator will change the frequency spectrum produced by the carrier.',
    '',
    '~Waveform select~',
    'Specifies the output waveform type.',
    'The first is closest to pure sine wave, the last is most distorted.',
    '',
    '`[0] SiNE`',
    '',
    '     ',
    '     �',
    '     �     __                      __',
    '     �   /    \                  /    \',
    '     � /        \              /        \',
    '    �����������������������������������������������������',
    '     �             \        /              \        /',
    '     �               \    /                  \    /',
    '     �                 ��                      ��',
    '     �          1/2          1          3/2          2  pi',
    '',
    '',
    '`[1] HALF-SiNE`',
    '',
    '     ',
    '     �',
    '     �     __                      __',
    '     �   /    \                  /    \',
    '     � /        \              /        \',
    '    �����������������������������������������������������',
    '     �',
    '     �          1/2          1          3/2          2  pi',
    '     �',
    '     �',
    '',
    '',
    '`[2] ABS-SiNE`',
    '',
    '     ',
    '     �',
    '     �     __         __           __         __',
    '     �   /    \     /    \       /    \     /    \',
    '     � /        \ /        \   /        \ /        \',
    '    �����������������������������������������������������',
    '     �',
    '     �          1/2          1          3/2          2  pi',
    '     �',
    '     �',
    '',
    '',
    '`[3] PULSE-SiNE`',
    '',
    '     ',
    '     �',
    '     �    _           _           _           _',
    '     �  /  |        /  |        /  |        /  |',
    '     �/    |      /    |      /    |      /    |',
    '    �����������������������������������������������������',
    '     �',
    '     �    1/4    1/2   3/4   1    5/4   3/2   7/4    2  pi',
    '     �',
    '     �',
    '',
    '',
    '`[4] SiNE, EVEN PERiODS ONLY (EPO)`',
    '',
    '     ',
    '     �',
    '     �',
    '     � /�\                     /�\',
    '     �/   \                   /   \',
    '    �����������������������������������������������������',
    '     �      \   /                   \   /',
    '     �       \_/                     \_/',
    '     �',
    '     �    1/4   1/2   3/4    1    5/4   3/2   7/4    2  pi',
    '',
    '',
    '`[5] ABS-SiNE, EVEN PERiODS ONLY (EPO)`',
    '',
    '     ',
    '     �',
    '     �',
    '     � /�\   /�\               /�\   /�\',
    '     �/   \ /   \             /   \ /   \',
    '    �����������������������������������������������������',
    '     �',
    '     �    1/4   1/2   3/4    1    5/4   3/2   7/4    2  pi',
    '     �',
    '     �',
    '',
    '',
    '`[6] SQUARE`',
    '',
    '     ',
    '     �',
    '     �',
    '     �-----------�           �-----------�',
    '     �           �           �           �',
    '    �����������������������������������������������������',
    '     �           �           �           �           �',
    '     �           �-----------�           �-----------�',
    '     �',
    '     �          1/2          1          3/2          2  pi',
    '',
    '',
    '`[7] DERiVED SQUARE`',
    '',
    '     ',
    '     �',
    '     �',
    '     �\__                    �\__',
    '     �   ������__            �   ������__',
    '    �����������������������������������������������������',
    '     �            �����___   �            ����____   �',
    '     �                    ��\�                    ��\�',
    '     �',
    '     �          1/2          1          3/2          2  pi',
    '',
    '',
    '~Key scaling level (KSL)~',
    'When set, makes the sound softer at higher frequencies.',
    'With musical instruments, volume decreases as pitch increases.',
    'Level key scaling values are used to simulate this effect.',
    'If any (not zero), the diminishing factor can be 1.5 dB/octave,',
    '3.0 dB/octave, or 6.0 dB/octave.',
    '',
    '~Panning~',
    'Gives you ability of controlling output, going to left or right channel,',
    'standing in the middle respectively.',
    'The parameter corresponds either with carrier and modulator, therefore',
    'it is listed only once (within the carrier slot).',
    '',
    '~Fine-tune~',
    'This is not a hardware parameter.',
    'Ranges from -127 to 127, it indicates the number of frequency units',
    'shifted up or down for any note playing with the corresponding instrument.',
    'The parameter corresponds either with carrier and modulator, therefore',
    'it is listed only once (within the carrier slot).',
    '',
    '~Feedback strength~',
    'Ranges from 0 to 7, it indicates the modulation depth',
    'for the modulator slot FM feedback.',
    '',
    '������������������������������������������������������������Ŀ',
    '� `FEEDBACK`   � `[0]` � `[1]` � `[2]` � `[3]` � `[4]` � `[5]` � `[6]` � `[7]` �',
    '������������������������������������������������������������Ĵ',
    '� `MODULATiON` �  0  �1/16 � 1/8 � 1/4 � 1/2 �  1  �  2  �  4  �',
    '��������������������������������������������������������������',
    '',
    'The parameter corresponds either with carrier and modulator, therefore',
    'it is listed only once (within the carrier slot).',
    '',
    '~Connection type~',
    'Frequency modulation means that the modulator slot modulates the carrier.',
    'Additive synthesis means that both slots produce sound on their own.',
    '',
    '`[FM] FREQUENCY MODULATiON`',
    '',
    '',
    '        ������������Ŀ',
    '        �            �',
    '            ����ͻ  �         ����ͻ',
    ' P1 ��(+)��� MO ������(+)��� CA ��� OUT',
    '             ����ͼ           ����ͼ',
    '                          �',
    '',
    '                          P2',
    '',
    '`[ADDiTiVE SYNTHESiS] AM`',
    '',
    '',
    '        ������������Ŀ',
    '        �            �',
    '            ����ͻ  �',
    ' P1 ��(+)��� MO �������Ŀ',
    '             ����ͼ       �',
    '                          ',
    '                         (+)�� OUT',
    '                          ',
    '             ����ͻ       �',
    ' P2 ��������� CA ���������',
    '             ����ͼ',
    '',
    'The parameter corresponds either with carrier and modulator, therefore',
    'it is listed only once (within the carrier slot).',
    'This parameter is also very important when making 4-op instruments,',
    'because the combination of two instrument connections specifies',
    'the connection of the 4-op instrument as shown below:',
    '',
    '��������������������������������Ŀ',
    '� `SLOT`       � M1 � C1 � M2 � C2 �',
    '��������������������������������Ĵ',
    '� `OPERATOR`   � 1  � 2  � 3  � 4  �',
    '����������������������������������',
    '',
    '',
    '`[FM/FM]`',
    '',
    '        ������������Ŀ',
    '        �            �',
    '            ����ͻ  �         ����ͻ         ����ͻ         ����ͻ',
    ' P1 ��(+)��� M1 ������(+)��� C1 ���(+)��� M2 ���(+)��� C2 ��� OUT',
    '             ����ͼ           ����ͼ        ����ͼ        ����ͼ',
    '                          �              �              �',
    '',
    '                          P2             P3             P4',
    '',
    '`[FM/AM]` ~(*)~',
    '',
    '        ������������Ŀ',
    '        �            �',
    '            ����ͻ  �         ����ͻ',
    ' P1 ��(+)��� M1 ������(+)��� C1 ����Ŀ',
    '             ����ͼ           ����ͼ    �',
    '                          �              �',
    '                                         ',
    '                          P2            (+)�� OUT',
    '                                         ',
    '                                         �',
    '             ����ͻ            ����ͻ    �',
    ' P3 ��������� M2 ������(+)��� C2 ������',
    '             ����ͼ           ����ͼ',
    '                          �',
    '',
    '                          P4',
    '',
    '`[AM/FM]` ~(*)~',
    '',
    '        ������������Ŀ',
    '        �            �',
    '            ����ͻ  �',
    ' P1 ��(+)��� M1 �������������������������������������Ŀ',
    '             ����ͼ                                     �',
    '                                                        �',
    '                                                        �',
    '                                                        �',
    '             ����ͻ            ����ͻ         ����ͻ    ',
    ' P2 ��������� C1 ������(+)��� M2 ���(+)��� C2 ���(+)�� OUT',
    '             ����ͼ           ����ͼ        ����ͼ',
    '                          �              �',
    '',
    '                          P3             P4',
    '',
    '`[AM/AM]`',
    '',
    '        ������������Ŀ',
    '        �            �',
    '            ����ͻ  �',
    ' P1 ��(+)��� M1 ����������������������Ŀ',
    '             ����ͼ                      �',
    '                                         �',
    '                                         �',
    '                                         �',
    '             ����ͻ            ����ͻ    ',
    ' P2 ��������ĺ C1 ������(+)��� M2 ���(+)�� OUT',
    '             ����ͼ           ����ͼ    ',
    '                          �              �',
    '                                         �',
    '                          P3             �',
    '             ����ͻ                      �',
    ' P4 ��������� C2 ������������������������',
    '             ����ͼ',
    '',
    '',
    '~(*)~ `REMARK ABOUT  CONNECTiONS`',
    'Please note, that since order of  tracks in the tracker is � and �,',
    'these non-symmetrical instrument connections are reversed.',
    'The preview diagrams in the Instrument Editor window show actual order,',
    'but here this information is kept in conformity with the official',
    'Yamaha YMF262 data specification to prevent further confusion.',
    '',
    '',
    '~Tremolo (Amplitude modulation)~',
    'When set, turns tremolo (volume vibrato) ON for the corresponding slot.',
    'The repetition rate is 3.7�, the depth is optional (1dB/4.8dB).',
    '',
    '~Vibrato~',
    'When set, turns frequency vibrato ON for the corresponding slot.',
    'The repetition rate is 6.1�, the depth is optional (7%/14%).',
    '',
    '~Key scale rate (KSR)~',
    'When set, makes the sound shorter at higher frequencies.',
    'With normal musical instruments, the attack and decay rate becomes faster',
    'as the pitch increases. The key scale rate controls simulation of',
    'this effect. An offset (rof) is added to the individual attack, decay,',
    'and release rates depending on the following formula:',
    '',
    'actual_rate = (rate  4) + rof',
    '',
    'The "rof" values for corresponding "rate" value and KSR state are shown',
    'in the following table:',
    '',
    '������������������������������������������������������������������������Ŀ',
    '� `%rate%` � 0 � 1 � 2 � 3 � 4 � 5 � 6 � 7 � 8 � 9 � A � B � C � D � E � F �',
    '������������������������������������������������������������������������͵',
    '� `[OFF]`  � 0 � 0 � 0 � 0 � 1 � 1 � 1 � 1 � 2 � 2 � 2 � 2 � 3 � 3 � 3 � 3 �',
    '������������������������������������������������������������������������Ĵ',
    '� `[ON]`   � 0 � 1 � 2 � 3 � 4 � 5 � 6 � 7 � 8 � 9 � A � B � C � D � E � F �',
    '��������������������������������������������������������������������������',
    '',
    '~Sustain (Envelope generator type)~',
    'When set, the sustain level of the voice is maintained until released.',
    'When clear, the sound begins to decay immediately after hitting',
    'the sustain phase.',
    '',
    '`[OFF]`                /\  DR',
    '                   /    \',
    '                 /     ...\...SL',
    '           AR  /            \',
    '             /                \  RR',
    '           /                    \',
    '      _ _/                        \_ _ _',
    '         .',
    '         :',
    '         �����������������������������������������',
    '      ����     KEY ON',
    '',
    '',
    '`[ON]`                 /\  DR',
    '                   /    \      SL',
    '                 /        \ _ _ _ _ _',
    '           AR  /                      \',
    '             /                       :  \  RR',
    '           /                         :    \',
    '      _ _/                           :      \_ _ _',
    '         .                           :',
    '         :                           :',
    '         ���������������������������Ŀ  KEY OFF',
    '      ����     KEY ON                �������������',
    '',
    '',
    '~Frequency data multiplier~',
    'Sets the multiplier for the frequency data specified by block and',
    'F-number. This multiplier is applied to the FM carrier or modulation',
    'frequencies. The multiplication factor and corresonding harmonic types are',
    'shown in the following table:',
    '',
    '��������������������������������������������������Ŀ',
    '� `MULT.` �  ``  � `HARMONiC`                           �',
    '��������������������������������������������������͵',
    '�  `[0]`  � 0.5 � 1 octave below                     �',
    '�  `[1]`  �  1  � at the voice''s specified frequency �',
    '�  `[2]`  �  2  � 1 octave above                     �',
    '�  `[3]`  �  3  � 1 octave and a 5th above           �',
    '�  `[4]`  �  4  � 2 octaves above                    �',
    '�  `[5]`  �  5  � 2 octaves and a Major 3rd above    �',
    '�  `[6]`  �  6  � 2 octaves and a 5th above          �',
    '�  `[7]`  �  7  � 2 octaves and a Minor 7th above    �',
    '�  `[8]`  �  8  � 3 octaves above                    �',
    '�  `[9]`  �  9  � 3 octaves and a Major 2nd above    �',
    '�  `[A]`  � 10  � 3 octaves and a Major 3rd above    �',
    '�  `[B]`  � 10  �             ...                    �',
    '�  `[C]`  � 12  � 3 octaves and a 5th above          �',
    '�  `[D]`  � 12  �             ...                    �',
    '�  `[E]`  � 15  � 3 octaves and a Major 7th above    �',
    '�  `[F]`  � 15  �             ...                    �',
    '����������������������������������������������������',
    '',
    '@topic:effects_page1',
    '�����������������������',
    ' � `SUPPORTED EFFECTS` �',
    '��������������������������������������������������������������������������',
    '`0`xy �� ARPEGGiO                   xy=1st_tone|2nd_tone    [1-F]',
    '`1`xx �� FREQUENCY SLiDE UP         xx=speed_of_slide       [1-FF]',
    '`2`xx �� FREQUENCY SLiDE DOWN       xx=speed_of_slide       [1-FF]',
    '`3`xx �� TONE PORTAMENTO            xx=speed_of_slide       [1-FF] ~C~',
    '`4`xy �� ViBRATO                    xy=speed|depth          [1-F]  ~C~',
    '`5`xy �� ~3xx~ & VOLUME SLiDE         xy=up_speed|down_speed  [1-F]  ~C~',
    '`6`xy �� ~4xy~ & VOLUME SLiDE         xy=up_speed|down_speed  [1-F]  ~C~',
    '`7`xx �� FiNE FREQUENCY SLiDE UP    xx=speed_of_slide       [1-FF]',
    '`8`xx �� FiNE FREQUENCY SLiDE DOWN  xx=speed_of_slide       [1-FF]',
    '`9`xx �� SET MODULATOR VOLUME       xx=volume_level         [0-3F]',
    '`A`xy �� VOLUME SLiDE               xy=up_speed|down_speed  [1-F]',
    '`B`xx �� POSiTiON JUMP              xx=position_in_order    [0-7F]',
    '`C`xx �� SET iNSTRUMENT VOLUME      xx=volume_level         [0-3F]',
    '`D`xx �� PATTERN BREAK              xx=line_in_next_pattern [0-FF]',
    '`E`xx �� SET TEMPO                  xx=bpm_in_�             [1-FF]',
    '`F`xx �� SET SPEED                  xx=frames_per_row       [1-FF]',
    '`G`xy �� ~3xx~ & FiNE VOLUME SLiDE    xy=up_speed|down_speed  [1-F]  ~C~',
    '`H`xy �� ~4xy~ & FiNE VOLUME SLiDE    xy=up_speed|down_speed  [1-F]  ~C~',
    '`I`xx �� SET CARRiER VOLUME         xx=volume_level         [0-3F]',
    '`J`xy �� SET WAVEFORM               xy=carrier|modulator    [0-7,F=NiL]',
    '@topic:effects_page2',
    '`K`xy �� FiNE VOLUME SLiDE          xy=up_speed|down_speed  [1-F]',
    '`L`xx �� RETRiG NOTE                xx=interval             [1-FF]',
    '`M`xy �� TREMOLO                    xy=speed|depth          [1-F]  ~C~',
    '`N`xy �� TREMOR                     xy=on_time|off_time     [1-F]',
    '`O`xy �� ~0xy~ & VOLUME SLiDE         xy=up_speed|down_speed  [1-F]  ~C~',
    '`P`xy �� ~0xy~ & FiNE VOLUME SLiDE    xy=up_speed|down_speed  [1-F]  ~C~',
    '`Q`xy �� MULTi RETRiG NOTE          xy=interval|vol_change  [1-F]',
    '',
    '`Q`x?  `0` = None         `8` = Unused',
    '     `1` = -1           `9` = +1',
    '     `2` = -2           `A` = +2',
    '     `3` = -4           `B` = +4',
    '     `4` = -8           `C` = +8',
    '     `5` = -16          `D` = +16',
    '     `6` = 2/3         `E` = 3/2',
    '     `7` = 1/2         `F` = 2',
    '',
    '`R`xy �� ~1xx~ �                   �',
    '`S`xy �� ~2xx~ � &                 �',
    '`T`xy �� ~7xx~ � VOLUME SLiDE      �',
    '`U`xy �� ~8xx~ �                   �',
    '`V`xy �� ~1xx~ �                   �  xy=up_speed|down_speed  [1-F]  ~C~',
    '`W`xy �� ~2xx~ � &                 �',
    '`X`xy �� ~7xx~ � FiNE VOLUME SLiDE �',
    '`Y`xy �� ~8xx~ �                   �',
    '',
    '@topic:effects_page3',
    '`Z`?? `0`x SET TREMOLO DEPTH          x=1dB/4.8dB             [0-1]  ~I~',
    '    `1`x SET ViBRATO DEPTH          x=7%/14%                [0-1]  ~I~',
    '    `2`x SET ATTACK RATE   �        x=attack_rate           [0-F]  ~I~',
    '    `3`x SET DECAY RATE    � MOD.   x=decay_rate            [0-F]  ~I~',
    '    `4`x SET SUSTAiN LEVEL �        x=sustain_level         [0-F]  ~I~',
    '    `5`x SET RELEASE RATE  �        x=release_rate          [0-F]  ~I~',
    '    `6`x SET ATTACK RATE   �        x=attack_rate           [0-F]  ~I~',
    '    `7`x SET DECAY RATE    � CAR.   x=decay_rate            [0-F]  ~I~',
    '    `8`x SET SUSTAiN LEVEL �        x=sustain_level         [0-F]  ~I~',
    '    `9`x SET RELEASE RATE  �        x=release_rate          [0-F]  ~I~',
    '    `A`x SET FEEDBACK STRENGTH      x=feedback_strength     [0-7]  ~I~',
    '    `B`x SET PANNiNG POSiTiON       x=panning_position      [0-2]  ~I~',
    '    `C`x PATTERN LOOP               x=parameter             [0-F]',
    '    `D`x RECURSiVE PATTERN LOOP     x=parameter             [0-F]',
    '    `E`x EXTENDED COMMANDS (1)',
    '    `F`x EXTENDED COMMANDS (2)',
    '',
    '`ZB`?  `0` = Center',
    '     `1` = Left',
    '     `2` = Right',
    '`ZC`?',
    '`ZD`?  `0` = Set loopback point',
    '     x = Loop ~x~ times',
    '',
    '@topic:effects_page4',
    '`ZE`?  `0`/`1` DiSABLE/ENABLE MACRO KEY-OFF LOOP',
    '     `2`/`3` DiSABLE/ENABLE RESTART ENVELOPE WiTH TONE PORTAMENTO',
    '     `4`   PERFORM RESTART ENVELOPE',
    '     `5`/`6` DiSABLE/ENABLE '#4#3' TRACK VOLUME LOCK',
    '',
    '`ZF`?  `0`   RELEASE SUSTAiNiNG SOUND',
    '     `1`   RESET iNSTRUMENT VOLUME',
    '     `2`/`3` LOCK/UNLOCK TRACK VOLUME',
    '     `4`/`5` LOCK/UNLOCK VOLUME PEAK',
    '     `6`   TOGGLE MODULATOR VOLUME SLiDES',
    '     `7`   TOGGLE CARRiER VOLUME SLiDES',
    '     `8`   TOGGLE DEFAULT VOLUME SLiDES',
    '     `9`/`A` LOCK/UNLOCK TRACK PANNiNG',
    '     `B`   ViBRATO OFF',
    '     `C`   TREMOLO OFF',
    '     `D`   FORCE FiNE ViBRATO',
    '         FORCE FiNE GLOBAL FREQ. SLiDE',
    '     `E`   FORCE FiNE TREMOLO',
    '         FORCE EXTRA FiNE GLOBAL FREQ. SLiDE',
    '     `F`   FORCE NO RESTART FOR MACRO TABLES',
    '',
    '@topic:effects_page5',
    '`#`?? `0`x SET CONNECTiON TYPE        x=FM/AM                 [0-1]  ~I~',
    '    `1`x SET MULTiPLiER �           x=multiplier            [0-F]  ~I~',
    '    `2`x SET KSL        �           x=scaling_level         [0-3]  ~I~',
    '    `3`x SET TREMOLO    � MOD.      x=off/on                [0-1]  ~I~',
    '    `4`x SET ViBRATO    �           x=off/on                [0-1]  ~I~',
    '    `5`x SET KSR        �           x=off/on                [0-1]  ~I~',
    '    `6`x SET SUSTAiN    �           x=off/on                [0-1]  ~I~',
    '    `7`x SET MULTiPLiER �           x=multiplier            [0-F]  ~I~',
    '    `8`x SET KSL        �           x=scaling_level         [0-3]  ~I~',
    '    `9`x SET TREMOLO    � CAR.      x=off/on                [0-1]  ~I~',
    '    `A`x SET ViBRATO    �           x=off/on                [0-1]  ~I~',
    '    `B`x SET KSR        �           x=off/on                [0-1]  ~I~',
    '    `C`x SET SUSTAiN    �           x=off/on                [0-1]  ~I~',
    '',
    '@topic:effects_page6',
    '`&`?? `0`x PATTERN DELAY (FRAMES)     x=interval              [1-F]',
    '    `1`x PATTERN DELAY (ROWS)       x=interval              [1-F]',
    '    `2`x NOTE DELAY                 x=interval              [1-F]',
    '    `3`x NOTE CUT                   x=interval              [1-F]',
    '    `4`x FiNE-TUNE UP               x=freq_shift            [1-F]',
    '    `5`x FiNE-TUNE DOWN             x=freq_shift            [1-F]',
    '    `6`x GLOBAL VOLUME SLiDE UP     x=speed_of_slide        [1-F]',
    '    `7`x GLOBAL VOLUME SLiDE DOWN   x=speed_of_slide        [1-F]',
    '    `8`x FiNE ~&6x~                   x=speed_of_slide        [1-F]',
    '    `9`x FiNE ~&7x~                   x=speed_of_slide        [1-F]',
    '    `A`x EXTRA FiNE ~&6x~             x=speed_of_slide        [1-F]',
    '    `B`x EXTRA FiNE ~&7x~             x=speed_of_slide        [1-F]',
    '    `C`x EXTRA FiNE VSLiDE UP       x=speed_of_slide        [1-F]',
    '    `D`x EXTRA FiNE VSLiDE DOWN     x=speed_of_slide        [1-F]',
    '    `E`x EXTRA FiNE FSLiDE UP       x=speed_of_slide        [1-F]',
    '    `F`x EXTRA FiNE FSLiDE DOWN     x=speed_of_slide        [1-F]',
    '',
    '@topic:effects_page7',
    '`$`xy �� EXTRA FiNE ARPEGGiO        xy=1st_tone|2nd_tone    [1-F]',
    '`@@~xy �� EXTRA FiNE ViBRATO         xy=speed|depth          [1-F]  ~C~',
    '`^`xy �� EXTRA FiNE TREMOLO         xy=speed|depth          [1-F]  ~C~',
    '`!`xx �� SWAP ARPEGGiO TABLE        xx=table_number         [0-FF]',
    '`@`xx �� SWAP ViBRATO TABLE         xx=table_number         [0-FF]',
    '`=`xx �� FORCE iNSTRUMENT VOLUME    xx=volume_level         [0-3F]',
    '`%`xx �� SET GLOBAL VOLUME          xx=volume_level         [0-3F]',
    '`>`xx �� GLOBAL FREQ. SLiDE UP      xx=speed_of_slide       [1-FF]',
    '`<`xx �� GLOBAL FREQ. SLiDE DOWN    xx=speed_of_slide       [1-FF]',
    '`@@`xx �� SET CUSTOM SPEED TABLE     xx=parameter            [0-FF]',
    '',
    '`@@`??  `00`     Reset default speed table',
    '     `01`-`FF`  Calculate custom speed table with parameters',
    '            `table size`, `maximum value` and `processing speed factor`',
    '',
    '            �������������������������������������Ŀ',
    '            � PARAMETER  � `SiZE` � `MAX.`   � `FACTOR` �',
    '            �������������������������������������͵',
    '            � `[01]`..`[EF]` � 32   � ~01~..~EF~ � '#7'1     �',
    '            � `[F0]`..`[F3]` � ~32~   � FF     � ~'#7'1~..~'#7'4~ �',
    '            � `[F4]`..`[F7]` � ~64~   � FF     � ~'#7'1~..~'#7'4~ �',
    '            � `[F8]`..`[FB]` � ~128~  � FF     � ~'#7'1~..~'#7'4~ �',
    '            � `[FC]`..`[FF]` � ~256~  � FF     � ~'#7'1~..~'#7'4~ �',
    '            ���������������������������������������',
    '',
    '`FURTHER NOTES:`',
    '',
    '1) Effects marked as ~C~ in the above list of commands can be continued',
    '   in subsequent lines by setting the parameter value to 0.',
    '',
    '2) Effects marked as ~I~ in the above list of commands do apply',
    '   to currently played instrument only.',
    '',
    'For detailed information on effect commands, see the ~adtrack2.doc~ file.',
    '',
    '',
    '                                ���       ��',
{$IFDEF GO32V2}
    '                           /�DLiB�R/�CK3R �� G3',
{$ELSE}
    '                           /�DLiB�R/�CK3R �� SDL',
{$ENDIF}
    '                            �       �     ��',
    '                                      '+at2ver,
    '',
    '',
    '`Get the latest version from:`',
    'http://www.adlibtracker.net',
    '',
    '`Contact information:`',
    'E-MAiL subz3ro.altair@gmail.com',
    'iCQ#   58622796',
    '',
    '`Credits:`',

{$IFDEF GO32V2}

    'Florian Klaempfl and others [Free Pascal Compiler 2.6.4]',
    'Karoly Balogh [GO32V2 Timer Services Unit 1.1.0]',
    'Haruhiko Okomura & Haruyasu Yoshizaki [LZH algorithm]',
    'Markus Oberhumer, Laszlo Molnar & John Reiser [UPX 3.91d]',

{$ELSE}

    'Florian Klaempfl and others [Free Pascal Compiler 2.6.4]',
    'Simple DirectMedia Layer [SDL 1.2.15]',
    'Daniel F. Moisset [SDL4Freepascal-1.2.0.0]',
    'Alexey Khokholov [NukedOPL3 1.6]',
    'Haruhiko Okomura & Haruyasu Yoshizaki [LZH algorithm]',
    'Markus Oberhumer, Laszlo Molnar & John Reiser [UPX 3.91w]',

{$ENDIF}

    '',

    '`Honest ''thank you'' to the following people:`',
    'Slawomir Bubel (Malfunction/Altair), Daniel Illgen (insane/Altair),',
    'Mikkel Hastrup (encore), Florian Jung (Windfisch), Dmitry Smagin,',
    'David Cohen (Diode Milliampere), Nick Balega,',
    'Cecill Etheredge (ijsf), Sven Renner (NeuralNET),',
    'Tyler Montbriand (Corona688), Janwillem Jagersma, PissMasterPlus,',
    'and Mr. Maan M. Hamze :-)',
    '',
    '`Greetz fly to the following people:`',
    'Dragan Espenschied (drx/Bodenstandig 2000), Carl Peczynski (OxygenStar),',
    'Hubert Lamontagne (Madbrain), Jason Karl Warren (Televicious),',
    'Vojta Nedved (nula), and all members of AT2 user group on Facebook');

procedure HELP(topic: String);
procedure ShowStartMessage;

implementation

uses
  AdT2unit,AdT2sys,AdT2keyb,AdT2data,
  TxtScrIO,StringIO,DialogIO,ParserIO;

const
  key_comment_B =
    '  C   D   E   F   G   A   B   C   D   E   F   G   A   B   C   D   E';
  key_comment_H =
    '  C   D   E   F   G   A   H   C   D   E   F   G   A   H   C   D   E';

const
  shift_f5_1 = '~[Shift] F5~               @F5 with Trace';
  shift_f8_1 = '~[Shift] F8~               @F8 with Trace';
  shift_f9_1 = '~[Shift] F9~               @F9 with Trace';
  alt_f8_1   = '~[Alt] F8~                 @F8 � without synchronization';

const
  shift_f5_2 = '~[Shift] F5~               @F5 with no Trace';
  shift_f8_2 = '~[Shift] F8~               @F8 with no Trace';
  shift_f9_2 = '~[Shift] F9~               @F9 with no Trace';
  alt_f8_2   = '~[Alt] F8~                 @F8 � with synchronization';

procedure HELP(topic: String);

var
  spec_attr_table: array[1..255] of Byte;
  temps: String;
  page,temp,fkey: Word;
  temp2: Byte;
  xstart,ystart,ypos,page_len: Byte;
  mpos: Byte;
  mchr: Char;
  new_atr1,
  new_atr2,
  new_atr3: Byte;
  temp_pos_atr1: Byte;
  temp_pos_atr2: Byte;

procedure ListCStr(dest: tSCREEN_MEM_PTR; x,y: Byte;
                   str: String; atr1,atr2,atr3: Byte);
begin
  temp_pos_atr1 := Pos('@@attr:',str);
  temp_pos_atr2 := Pos('@@spec_attr:',str);
  If (Pos('~@@',str) <> 0) then
    begin
      mpos := Pos('~@@',str);
      mchr := str[mpos+3];
      Delete(str,mpos,4);
      Insert(' ',str,mpos);
      ShowC3Str(dest,x,y,
                ExpStrR(str,74+Length(str)-C3StrLen(str),' '),
                atr1,atr2,atr3);
      ShowStr(dest,x+mpos-1,y,mchr,atr2);
     end
  else If (Pos('`@@',str) <> 0) then
         begin
           mpos := Pos('`@@',str);
           mchr := str[mpos+3];
           Delete(str,mpos,4);
           Insert(' ',str,mpos);
           ShowC3Str(dest,x,y,
                     ExpStrR(str,74+Length(str)-C3StrLen(str),' '),
                     atr1,atr2,atr3);
           ShowStr(dest,x+mpos-1,y,mchr,atr3);
         end
       else If (temp_pos_atr1 <> 0) and SameName('@@attr:??,??,??@@',Copy(str,temp_pos_atr1,17)) then
              begin
                new_atr1 := Str2num(Copy(str,temp_pos_atr1+7,2),16);
                If (new_atr1 = 0) then new_atr1 := atr1;
                new_atr2 := Str2num(Copy(str,temp_pos_atr1+10,2),16);
                If (new_atr2 = 0) then new_atr2 := atr2;
                new_atr3 := Str2num(Copy(str,temp_pos_atr1+13,2),16);
                If (new_atr3 = 0) then new_atr3 := atr3;
                Delete(str,temp_pos_atr1,17);
                ShowC3Str(dest,x,y,
                          ExpStrR(str,74+Length(str)-C3StrLen(str),' '),
                          new_atr1,new_atr2,new_atr3);
              end
            else If (temp_pos_atr2 <> 0) and SameName('@@spec_attr:??@@',Copy(str,temp_pos_atr2,16)) then
              begin
                temp2 := Str2num(Copy(str,temp_pos_atr2+12,2),16);
                If (temp2 = 0) or (spec_attr_table[temp2] = 0) then new_atr3 := atr3
                else new_atr3 := spec_attr_table[temp2];
                Delete(str,temp_pos_atr2,16);
                ShowC3Str(dest,x,y,
                          ExpStrR(str,74+Length(str)-C3StrLen(str),' '),
                          atr1,atr2,new_atr3);
              end
            else
              ShowC3Str(dest,x,y,
                        ExpStrR(str,74+Length(str)-C3StrLen(str),' '),
                        atr1,atr2,atr3);
end;

begin
{$IFDEF GO32V2}
  _last_debug_str_ := _debug_str_;
  _debug_str_ := 'ADT2TEXT.PAS:Help';
{$ENDIF}
  ScreenMemCopy(screen_ptr,ptr_screen_backup);
  centered_frame_vdest := screen_ptr;

  // assign special attribute values
  FillChar(spec_attr_table,SizeOf(spec_attr_table),0);
  spec_attr_table[1] := main_behavior SHL 4 AND $0f0;
  spec_attr_table[2] := main_hi_stat_line SHL 4 AND $0f0;

  HideCursor;
  page_len := MAX_PATTERN_ROWS+6;
  centered_frame(xstart,ystart,77,page_len+2,' HELP ',
                 help_background+help_border,
                 help_background+help_title,
                 frame_double);
  page := 1;
  While (page <= HELP_LINES-24) and ((Copy(help_data[page],1,6) <> '@topic') or
        (Copy(help_data[page],8,Length(help_data[page])-7) <> topic)) do
    Inc(page);

  If (page < 1) then page := 1;
  If (page > HELP_LINES-page_len) then page := HELP_LINES-page_len;

  Repeat
    If (page > 1) then temps := '' else temps := '-';
    If (page < HELP_LINES-page_len) then temps := temps+'' else temps := temps+'-';
    ShowCStr(screen_ptr,xstart+1+74-Length(temps),ystart+page_len+2,
             '[~'+temps+'~]',
             help_background+help_border,
             help_background+help_indicators);
    ypos := ystart+1;
    temp := page;
    While (ypos <= ystart+page_len+1) and (temp <= HELP_LINES) do
      begin
        If (Copy(help_data[temp],1,6) <> '@topic') and
           (Copy(help_data[temp],1,6) <> '@input') then
          begin
            If (Copy(help_data[temp],1,3) <> ' � ') then
              ListCStr(screen_ptr,xstart+2,ypos,
                       help_data[temp],
                       help_background+help_text,
                       help_background+help_keys,
                       help_background+help_hi_text)
            else
              ListCStr(screen_ptr,xstart+2,ypos,
                       help_data[temp],
                       help_background+help_text,
                       help_background+help_keys,
                       help_background+help_topic);
            Inc(ypos);
          end
        else If (Copy(help_data[temp],8,
                 Length(help_data[temp])-7) = 'key_comment') then
            begin
              If NOT use_H_for_B then
                ListCStr(screen_ptr,xstart+2,ypos,
                         key_comment_B,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic)
              else
                ListCStr(screen_ptr,xstart+2,ypos,
                         key_comment_H,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic);
              Inc(ypos);
            end
          else If (Copy(help_data[temp],8,
                   Length(help_data[temp])-7) = 'shift_f5') then
            begin
              If NOT trace_by_default then
                ListCStr(screen_ptr,xstart+2,ypos,
                         shift_f5_1,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic)
              else
                ListCStr(screen_ptr,xstart+2,ypos,
                         shift_f5_2,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic);
              Inc(ypos);
            end
          else If (Copy(help_data[temp],8,
                  Length(help_data[temp])-7) = 'shift_f8') then
            begin
              If NOT trace_by_default then
                ListCStr(screen_ptr,xstart+2,ypos,
                         shift_f8_1,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic)
              else
                ListCStr(screen_ptr,xstart+2,ypos,
                         shift_f8_2,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic);
              Inc(ypos);
            end
          else If (Copy(help_data[temp],8,
                   Length(help_data[temp])-7) = 'shift_f9') then
            begin
              If NOT trace_by_default then
                ListCStr(screen_ptr,xstart+2,ypos,
                         shift_f9_1,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic)
              else
                ListCStr(screen_ptr,xstart+2,ypos,
                         shift_f9_2,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic);
              Inc(ypos);
            end
          else If (Copy(help_data[temp],8,
                   Length(help_data[temp])-7) = 'alt_f8') then
            begin
              If NOT nosync_by_default then
                ListCStr(screen_ptr,xstart+2,ypos,
                         alt_f8_1,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic)
              else
                ListCStr(screen_ptr,xstart+2,ypos,
                         alt_f8_2,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic);
              Inc(ypos);
            end;

        Inc(temp);
      end;

    fkey := getkey;
    Case fkey of
      kUP:     begin
                 If (page > 1) then Dec(page);
                 If (Copy(help_data[page-1],1,6) = '@topic') and
                    (page > 1) then Dec(page);
               end;

      kDOWN:   begin
                 If (Copy(help_data[page],1,6) = '@topic') and
                    (page < HELP_LINES-page_len) then Inc(page);
                 If (page < HELP_LINES-page_len) then Inc(page);
               end;

      kPgUP:   begin
                 If (page > page_len) then Dec(page,page_len)
                 else page := 1;
                 If (Copy(help_data[page-1],1,6) = '@topic') and
                    (page > 1) then
                   Dec(page);
               end;

      kPgDOWN: begin
                 If (Copy(help_data[page],1,6) = '@topic') and
                    (page < HELP_LINES-page_len) then
                   Inc(page);
                 If (page+page_len <= HELP_LINES-page_len) then
                   Inc(page,page_len)
                 else page := HELP_LINES-page_len;
               end;

      kHOME:   page := 1;
      kEND:    page := HELP_LINES-page_len;
    end;
    // draw_screen;
  until (fkey = kENTER) or (fkey = kESC) or _force_program_quit;

  move_to_screen_data := ptr_screen_backup;
  move_to_screen_area[1] := xstart;
  move_to_screen_area[2] := ystart;
  move_to_screen_area[3] := xstart+77+2;
  move_to_screen_area[4] := ystart+page_len+1;
  move2screen;
end;

{$IFDEF GO32V2}

procedure C3WriteLn(str: String; atr1,atr2,atr3: Byte);
begin
  ShowC3Str(screen_ptr,WhereX,WhereY,
            str,
            atr1,atr2,atr3);
  WriteLn;
end;

{$ELSE}

procedure C3WriteLn(posX,posY: Byte; str: String; atr1,atr2,atr3: Byte);
begin
  ShowC3Str(screen_ptr,posX,posY,
            str,
            atr1,atr2,atr3);

end;

{$ENDIF}

procedure ShowStartMessage;
begin
{$IFDEF GO32V2}
  WriteLn;
  WriteLn(_ADT2_TITLE_STRING_,' coded by subz3ro/Altair');
  WriteLn('            ',at2ver,' ',at2date,' ',at2link,'');
  WriteLn;
{$ENDIF}
end;

end.
