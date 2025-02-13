; ModuleID = 'cpan/HTML-Parser/Parser.c'
source_filename = "cpan/HTML-Parser/Parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.literal_tag = type { i32, ptr, i32 }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon, ptr, %union.anon.0, %union.anon.1, %union.anon.2, ptr, %union.anon.3, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%struct.p_state = type { i32, ptr, i64, i64, i64, i8, i8, i8, ptr, i8, i8, ptr, ptr, i8, i64, i64, i64, ptr, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [9 x %struct.p_handler], i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.p_handler = type { ptr, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu }
%union.anon.8 = type { i64 }
%union._xivu = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.9, %union._xivu, %union._xnvu }
%union.anon.9 = type { i64 }
%union._xnvu = type { double }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.token_pos = type { ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"tokenpos\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"token0\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"tagname\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"@attr\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"attrseq\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"dtext\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"is_cdata\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"skipped_text\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"offset_end\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@argname = dso_local local_unnamed_addr global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 16
@vtbl_pstate = dso_local global %struct.mgvtbl { ptr null, ptr null, ptr null, ptr null, ptr @magic_free_pstate, ptr null, ptr null, ptr null }, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [26 x i8] c"cpan/HTML-Parser/Parser.c\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"HTML::Parser::_alloc_pstate\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"HTML::Parser::parse\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"HTML::Parser::eof\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"HTML::Parser::attr_encoded\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"HTML::Parser::backquote\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"HTML::Parser::case_sensitive\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"HTML::Parser::closing_plaintext\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"HTML::Parser::empty_element_tags\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"HTML::Parser::marked_sections\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"HTML::Parser::strict_comment\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"HTML::Parser::strict_end\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"HTML::Parser::strict_names\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"HTML::Parser::unbroken_text\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"HTML::Parser::utf8_mode\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"HTML::Parser::xml_mode\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"HTML::Parser::xml_pic\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"HTML::Parser::boolean_attribute_value\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"HTML::Parser::ignore_elements\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"HTML::Parser::ignore_tags\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"HTML::Parser::report_tags\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"HTML::Parser::handler\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"HTML::Entities::decode_entities\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"HTML::Entities::_decode_entities\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"HTML::Entities::_probably_utf8_chunk\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"HTML::Entities::UNICODE_SUPPORT\00", align 1
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_unitcheckav = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_sv_yes = external global %struct.sv, align 8
@.str.48 = private unnamed_addr constant [26 x i8] c"Not a reference to a hash\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"HTML::Entities::entity2char\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"_hparser_xs_state\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"self, chunk\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"Parse loop not allowed\00", align 1
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_errgv = external local_unnamed_addr global ptr, align 8
@.str.53 = private unnamed_addr constant [45 x i8] c"_hparser_xs_state element is not a reference\00", align 1
@.str.54 = private unnamed_addr constant [60 x i8] c"Can't find '_hparser_xs_state' element in HTML::Parser hash\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"Lost parser state magic\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"Bad signature in parser state object at %p\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"plaintext\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"xmp\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"iframe\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"textarea\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@hctype = internal unnamed_addr constant [256 x i8] c"xxxxxxxxx\01\01\01\01\01xxxxxxxxxxxxxxxxxx\01xxxxxxxxxxxx||X||||||||||~xx(\00xx~~~~~~~~~~~~~~~~~~~~~~~~~~xxxx~x~~~~~~~~~~~~~~~~~~~~~~~~~~xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", align 16
@PL_dowarn = external local_unnamed_addr global i8, align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"\C3\AF\C2\BB\C2\BF\00", align 1
@.str.65 = private unnamed_addr constant [68 x i8] c"Parsing of undecoded UTF-8 will give garbage when decoding entities\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"\FF\FE\00", align 1
@.str.67 = private unnamed_addr constant [45 x i8] c"Parsing string decoded with wrong endianness\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"\FE\FF\00\00\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"Parsing of undecoded UTF-32\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"\FE\FF\00", align 1
@.str.72 = private unnamed_addr constant [28 x i8] c"Parsing of undecoded UTF-16\00", align 1
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_sv_undef = external global %struct.sv, align 8
@.str.73 = private unnamed_addr constant [8 x i8] c"!##/#?#\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_sv_no = external global %struct.sv, align 8
@event_id_str = internal unnamed_addr constant [9 x ptr] [ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.9, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], align 16
@.str.74 = private unnamed_addr constant [15 x i8] c"Bad argspec %d\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@PL_hexdigit = external constant [0 x i8], align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"declaration\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"process\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"start_document\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"end_document\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"rcdata\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"cdata\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@literal_mode_elem = internal unnamed_addr constant [8 x %struct.literal_tag] [%struct.literal_tag { i32 6, ptr @.str.61, i32 1 }, %struct.literal_tag { i32 5, ptr @.str.62, i32 1 }, %struct.literal_tag { i32 3, ptr @.str.58, i32 1 }, %struct.literal_tag { i32 6, ptr @.str.59, i32 1 }, %struct.literal_tag { i32 9, ptr @.str.57, i32 1 }, %struct.literal_tag { i32 5, ptr @.str.87, i32 0 }, %struct.literal_tag { i32 8, ptr @.str.60, i32 0 }, %struct.literal_tag zeroinitializer], align 16
@.str.87 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"DOCTYPE\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"ENTITY\00", align 1
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"pstate, ...\00", align 1
@.str.91 = private unnamed_addr constant [31 x i8] c"Unknown boolean attribute (%d)\00", align 1
@.str.92 = private unnamed_addr constant [32 x i8] c"Unknown tag-list attribute (%d)\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@.str.93 = private unnamed_addr constant [27 x i8] c"Can't report tag lists yet\00", align 1
@.str.94 = private unnamed_addr constant [42 x i8] c"Tag list must be plain scalars and arrays\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"pstate, eventname, ...\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"No handler for %s events\00", align 1
@.str.97 = private unnamed_addr constant [40 x i8] c"Unrecognized identifier %.*s in argspec\00", align 1
@.str.98 = private unnamed_addr constant [51 x i8] c"Literal string is longer than 255 chars in argspec\00", align 1
@.str.99 = private unnamed_addr constant [49 x i8] c"Backslash reserved for literal string in argspec\00", align 1
@.str.100 = private unnamed_addr constant [39 x i8] c"Unterminated literal string in argspec\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"Bad argspec (%s)\00", align 1
@.str.102 = private unnamed_addr constant [37 x i8] c"Bad argspec: stuff after @{...} (%s)\00", align 1
@.str.103 = private unnamed_addr constant [35 x i8] c"Missing comma separator in argspec\00", align 1
@.str.104 = private unnamed_addr constant [49 x i8] c"Only code or array references allowed as handler\00", align 1
@.str.105 = private unnamed_addr constant [57 x i8] c"Can't inline decode readonly string in decode_entities()\00", align 1
@.str.106 = private unnamed_addr constant [22 x i8] c"string, entities, ...\00", align 1
@.str.107 = private unnamed_addr constant [36 x i8] c"2nd argument must be hash reference\00", align 1
@.str.108 = private unnamed_addr constant [58 x i8] c"Can't inline decode readonly string in _decode_entities()\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@PL_curpad = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @magic_free_pstate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !prof !34 !PGOFuncName !35 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  tail call fastcc void @free_pstate(ptr noundef %4) #9
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_HTML__Parser(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !44
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676679, ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %14, i32 noundef %7, ptr noundef nonnull @.str.21) #10
  %16 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.22, ptr noundef nonnull @XS_HTML__Parser__alloc_pstate, ptr noundef nonnull @.str.20) #10
  %17 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.23, ptr noundef nonnull @XS_HTML__Parser_parse, ptr noundef nonnull @.str.20) #10
  %18 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.24, ptr noundef nonnull @XS_HTML__Parser_eof, ptr noundef nonnull @.str.20) #10
  %19 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.25, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.xpvcv, ptr %20, i64 0, i32 5
  store i32 6, ptr %21, align 8, !tbaa !48
  %22 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.26, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 5
  store i32 13, ptr %24, align 8, !tbaa !48
  %25 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.27, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.xpvcv, ptr %26, i64 0, i32 5
  store i32 7, ptr %27, align 8, !tbaa !48
  %28 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.28, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.xpvcv, ptr %29, i64 0, i32 5
  store i32 9, ptr %30, align 8, !tbaa !48
  %31 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.29, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.xpvcv, ptr %32, i64 0, i32 5
  store i32 11, ptr %33, align 8, !tbaa !48
  %34 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.30, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.xpvcv, ptr %35, i64 0, i32 5
  store i32 5, ptr %36, align 8, !tbaa !48
  %37 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.31, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.xpvcv, ptr %38, i64 0, i32 5
  store i32 1, ptr %39, align 8, !tbaa !48
  %40 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.32, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct.xpvcv, ptr %41, i64 0, i32 5
  store i32 8, ptr %42, align 8, !tbaa !48
  %43 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.33, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.xpvcv, ptr %44, i64 0, i32 5
  store i32 2, ptr %45, align 8, !tbaa !48
  %46 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.34, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = getelementptr inbounds %struct.xpvcv, ptr %47, i64 0, i32 5
  store i32 4, ptr %48, align 8, !tbaa !48
  %49 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.35, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.xpvcv, ptr %50, i64 0, i32 5
  store i32 10, ptr %51, align 8, !tbaa !48
  %52 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.36, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.xpvcv, ptr %53, i64 0, i32 5
  store i32 3, ptr %54, align 8, !tbaa !48
  %55 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.37, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = getelementptr inbounds %struct.xpvcv, ptr %56, i64 0, i32 5
  store i32 12, ptr %57, align 8, !tbaa !48
  %58 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.38, ptr noundef nonnull @XS_HTML__Parser_boolean_attribute_value, ptr noundef nonnull @.str.20) #10
  %59 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.39, ptr noundef nonnull @XS_HTML__Parser_ignore_tags, ptr noundef nonnull @.str.20) #10
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.xpvcv, ptr %60, i64 0, i32 5
  store i32 3, ptr %61, align 8, !tbaa !48
  %62 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.40, ptr noundef nonnull @XS_HTML__Parser_ignore_tags, ptr noundef nonnull @.str.20) #10
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.xpvcv, ptr %63, i64 0, i32 5
  store i32 2, ptr %64, align 8, !tbaa !48
  %65 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.41, ptr noundef nonnull @XS_HTML__Parser_ignore_tags, ptr noundef nonnull @.str.20) #10
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = getelementptr inbounds %struct.xpvcv, ptr %66, i64 0, i32 5
  store i32 1, ptr %67, align 8, !tbaa !48
  %68 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.42, ptr noundef nonnull @XS_HTML__Parser_handler, ptr noundef nonnull @.str.20) #10
  %69 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.43, ptr noundef nonnull @XS_HTML__Entities_decode_entities, ptr noundef nonnull @.str.20) #10
  %70 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.44, ptr noundef nonnull @XS_HTML__Entities__decode_entities, ptr noundef nonnull @.str.20) #10
  %71 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.45, ptr noundef nonnull @XS_HTML__Entities__probably_utf8_chunk, ptr noundef nonnull @.str.20) #10
  %72 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.46, ptr noundef nonnull @XS_HTML__Entities_UNICODE_SUPPORT, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.47, i32 noundef 0) #10
  %73 = load ptr, ptr @PL_unitcheckav, align 8, !tbaa !43
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %1
  %76 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !44
  tail call void @Perl_call_list(i32 noundef %76, ptr noundef nonnull %73) #10
  br label %77

77:                                               ; preds = %1, %75
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %79 = sext i32 %7 to i64
  %80 = getelementptr inbounds ptr, ptr %78, i64 %79
  store ptr @PL_sv_yes, ptr %80, align 8, !tbaa !43
  %81 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %82 = getelementptr inbounds ptr, ptr %81, i64 %79
  store ptr %82, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser__alloc_pstate(ptr noundef %0) #0 !prof !34 !PGOFuncName !49 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !44
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str) #10
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 12
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #10
  br label %31

31:                                               ; preds = %30, %25
  %32 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 368) #10
  store i32 369695076, ptr %32, align 8, !tbaa !52
  %33 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %34 = getelementptr inbounds %struct.p_state, ptr %32, i64 0, i32 41
  store ptr %33, ptr %34, align 8, !tbaa !55
  %35 = tail call ptr @Perl_newSV(i64 noundef 20) #10
  %36 = getelementptr inbounds %struct.p_state, ptr %32, i64 0, i32 42
  store ptr %35, ptr %36, align 8, !tbaa !56
  %37 = ptrtoint ptr %32 to i64
  %38 = tail call ptr @Perl_newSViv(i64 noundef %37) #10
  tail call void @Perl_sv_magic(ptr noundef %38, ptr noundef null, i32 noundef 126, ptr noundef nonnull %32, i32 noundef 0) #10
  %39 = tail call ptr @Perl_mg_find(ptr noundef %38, i32 noundef 126) #10
  %40 = getelementptr inbounds %struct.magic, ptr %39, i64 0, i32 1
  store ptr @vtbl_pstate, ptr %40, align 8, !tbaa !57
  %41 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = or i32 %42, 134217728
  store i32 %43, ptr %41, align 4, !tbaa !50
  %44 = tail call ptr @Perl_newRV_noinc(ptr noundef %38) #10
  %45 = tail call ptr @Perl_hv_common_key_len(ptr noundef %23, ptr noundef nonnull @.str.50, i32 noundef 17, i32 noundef 36, ptr noundef %44, i32 noundef 0) #10
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %47 = getelementptr inbounds ptr, ptr %46, i64 %19
  %48 = getelementptr inbounds ptr, ptr %47, i64 -1
  store ptr %48, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser_parse(ptr noundef %0) #0 !prof !34 !PGOFuncName !58 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %6 = load i32, ptr %4, align 4, !tbaa !44
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.51) #10
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %7, %1 ]
  %19 = shl i64 %12, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %3, i64 %21
  %23 = getelementptr ptr, ptr %18, i64 %8
  %24 = getelementptr ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr ptr, ptr %23, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = tail call fastcc ptr @get_pstate_hv(ptr noundef %25) #9
  %29 = getelementptr inbounds %struct.p_state, ptr %28, i64 0, i32 6
  %30 = load i8, ptr %29, align 1, !tbaa !59, !range !60, !noundef !61
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.52) #10
  br label %33

33:                                               ; preds = %32, %17
  store i8 1, ptr %29, align 1, !tbaa !59
  %34 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = and i32 %35, 2048
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %395, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %45, label %395

45:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %46 = getelementptr inbounds %struct.p_state, ptr %28, i64 0, i32 7
  br label %47

47:                                               ; preds = %391, %45
  %48 = phi ptr [ %22, %45 ], [ %388, %391 ]
  %49 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %50 = getelementptr inbounds i32, ptr %49, i64 1
  store ptr %50, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %51 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !43
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call ptr @Perl_markstack_grow() #10
  br label %55

55:                                               ; preds = %47, %53
  %56 = phi ptr [ %54, %53 ], [ %50, %47 ]
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %58 = ptrtoint ptr %48 to i64
  %59 = ptrtoint ptr %57 to i64
  %60 = sub i64 %58, %59
  %61 = lshr exact i64 %60, 3
  %62 = trunc i64 %61 to i32
  store i32 %62, ptr %56, align 4, !tbaa !44
  %63 = call i32 @Perl_call_sv(ptr noundef %27, i32 noundef 10) #10
  %64 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = getelementptr inbounds ptr, ptr %64, i64 -1
  %68 = load ptr, ptr %64, align 8, !tbaa !43
  br label %69

69:                                               ; preds = %55, %66
  %70 = phi ptr [ %67, %66 ], [ %64, %55 ]
  %71 = phi ptr [ %68, %66 ], [ null, %55 ]
  store ptr %70, ptr @PL_stack_sp, align 8, !tbaa !43
  %72 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %73 = getelementptr inbounds %struct.gv, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !48
  %75 = load ptr, ptr %74, align 8, !tbaa !43
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %69
  %78 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %72, i32 noundef 0) #10
  %79 = getelementptr inbounds %struct.gv, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !48
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  %82 = icmp eq ptr %81, null
  br i1 %82, label %357, label %83

83:                                               ; preds = %77
  %84 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %85 = getelementptr inbounds %struct.gv, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !48
  %87 = load ptr, ptr %86, align 8, !tbaa !43
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %84, i32 noundef 0) #10
  %91 = getelementptr inbounds %struct.gv, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !48
  %93 = load ptr, ptr %92, align 8, !tbaa !43
  br label %94

94:                                               ; preds = %69, %83, %89
  %95 = phi ptr [ %93, %89 ], [ %87, %83 ], [ %75, %69 ]
  %96 = getelementptr inbounds %struct.sv, ptr %95, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !50
  %98 = and i32 %97, 2097152
  %99 = icmp eq i32 %98, 0
  %100 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %101 = getelementptr inbounds %struct.gv, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !48
  %103 = load ptr, ptr %102, align 8, !tbaa !43
  %104 = icmp eq ptr %103, null
  br i1 %99, label %114, label %105

105:                                              ; preds = %94
  br i1 %104, label %106, label %111

106:                                              ; preds = %105
  %107 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %100, i32 noundef 0) #10
  %108 = getelementptr inbounds %struct.gv, ptr %107, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !48
  %110 = load ptr, ptr %109, align 8, !tbaa !43
  br label %111

111:                                              ; preds = %105, %106
  %112 = phi ptr [ %110, %106 ], [ %103, %105 ]
  %113 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %112, i32 noundef 2) #10
  br i1 %113, label %356, label %357

114:                                              ; preds = %94
  br i1 %104, label %115, label %121

115:                                              ; preds = %114
  %116 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %100, i32 noundef 0) #10
  %117 = getelementptr inbounds %struct.gv, ptr %116, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !48
  %119 = load ptr, ptr %118, align 8, !tbaa !43
  %120 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  br label %121

121:                                              ; preds = %114, %115
  %122 = phi ptr [ %120, %115 ], [ %100, %114 ]
  %123 = phi ptr [ %119, %115 ], [ %103, %114 ]
  %124 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !50
  %126 = and i32 %125, 65280
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %164

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.gv, ptr %122, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !48
  %131 = load ptr, ptr %130, align 8, !tbaa !43
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %122, i32 noundef 0) #10
  %135 = getelementptr inbounds %struct.gv, ptr %134, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !48
  %137 = load ptr, ptr %136, align 8, !tbaa !43
  %138 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  br label %139

139:                                              ; preds = %128, %133
  %140 = phi ptr [ %138, %133 ], [ %122, %128 ]
  %141 = phi ptr [ %137, %133 ], [ %131, %128 ]
  %142 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 2
  %143 = load i32, ptr %142, align 4, !tbaa !50
  %144 = and i32 %143, 255
  %145 = icmp eq i32 %144, 8
  br i1 %145, label %164, label %146

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.gv, ptr %140, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !48
  %149 = load ptr, ptr %148, align 8, !tbaa !43
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %140, i32 noundef 0) #10
  %153 = getelementptr inbounds %struct.gv, ptr %152, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !48
  %155 = load ptr, ptr %154, align 8, !tbaa !43
  br label %156

156:                                              ; preds = %146, %151
  %157 = phi ptr [ %155, %151 ], [ %149, %146 ]
  %158 = getelementptr inbounds %struct.sv, ptr %157, i64 0, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !50
  %160 = and i32 %159, 16826623
  %161 = icmp eq i32 %160, 16777226
  br i1 %161, label %162, label %357

162:                                              ; preds = %156
  %163 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  br label %164

164:                                              ; preds = %162, %139, %121
  %165 = phi ptr [ %163, %162 ], [ %140, %139 ], [ %122, %121 ]
  %166 = getelementptr inbounds %struct.gv, ptr %165, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !48
  %168 = load ptr, ptr %167, align 8, !tbaa !43
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %165, i32 noundef 0) #10
  %172 = getelementptr inbounds %struct.gv, ptr %171, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !48
  %174 = load ptr, ptr %173, align 8, !tbaa !43
  br label %175

175:                                              ; preds = %164, %170
  %176 = phi ptr [ %174, %170 ], [ %168, %164 ]
  %177 = getelementptr inbounds %struct.sv, ptr %176, i64 0, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !50
  %179 = and i32 %178, 1024
  %180 = icmp eq i32 %179, 0
  %181 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %182 = getelementptr inbounds %struct.gv, ptr %181, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !48
  %184 = load ptr, ptr %183, align 8, !tbaa !43
  %185 = icmp eq ptr %184, null
  br i1 %180, label %247, label %186

186:                                              ; preds = %175
  br i1 %185, label %187, label %192

187:                                              ; preds = %186
  %188 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %181, i32 noundef 0) #10
  %189 = getelementptr inbounds %struct.gv, ptr %188, i64 0, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !48
  %191 = load ptr, ptr %190, align 8, !tbaa !43
  br label %192

192:                                              ; preds = %186, %187
  %193 = phi ptr [ %191, %187 ], [ %184, %186 ]
  %194 = load ptr, ptr %193, align 8, !tbaa !62
  %195 = icmp eq ptr %194, null
  br i1 %195, label %357, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %198 = getelementptr inbounds %struct.gv, ptr %197, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !48
  %200 = load ptr, ptr %199, align 8, !tbaa !43
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %197, i32 noundef 0) #10
  %204 = getelementptr inbounds %struct.gv, ptr %203, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !48
  %206 = load ptr, ptr %205, align 8, !tbaa !43
  br label %207

207:                                              ; preds = %196, %202
  %208 = phi ptr [ %206, %202 ], [ %200, %196 ]
  %209 = load ptr, ptr %208, align 8, !tbaa !62
  %210 = getelementptr inbounds %struct.xpv, ptr %209, i64 0, i32 2
  %211 = load i64, ptr %210, align 8, !tbaa !63
  %212 = icmp ugt i64 %211, 1
  br i1 %212, label %356, label %213

213:                                              ; preds = %207
  %214 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %215 = getelementptr inbounds %struct.gv, ptr %214, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !48
  %217 = load ptr, ptr %216, align 8, !tbaa !43
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %224

219:                                              ; preds = %213
  %220 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %214, i32 noundef 0) #10
  %221 = getelementptr inbounds %struct.gv, ptr %220, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !48
  %223 = load ptr, ptr %222, align 8, !tbaa !43
  br label %224

224:                                              ; preds = %213, %219
  %225 = phi ptr [ %223, %219 ], [ %217, %213 ]
  %226 = load ptr, ptr %225, align 8, !tbaa !62
  %227 = getelementptr inbounds %struct.xpv, ptr %226, i64 0, i32 2
  %228 = load i64, ptr %227, align 8, !tbaa !63
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %357, label %230

230:                                              ; preds = %224
  %231 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %232 = getelementptr inbounds %struct.gv, ptr %231, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !48
  %234 = load ptr, ptr %233, align 8, !tbaa !43
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %231, i32 noundef 0) #10
  %238 = getelementptr inbounds %struct.gv, ptr %237, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !48
  %240 = load ptr, ptr %239, align 8, !tbaa !43
  br label %241

241:                                              ; preds = %230, %236
  %242 = phi ptr [ %240, %236 ], [ %234, %230 ]
  %243 = getelementptr inbounds %struct.sv, ptr %242, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !48
  %245 = load i8, ptr %244, align 1, !tbaa !48
  %246 = icmp eq i8 %245, 48
  br i1 %246, label %357, label %356

247:                                              ; preds = %175
  br i1 %185, label %248, label %253

248:                                              ; preds = %247
  %249 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %181, i32 noundef 0) #10
  %250 = getelementptr inbounds %struct.gv, ptr %249, i64 0, i32 3
  %251 = load ptr, ptr %250, align 8, !tbaa !48
  %252 = load ptr, ptr %251, align 8, !tbaa !43
  br label %253

253:                                              ; preds = %247, %248
  %254 = phi ptr [ %252, %248 ], [ %184, %247 ]
  %255 = getelementptr inbounds %struct.sv, ptr %254, i64 0, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !50
  %257 = and i32 %256, 768
  %258 = icmp eq i32 %257, 0
  %259 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %260 = getelementptr inbounds %struct.gv, ptr %259, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !48
  %262 = load ptr, ptr %261, align 8, !tbaa !43
  %263 = icmp eq ptr %262, null
  br i1 %258, label %347, label %264

264:                                              ; preds = %253
  br i1 %263, label %265, label %271

265:                                              ; preds = %264
  %266 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %259, i32 noundef 0) #10
  %267 = getelementptr inbounds %struct.gv, ptr %266, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !48
  %269 = load ptr, ptr %268, align 8, !tbaa !43
  %270 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  br label %271

271:                                              ; preds = %264, %265
  %272 = phi ptr [ %270, %265 ], [ %259, %264 ]
  %273 = phi ptr [ %269, %265 ], [ %262, %264 ]
  %274 = getelementptr inbounds %struct.sv, ptr %273, i64 0, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !50
  %276 = and i32 %275, 256
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %296, label %278

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.gv, ptr %272, i64 0, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !48
  %281 = load ptr, ptr %280, align 8, !tbaa !43
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %272, i32 noundef 0) #10
  %285 = getelementptr inbounds %struct.gv, ptr %284, i64 0, i32 3
  %286 = load ptr, ptr %285, align 8, !tbaa !48
  %287 = load ptr, ptr %286, align 8, !tbaa !43
  br label %288

288:                                              ; preds = %278, %283
  %289 = phi ptr [ %287, %283 ], [ %281, %278 ]
  %290 = load ptr, ptr %289, align 8, !tbaa !62
  %291 = getelementptr inbounds %struct.xpviv, ptr %290, i64 0, i32 4
  %292 = load i64, ptr %291, align 8, !tbaa !48
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %356

294:                                              ; preds = %288
  %295 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  br label %296

296:                                              ; preds = %294, %271
  %297 = phi ptr [ %295, %294 ], [ %272, %271 ]
  %298 = getelementptr inbounds %struct.gv, ptr %297, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !48
  %300 = load ptr, ptr %299, align 8, !tbaa !43
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %307

302:                                              ; preds = %296
  %303 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %297, i32 noundef 0) #10
  %304 = getelementptr inbounds %struct.gv, ptr %303, i64 0, i32 3
  %305 = load ptr, ptr %304, align 8, !tbaa !48
  %306 = load ptr, ptr %305, align 8, !tbaa !43
  br label %307

307:                                              ; preds = %296, %302
  %308 = phi ptr [ %306, %302 ], [ %300, %296 ]
  %309 = getelementptr inbounds %struct.sv, ptr %308, i64 0, i32 2
  %310 = load i32, ptr %309, align 4, !tbaa !50
  %311 = and i32 %310, 512
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %357, label %313

313:                                              ; preds = %307
  %314 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %315 = getelementptr inbounds %struct.gv, ptr %314, i64 0, i32 3
  %316 = load ptr, ptr %315, align 8, !tbaa !48
  %317 = load ptr, ptr %316, align 8, !tbaa !43
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %324

319:                                              ; preds = %313
  %320 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %314, i32 noundef 0) #10
  %321 = getelementptr inbounds %struct.gv, ptr %320, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !48
  %323 = load ptr, ptr %322, align 8, !tbaa !43
  br label %324

324:                                              ; preds = %313, %319
  %325 = phi ptr [ %323, %319 ], [ %317, %313 ]
  %326 = load ptr, ptr %325, align 8, !tbaa !62
  %327 = getelementptr inbounds %struct.xpvnv, ptr %326, i64 0, i32 5
  %328 = load double, ptr %327, align 8, !tbaa !48
  %329 = fcmp uno double %328, 0.000000e+00
  br i1 %329, label %356, label %330

330:                                              ; preds = %324
  %331 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %332 = getelementptr inbounds %struct.gv, ptr %331, i64 0, i32 3
  %333 = load ptr, ptr %332, align 8, !tbaa !48
  %334 = load ptr, ptr %333, align 8, !tbaa !43
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %330
  %337 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %331, i32 noundef 0) #10
  %338 = getelementptr inbounds %struct.gv, ptr %337, i64 0, i32 3
  %339 = load ptr, ptr %338, align 8, !tbaa !48
  %340 = load ptr, ptr %339, align 8, !tbaa !43
  br label %341

341:                                              ; preds = %330, %336
  %342 = phi ptr [ %340, %336 ], [ %334, %330 ]
  %343 = load ptr, ptr %342, align 8, !tbaa !62
  %344 = getelementptr inbounds %struct.xpvnv, ptr %343, i64 0, i32 5
  %345 = load double, ptr %344, align 8, !tbaa !48
  %346 = fcmp une double %345, 0.000000e+00
  br i1 %346, label %356, label %357

347:                                              ; preds = %253
  br i1 %263, label %348, label %353

348:                                              ; preds = %347
  %349 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %259, i32 noundef 0) #10
  %350 = getelementptr inbounds %struct.gv, ptr %349, i64 0, i32 3
  %351 = load ptr, ptr %350, align 8, !tbaa !48
  %352 = load ptr, ptr %351, align 8, !tbaa !43
  br label %353

353:                                              ; preds = %347, %348
  %354 = phi ptr [ %352, %348 ], [ %262, %347 ]
  %355 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %354, i32 noundef 0) #10
  br i1 %355, label %356, label %357

356:                                              ; preds = %353, %341, %324, %288, %241, %207, %111
  store i8 0, ptr %29, align 1, !tbaa !59
  store i8 0, ptr %46, align 2, !tbaa !65
  call void (ptr, ...) @Perl_croak(ptr noundef null) #10
  br label %357

357:                                              ; preds = %156, %77, %356, %353, %341, %307, %241, %224, %192, %111
  %358 = icmp eq ptr %71, null
  br i1 %358, label %380, label %359

359:                                              ; preds = %357
  %360 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %361 = load i32, ptr %360, align 4, !tbaa !50
  %362 = and i32 %361, 65280
  %363 = icmp ne i32 %362, 0
  %364 = and i32 %361, 255
  %365 = icmp eq i32 %364, 8
  %366 = or i1 %363, %365
  %367 = and i32 %361, 16777471
  %368 = icmp eq i32 %367, 16777226
  %369 = or i1 %368, %366
  br i1 %369, label %370, label %380

370:                                              ; preds = %359
  %371 = and i32 %361, 2098176
  %372 = icmp eq i32 %371, 1024
  br i1 %372, label %373, label %377

373:                                              ; preds = %370
  %374 = load ptr, ptr %71, align 8, !tbaa !62
  %375 = getelementptr inbounds %struct.xpv, ptr %374, i64 0, i32 2
  %376 = load i64, ptr %375, align 8, !tbaa !63
  store i64 %376, ptr %2, align 8, !tbaa !66
  br label %381

377:                                              ; preds = %370
  %378 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %71, ptr noundef nonnull %2, i32 noundef 2) #10
  %379 = load i64, ptr %2, align 8, !tbaa !66
  br label %381

380:                                              ; preds = %357, %359
  store i64 0, ptr %2, align 8, !tbaa !66
  br label %385

381:                                              ; preds = %373, %377
  %382 = phi i64 [ %376, %373 ], [ %379, %377 ]
  %383 = freeze i64 %382
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %380, %381
  br label %386

386:                                              ; preds = %381, %385
  %387 = phi ptr [ null, %385 ], [ %71, %381 ]
  call fastcc void @parse(ptr noundef nonnull %28, ptr noundef %387, ptr noundef %25) #9
  %388 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %389 = load i64, ptr %2, align 8, !tbaa !66
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %394, label %391

391:                                              ; preds = %386
  %392 = load i8, ptr %46, align 2, !tbaa !65, !range !60, !noundef !61
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %47, label %394, !llvm.loop !67

394:                                              ; preds = %386, %391
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %397

395:                                              ; preds = %38, %33
  tail call fastcc void @parse(ptr noundef nonnull %28, ptr noundef nonnull %27, ptr noundef %25) #9
  %396 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  br label %397

397:                                              ; preds = %395, %394
  %398 = phi ptr [ %388, %394 ], [ %396, %395 ]
  store i8 0, ptr %29, align 1, !tbaa !59
  %399 = getelementptr inbounds %struct.p_state, ptr %28, i64 0, i32 7
  %400 = load i8, ptr %399, align 2, !tbaa !65, !range !60, !noundef !61
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %405, label %402

402:                                              ; preds = %397
  store i8 0, ptr %399, align 2, !tbaa !65
  %403 = call ptr @Perl_sv_newmortal() #10
  %404 = getelementptr inbounds ptr, ptr %398, i64 1
  store ptr %403, ptr %404, align 8, !tbaa !43
  br label %407

405:                                              ; preds = %397
  %406 = getelementptr inbounds ptr, ptr %398, i64 1
  store ptr %25, ptr %406, align 8, !tbaa !43
  br label %407

407:                                              ; preds = %405, %402
  %408 = phi ptr [ %404, %402 ], [ %406, %405 ]
  store ptr %408, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser_eof(ptr noundef %0) #0 !prof !34 !PGOFuncName !69 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !44
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str) #10
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = getelementptr ptr, ptr %17, i64 %7
  %19 = getelementptr ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = tail call fastcc ptr @get_pstate_hv(ptr noundef %20) #9
  %22 = getelementptr inbounds %struct.p_state, ptr %21, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !59, !range !60, !noundef !61
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.p_state, ptr %21, i64 0, i32 7
  store i8 1, ptr %26, align 2, !tbaa !65
  br label %28

27:                                               ; preds = %16
  store i8 1, ptr %22, align 1, !tbaa !59
  tail call fastcc void @parse(ptr noundef nonnull %21, ptr noundef null, ptr noundef %20) #9
  store i8 0, ptr %22, align 1, !tbaa !59
  br label %28

28:                                               ; preds = %27, %25
  %29 = shl i64 %11, 29
  %30 = ashr i64 %29, 32
  %31 = sub nsw i64 0, %30
  %32 = getelementptr inbounds ptr, ptr %2, i64 %31
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  store ptr %20, ptr %33, align 8, !tbaa !43
  store ptr %33, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser_strict_comment(ptr noundef %0) #0 !prof !34 !PGOFuncName !70 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !44
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = icmp slt i32 %14, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.90) #10
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi ptr [ %20, %19 ], [ %6, %1 ]
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = tail call fastcc ptr @get_pstate_hv(ptr noundef %25) #9
  switch i32 %17, label %53 [
    i32 1, label %27
    i32 2, label %29
    i32 3, label %31
    i32 4, label %33
    i32 5, label %35
    i32 6, label %37
    i32 7, label %39
    i32 8, label %41
    i32 9, label %43
    i32 10, label %45
    i32 11, label %47
    i32 12, label %49
    i32 13, label %51
  ]

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 21
  br label %54

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 22
  br label %54

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 24
  br label %54

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 25
  br label %54

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 20
  br label %54

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 26
  br label %54

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 27
  br label %54

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 23
  br label %54

43:                                               ; preds = %21
  %44 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 28
  br label %54

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 29
  br label %54

47:                                               ; preds = %21
  %48 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 30
  br label %54

49:                                               ; preds = %21
  %50 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 31
  br label %54

51:                                               ; preds = %21
  %52 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 32
  br label %54

53:                                               ; preds = %21
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.91, i32 noundef %17) #10
  br label %54

54:                                               ; preds = %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27
  %55 = phi ptr [ null, %53 ], [ %52, %51 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ]
  %56 = load i8, ptr %55, align 1, !tbaa !71, !range !60, !noundef !61
  %57 = icmp sgt i32 %14, 1
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br i1 %57, label %59, label %127

59:                                               ; preds = %54
  %60 = getelementptr ptr, ptr %58, i64 %8
  %61 = getelementptr ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !43
  %63 = icmp eq ptr %62, null
  br i1 %63, label %124, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !50
  %67 = and i32 %66, 2097152
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %62, i32 noundef 2) #10
  br label %120

71:                                               ; preds = %64
  %72 = and i32 %66, 65280
  %73 = icmp ne i32 %72, 0
  %74 = and i32 %66, 255
  %75 = icmp eq i32 %74, 8
  %76 = or i1 %73, %75
  %77 = and i32 %66, 16777471
  %78 = icmp eq i32 %77, 16777226
  %79 = or i1 %78, %76
  br i1 %79, label %80, label %120

80:                                               ; preds = %71
  %81 = and i32 %66, 1024
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %62, align 8, !tbaa !62
  %85 = icmp eq ptr %84, null
  br i1 %85, label %120, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.xpv, ptr %84, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !63
  %89 = icmp ugt i64 %88, 1
  br i1 %89, label %120, label %90

90:                                               ; preds = %86
  %91 = icmp eq i64 %88, 0
  br i1 %91, label %120, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !48
  %95 = load i8, ptr %94, align 1, !tbaa !48
  %96 = icmp ne i8 %95, 48
  br label %120

97:                                               ; preds = %80
  %98 = and i32 %66, 768
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %97
  %101 = and i32 %66, 256
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %62, align 8, !tbaa !62
  %105 = getelementptr inbounds %struct.xpviv, ptr %104, i64 0, i32 4
  %106 = load i64, ptr %105, align 8, !tbaa !48
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %103, %100
  %109 = and i32 %66, 512
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %62, align 8, !tbaa !62
  %113 = getelementptr inbounds %struct.xpvnv, ptr %112, i64 0, i32 5
  %114 = load double, ptr %113, align 8, !tbaa !48
  %115 = fcmp uno double %114, 0.000000e+00
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = fcmp une double %114, 0.000000e+00
  br label %120

118:                                              ; preds = %97
  %119 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %62, i32 noundef 0) #10
  br label %120

120:                                              ; preds = %103, %111, %116, %108, %83, %90, %92, %86, %71, %118, %69
  %121 = phi i1 [ %70, %69 ], [ %119, %118 ], [ false, %71 ], [ false, %83 ], [ true, %86 ], [ false, %90 ], [ %96, %92 ], [ true, %103 ], [ false, %108 ], [ true, %111 ], [ %117, %116 ]
  %122 = zext i1 %121 to i8
  %123 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %124

124:                                              ; preds = %59, %120
  %125 = phi ptr [ %123, %120 ], [ %58, %59 ]
  %126 = phi i8 [ %122, %120 ], [ 0, %59 ]
  store i8 %126, ptr %55, align 1, !tbaa !71
  br label %127

127:                                              ; preds = %124, %54
  %128 = phi ptr [ %125, %124 ], [ %58, %54 ]
  %129 = icmp eq i8 %56, 0
  %130 = select i1 %129, ptr @PL_sv_no, ptr @PL_sv_yes
  %131 = getelementptr inbounds ptr, ptr %128, i64 %23
  store ptr %130, ptr %131, align 8, !tbaa !43
  %132 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %133 = getelementptr inbounds ptr, ptr %132, i64 %23
  %134 = load ptr, ptr %133, align 8, !tbaa !43
  %135 = tail call ptr @Perl_sv_2mortal(ptr noundef %134) #10
  %136 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %137 = getelementptr inbounds ptr, ptr %136, i64 %23
  store ptr %137, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser_boolean_attribute_value(ptr noundef %0) #0 !prof !34 !PGOFuncName !72 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !44
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.90) #10
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = tail call fastcc ptr @get_pstate_hv(ptr noundef %22) #9
  %24 = getelementptr inbounds %struct.p_state, ptr %23, i64 0, i32 33
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %25) #10
  br label %29

29:                                               ; preds = %18, %27
  %30 = phi ptr [ %28, %27 ], [ @PL_sv_undef, %18 ]
  %31 = icmp sgt i32 %14, 1
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load ptr, ptr %24, align 8, !tbaa !73
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %33) #9
  %34 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %35 = getelementptr ptr, ptr %34, i64 %8
  %36 = getelementptr ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  %38 = tail call ptr @Perl_newSVsv(ptr noundef %37) #10
  store ptr %38, ptr %24, align 8, !tbaa !73
  br label %39

39:                                               ; preds = %32, %29
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %41 = getelementptr inbounds ptr, ptr %40, i64 %20
  store ptr %30, ptr %41, align 8, !tbaa !43
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %43 = getelementptr inbounds ptr, ptr %42, i64 %20
  %44 = load ptr, ptr %43, align 8, !tbaa !43
  %45 = tail call ptr @Perl_sv_2mortal(ptr noundef %44) #10
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %47 = getelementptr inbounds ptr, ptr %46, i64 %20
  store ptr %47, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser_ignore_tags(ptr noundef %0) #0 !prof !34 !PGOFuncName !74 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !44
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = icmp slt i32 %14, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.90) #10
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi ptr [ %20, %19 ], [ %6, %1 ]
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = tail call fastcc ptr @get_pstate_hv(ptr noundef %25) #9
  switch i32 %17, label %33 [
    i32 1, label %27
    i32 2, label %29
    i32 3, label %31
  ]

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 36
  br label %34

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 37
  br label %34

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.p_state, ptr %26, i64 0, i32 38
  br label %34

33:                                               ; preds = %21
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.92, i32 noundef %17) #10
  br label %34

34:                                               ; preds = %33, %31, %29, %27
  %35 = phi ptr [ null, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ]
  %36 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct.op, ptr %36, i64 0, i32 5
  %38 = load i8, ptr %37, align 2, !tbaa !75
  %39 = and i8 %38, 3
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = zext nneg i8 %39 to i32
  br label %45

43:                                               ; preds = %34
  %44 = tail call i32 @Perl_block_gimme() #10
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.93) #10
  br label %49

49:                                               ; preds = %48, %45
  %50 = add nsw i32 %14, -1
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr %35, align 8, !tbaa !43
  %53 = icmp eq ptr %52, null
  br i1 %51, label %102, label %54

54:                                               ; preds = %49
  br i1 %53, label %56, label %55

55:                                               ; preds = %54
  tail call void @Perl_hv_clear(ptr noundef nonnull %52) #10
  br label %58

56:                                               ; preds = %54
  %57 = tail call ptr @Perl_newSV_type(i32 noundef 12) #10
  store ptr %57, ptr %35, align 8, !tbaa !43
  br label %58

58:                                               ; preds = %56, %55
  %59 = icmp sgt i32 %14, 1
  br i1 %59, label %60, label %104

60:                                               ; preds = %58
  %61 = zext nneg i32 %50 to i64
  br label %62

62:                                               ; preds = %60, %100
  %63 = phi i64 [ 0, %60 ], [ %65, %100 ]
  %64 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %65 = add nuw nsw i64 %63, 1
  %66 = getelementptr ptr, ptr %64, i64 %65
  %67 = getelementptr ptr, ptr %66, i64 %23
  %68 = load ptr, ptr %67, align 8, !tbaa !43
  %69 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !50
  %71 = and i32 %70, 2048
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !48
  %76 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !50
  %78 = and i32 %77, 255
  %79 = icmp eq i32 %78, 11
  br i1 %79, label %80, label %95

80:                                               ; preds = %73
  %81 = tail call i64 @Perl_av_len(ptr noundef nonnull %75) #10
  %82 = icmp eq i64 %81, -1
  br i1 %82, label %100, label %83

83:                                               ; preds = %80, %92
  %84 = phi i64 [ %93, %92 ], [ 0, %80 ]
  %85 = tail call ptr @Perl_av_fetch(ptr noundef %75, i64 noundef %84, i32 noundef 0) #10
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %35, align 8, !tbaa !43
  %89 = load ptr, ptr %85, align 8, !tbaa !43
  %90 = tail call ptr @Perl_newSViv(i64 noundef 0) #10
  %91 = tail call ptr @Perl_hv_common(ptr noundef %88, ptr noundef %89, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %90, i32 noundef 0) #10
  br label %92

92:                                               ; preds = %87, %83
  %93 = add nuw i64 %84, 1
  %94 = icmp eq i64 %84, %81
  br i1 %94, label %100, label %83, !llvm.loop !77

95:                                               ; preds = %73
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.94) #10
  br label %100

96:                                               ; preds = %62
  %97 = load ptr, ptr %35, align 8, !tbaa !43
  %98 = tail call ptr @Perl_newSViv(i64 noundef 0) #10
  %99 = tail call ptr @Perl_hv_common(ptr noundef %97, ptr noundef nonnull %68, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %98, i32 noundef 0) #10
  br label %100

100:                                              ; preds = %92, %80, %95, %96
  %101 = icmp eq i64 %65, %61
  br i1 %101, label %104, label %62, !llvm.loop !78

102:                                              ; preds = %49
  br i1 %53, label %104, label %103

103:                                              ; preds = %102
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %52) #9
  store ptr null, ptr %35, align 8, !tbaa !43
  br label %104

104:                                              ; preds = %100, %58, %102, %103
  %105 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %106 = getelementptr inbounds ptr, ptr %105, i64 %23
  %107 = getelementptr inbounds ptr, ptr %106, i64 -1
  store ptr %107, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser_handler(ptr noundef %0) #0 !prof !34 !PGOFuncName !79 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %6 = load i32, ptr %4, align 4, !tbaa !44
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.95) #10
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %20 = shl i64 %12, 29
  %21 = ashr i64 %20, 32
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds ptr, ptr %3, i64 %22
  %24 = getelementptr ptr, ptr %19, i64 %8
  %25 = getelementptr ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = tail call fastcc ptr @get_pstate_hv(ptr noundef %26) #9
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %29 = getelementptr ptr, ptr %28, i64 %8
  %30 = getelementptr ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !50
  %34 = and i32 %33, 2098176
  %35 = icmp eq i32 %34, 1024
  br i1 %35, label %36, label %42

36:                                               ; preds = %18
  %37 = load ptr, ptr %31, align 8, !tbaa !62
  %38 = getelementptr inbounds %struct.xpv, ptr %37, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !63
  store i64 %39, ptr %2, align 8, !tbaa !66
  %40 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  br label %44

42:                                               ; preds = %18
  %43 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %31, ptr noundef nonnull %2, i32 noundef 2) #10
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi ptr [ %41, %36 ], [ %43, %42 ]
  br label %46

46:                                               ; preds = %44, %52
  %47 = phi i64 [ 0, %44 ], [ %53, %52 ]
  %48 = getelementptr inbounds [9 x ptr], ptr @event_id_str, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) %49) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = add nuw nsw i64 %47, 1
  %54 = icmp eq i64 %53, 9
  br i1 %54, label %55, label %46, !llvm.loop !80

55:                                               ; preds = %52
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.96, ptr noundef %45) #10
  br label %59

56:                                               ; preds = %46
  %57 = shl i64 %47, 32
  %58 = ashr exact i64 %57, 32
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i64 [ -1, %55 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.p_state, ptr %27, i64 0, i32 34, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !81
  %63 = icmp eq ptr %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !50
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, 11
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call ptr @Perl_newRV(ptr noundef nonnull %62) #10
  br label %73

71:                                               ; preds = %64
  %72 = call ptr @Perl_newSVsv(ptr noundef nonnull %62) #10
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi ptr [ %72, %71 ], [ %70, %69 ]
  %75 = call ptr @Perl_sv_2mortal(ptr noundef %74) #10
  %76 = getelementptr inbounds ptr, ptr %23, i64 1
  store ptr %75, ptr %76, align 8, !tbaa !43
  br label %79

77:                                               ; preds = %59
  %78 = getelementptr inbounds ptr, ptr %23, i64 1
  store ptr @PL_sv_undef, ptr %78, align 8, !tbaa !43
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi ptr [ %76, %73 ], [ %78, %77 ]
  %81 = icmp sgt i32 %14, 3
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.p_state, ptr %27, i64 0, i32 34, i64 %60, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !83
  call fastcc void @S_SvREFCNT_dec(ptr noundef %84) #9
  store ptr null, ptr %83, align 8, !tbaa !83
  %85 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %86 = getelementptr ptr, ptr %85, i64 %8
  %87 = getelementptr ptr, ptr %86, i64 4
  %88 = load ptr, ptr %87, align 8, !tbaa !43
  %89 = call fastcc ptr @argspec_compile(ptr noundef %88, ptr noundef nonnull %27) #9
  store ptr %89, ptr %83, align 8, !tbaa !83
  br label %92

90:                                               ; preds = %79
  %91 = icmp eq i32 %14, 3
  br i1 %91, label %92, label %99

92:                                               ; preds = %82, %90
  %93 = load ptr, ptr %61, align 8, !tbaa !81
  call fastcc void @S_SvREFCNT_dec(ptr noundef %93) #9
  store ptr null, ptr %61, align 8, !tbaa !81
  %94 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %95 = getelementptr ptr, ptr %94, i64 %8
  %96 = getelementptr ptr, ptr %95, i64 3
  %97 = load ptr, ptr %96, align 8, !tbaa !43
  %98 = call fastcc ptr @check_handler(ptr noundef %97) #9
  store ptr %98, ptr %61, align 8, !tbaa !81
  br label %99

99:                                               ; preds = %92, %90
  store ptr %80, ptr @PL_stack_sp, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Entities_decode_entities(ptr nocapture readnone %0) #0 !prof !34 !PGOFuncName !84 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !44
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.49, i32 noundef 0) #10
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 5
  %18 = load i8, ptr %17, align 2, !tbaa !75
  %19 = and i8 %18, 3
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = zext nneg i8 %19 to i32
  br label %25

23:                                               ; preds = %1
  %24 = tail call i32 @Perl_block_gimme() #10
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = icmp eq i32 %26, 2
  %28 = tail call i32 @llvm.smin.i32(i32 %14, i32 1)
  %29 = select i1 %27, i32 %28, i32 %14
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %80

31:                                               ; preds = %25
  %32 = sext i32 %7 to i64
  %33 = zext nneg i32 %29 to i64
  br label %34

34:                                               ; preds = %31, %73
  %35 = phi i64 [ 0, %31 ], [ %78, %73 ]
  %36 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct.op, ptr %36, i64 0, i32 5
  %38 = load i8, ptr %37, align 2, !tbaa !75
  %39 = and i8 %38, 3
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = zext nneg i8 %39 to i32
  br label %45

43:                                               ; preds = %34
  %44 = tail call i32 @Perl_block_gimme() #10
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = icmp eq i32 %46, 1
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %49 = add nsw i64 %35, %32
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !43
  br i1 %47, label %57, label %52

52:                                               ; preds = %45
  %53 = tail call ptr @Perl_newSVsv(ptr noundef %51) #10
  %54 = tail call ptr @Perl_sv_2mortal(ptr noundef %53) #10
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %56 = getelementptr inbounds ptr, ptr %55, i64 %49
  store ptr %54, ptr %56, align 8, !tbaa !43
  br label %73

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !50
  %60 = and i32 %59, 427886592
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %51, i32 noundef 0) #10
  %63 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %64 = getelementptr inbounds ptr, ptr %63, i64 %49
  %65 = load ptr, ptr %64, align 8, !tbaa !43
  %66 = getelementptr inbounds %struct.sv, ptr %65, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !50
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi i32 [ %67, %62 ], [ %59, %57 ]
  %70 = and i32 %69, 134283264
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.105) #10
  br label %73

73:                                               ; preds = %68, %72, %52
  %74 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %75 = getelementptr inbounds ptr, ptr %74, i64 %49
  %76 = load ptr, ptr %75, align 8, !tbaa !43
  %77 = tail call fastcc ptr @decode_entities(ptr noundef %76, ptr noundef %15, i1 noundef zeroext false) #9
  %78 = add nuw nsw i64 %35, 1
  %79 = icmp eq i64 %78, %33
  br i1 %79, label %80, label %34, !llvm.loop !85

80:                                               ; preds = %73, %25
  %81 = shl i64 %12, 29
  %82 = ashr i64 %81, 32
  %83 = sub nsw i64 0, %82
  %84 = getelementptr inbounds ptr, ptr %2, i64 %83
  %85 = sext i32 %29 to i64
  %86 = getelementptr inbounds ptr, ptr %84, i64 %85
  store ptr %86, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Entities__decode_entities(ptr noundef %0) #0 !prof !34 !PGOFuncName !86 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !44
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.106) #10
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr ptr, ptr %17, i64 %8
  %22 = getelementptr ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  br label %91

24:                                               ; preds = %1
  %25 = sext i32 %7 to i64
  %26 = getelementptr inbounds ptr, ptr %6, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = getelementptr ptr, ptr %9, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = icmp eq i32 %14, 2
  br i1 %30, label %91, label %31

31:                                               ; preds = %24
  %32 = getelementptr ptr, ptr %9, i64 3
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = icmp eq ptr %33, null
  br i1 %34, label %91, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %33, i32 noundef 2) #10
  br label %91

42:                                               ; preds = %35
  %43 = and i32 %37, 65280
  %44 = icmp ne i32 %43, 0
  %45 = and i32 %37, 255
  %46 = icmp eq i32 %45, 8
  %47 = or i1 %44, %46
  %48 = and i32 %37, 16777471
  %49 = icmp eq i32 %48, 16777226
  %50 = or i1 %49, %47
  br i1 %50, label %51, label %91

51:                                               ; preds = %42
  %52 = and i32 %37, 1024
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %33, align 8, !tbaa !62
  %56 = icmp eq ptr %55, null
  br i1 %56, label %91, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.xpv, ptr %55, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !63
  %60 = icmp ugt i64 %59, 1
  br i1 %60, label %91, label %61

61:                                               ; preds = %57
  %62 = icmp eq i64 %59, 0
  br i1 %62, label %91, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !48
  %66 = load i8, ptr %65, align 1, !tbaa !48
  %67 = icmp ne i8 %66, 48
  br label %91

68:                                               ; preds = %51
  %69 = and i32 %37, 768
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %68
  %72 = and i32 %37, 256
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %33, align 8, !tbaa !62
  %76 = getelementptr inbounds %struct.xpviv, ptr %75, i64 0, i32 4
  %77 = load i64, ptr %76, align 8, !tbaa !48
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74, %71
  %80 = and i32 %37, 512
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %33, align 8, !tbaa !62
  %84 = getelementptr inbounds %struct.xpvnv, ptr %83, i64 0, i32 5
  %85 = load double, ptr %84, align 8, !tbaa !48
  %86 = fcmp uno double %85, 0.000000e+00
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = fcmp une double %85, 0.000000e+00
  br label %91

89:                                               ; preds = %68
  %90 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %33, i32 noundef 0) #10
  br label %91

91:                                               ; preds = %40, %89, %42, %57, %63, %61, %54, %79, %87, %82, %74, %16, %31, %24
  %92 = phi ptr [ %29, %24 ], [ %29, %31 ], [ %23, %16 ], [ %29, %74 ], [ %29, %82 ], [ %29, %87 ], [ %29, %79 ], [ %29, %54 ], [ %29, %61 ], [ %29, %63 ], [ %29, %57 ], [ %29, %42 ], [ %29, %89 ], [ %29, %40 ]
  %93 = phi ptr [ %27, %24 ], [ %27, %31 ], [ %20, %16 ], [ %27, %74 ], [ %27, %82 ], [ %27, %87 ], [ %27, %79 ], [ %27, %54 ], [ %27, %61 ], [ %27, %63 ], [ %27, %57 ], [ %27, %42 ], [ %27, %89 ], [ %27, %40 ]
  %94 = phi i64 [ %25, %24 ], [ %25, %31 ], [ %18, %16 ], [ %25, %74 ], [ %25, %82 ], [ %25, %87 ], [ %25, %79 ], [ %25, %54 ], [ %25, %61 ], [ %25, %63 ], [ %25, %57 ], [ %25, %42 ], [ %25, %89 ], [ %25, %40 ]
  %95 = phi i1 [ false, %24 ], [ false, %31 ], [ false, %16 ], [ true, %74 ], [ true, %82 ], [ %88, %87 ], [ false, %79 ], [ false, %54 ], [ false, %61 ], [ %67, %63 ], [ true, %57 ], [ false, %42 ], [ %90, %89 ], [ %41, %40 ]
  %96 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !50
  %98 = and i32 %97, 65280
  %99 = icmp ne i32 %98, 0
  %100 = and i32 %97, 255
  %101 = icmp eq i32 %100, 8
  %102 = or i1 %99, %101
  %103 = and i32 %97, 16777471
  %104 = icmp eq i32 %103, 16777226
  %105 = or i1 %104, %102
  br i1 %105, label %106, label %117

106:                                              ; preds = %91
  %107 = and i32 %97, 2048
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !48
  %112 = getelementptr inbounds %struct.sv, ptr %111, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !50
  %114 = and i32 %113, 255
  %115 = icmp eq i32 %114, 12
  br i1 %115, label %117, label %116

116:                                              ; preds = %109, %106
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.107) #10
  br label %117

117:                                              ; preds = %91, %109, %116
  %118 = phi ptr [ null, %116 ], [ %111, %109 ], [ null, %91 ]
  %119 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !50
  %121 = and i32 %120, 427886592
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %93, i32 noundef 0) #10
  %124 = load i32, ptr %119, align 4, !tbaa !50
  br label %125

125:                                              ; preds = %123, %117
  %126 = phi i32 [ %124, %123 ], [ %120, %117 ]
  %127 = and i32 %126, 134283264
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.108) #10
  br label %130

130:                                              ; preds = %129, %125
  %131 = tail call fastcc ptr @decode_entities(ptr noundef nonnull %93, ptr noundef %118, i1 noundef zeroext %95) #9
  %132 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %133 = getelementptr inbounds ptr, ptr %132, i64 %94
  %134 = getelementptr inbounds ptr, ptr %133, i64 -1
  store ptr %134, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Entities__probably_utf8_chunk(ptr noundef %0) #0 !prof !34 !PGOFuncName !87 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %6 = load i32, ptr %4, align 4, !tbaa !44
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.109) #10
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %23 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %22, i1 noundef zeroext false) #10
  %24 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !50
  %26 = and i32 %25, 2098176
  %27 = icmp eq i32 %26, 1024
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load ptr, ptr %22, align 8, !tbaa !62
  %30 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !63
  store i64 %31, ptr %2, align 8, !tbaa !66
  %32 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  br label %37

34:                                               ; preds = %18
  %35 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %22, ptr noundef nonnull %2, i32 noundef 2) #10
  %36 = load i64, ptr %2, align 8, !tbaa !66
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i64 [ %31, %28 ], [ %36, %34 ]
  %39 = phi ptr [ %33, %28 ], [ %35, %34 ]
  %40 = call fastcc zeroext i1 @probably_utf8_chunk(ptr noundef %39, i64 noundef %38) #9
  %41 = select i1 %40, ptr @PL_sv_yes, ptr @PL_sv_no
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %43 = getelementptr inbounds ptr, ptr %42, i64 %20
  store ptr %41, ptr %43, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %45 = getelementptr inbounds ptr, ptr %44, i64 %20
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Entities_UNICODE_SUPPORT(ptr noundef %0) #0 !prof !34 !PGOFuncName !88 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %5 = load i32, ptr %3, align 4, !tbaa !44
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.47) #10
  br label %15

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 6
  %18 = load i8, ptr %17, align 1, !tbaa !89
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @PL_curpad, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !90
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  br label %29

27:                                               ; preds = %15
  %28 = tail call ptr @Perl_sv_newmortal() #10
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %26, %21 ], [ %28, %27 ]
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  tail call void @Perl_sv_setiv(ptr noundef %30, i64 noundef 1) #10
  %32 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !50
  %34 = and i32 %33, 4194304
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = tail call i32 @Perl_mg_set(ptr noundef nonnull %30) #10
  br label %38

38:                                               ; preds = %29, %36
  %39 = add nsw i32 %5, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %31, i64 %40
  store ptr %30, ptr %41, align 8, !tbaa !43
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %43 = getelementptr inbounds ptr, ptr %42, i64 %40
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @Perl_call_list(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_pstate(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !91 {
  %2 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 33
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %11) #9
  br label %12

12:                                               ; preds = %1, %12
  %13 = phi i64 [ 0, %1 ], [ %18, %12 ]
  %14 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 34, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 34, i64 %13, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %17) #9
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, 9
  br i1 %19, label %20, label %12, !llvm.loop !96

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 36
  %22 = load ptr, ptr %21, align 8, !tbaa !97
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %22) #9
  %23 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 37
  %24 = load ptr, ptr %23, align 8, !tbaa !98
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %24) #9
  %25 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 38
  %26 = load ptr, ptr %25, align 8, !tbaa !99
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %26) #9
  %27 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 39
  %28 = load ptr, ptr %27, align 8, !tbaa !100
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %28) #9
  %29 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 42
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %30) #9
  store i32 0, ptr %0, align 8, !tbaa !52
  tail call void @Perl_safesysfree(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !101 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !102
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !102
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #10
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_pstate_hv(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 !PGOFuncName !103 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #10
  br label %11

11:                                               ; preds = %10, %5
  %12 = tail call ptr @Perl_hv_common_key_len(ptr noundef %3, ptr noundef nonnull @.str.50, i32 noundef 17, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = and i32 %17, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = tail call fastcc ptr @get_pstate_iv(ptr noundef %22) #9
  br label %26

24:                                               ; preds = %14
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.53) #10
  br label %25

25:                                               ; preds = %24, %11
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.54) #10
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi ptr [ %23, %20 ], [ null, %25 ]
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @parse(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 !PGOFuncName !104 {
  %4 = alloca i64, align 8
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca %struct.token_pos, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.token_pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %10 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !105, !range !60, !noundef !61
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull %5, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %2) #9
  store i8 1, ptr %10, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %14

14:                                               ; preds = %13, %3
  %15 = icmp eq ptr %1, null
  br i1 %15, label %16, label %153

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  %17 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = icmp eq ptr %18, null
  br i1 %19, label %122, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !50
  %23 = and i32 %22, 65280
  %24 = icmp ne i32 %23, 0
  %25 = and i32 %22, 255
  %26 = icmp eq i32 %25, 8
  %27 = or i1 %24, %26
  %28 = and i32 %22, 16777471
  %29 = icmp eq i32 %28, 16777226
  %30 = or i1 %29, %27
  br i1 %30, label %31, label %122

31:                                               ; preds = %20
  %32 = and i32 %22, 2098176
  %33 = icmp eq i32 %32, 1024
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load ptr, ptr %18, align 8, !tbaa !62
  %36 = getelementptr inbounds %struct.xpv, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !63
  store i64 %37, ptr %4, align 8, !tbaa !66
  %38 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  br label %46

40:                                               ; preds = %31
  %41 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %18, ptr noundef nonnull %4, i32 noundef 2) #10
  %42 = load i64, ptr %4, align 8, !tbaa !66
  %43 = load ptr, ptr %17, align 8, !tbaa !92
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !50
  br label %46

46:                                               ; preds = %40, %34
  %47 = phi i32 [ %22, %34 ], [ %45, %40 ]
  %48 = phi i64 [ %37, %34 ], [ %42, %40 ]
  %49 = phi ptr [ %39, %34 ], [ %41, %40 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 %48
  %51 = and i32 %47, 536870912
  %52 = icmp sgt i64 %48, 0
  br i1 %52, label %53, label %116

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 8
  %55 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 11
  %56 = getelementptr inbounds %struct.token_pos, ptr %7, i64 0, i32 1
  %57 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 21
  %58 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 10
  br label %59

59:                                               ; preds = %53, %87
  %60 = phi ptr [ %49, %53 ], [ %88, %87 ]
  %61 = load ptr, ptr %54, align 8, !tbaa !106
  %62 = icmp eq ptr %61, null
  br i1 %62, label %90, label %63

63:                                               ; preds = %59
  %64 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(10) @.str.57) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %116, label %66

66:                                               ; preds = %63
  %67 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(4) @.str.58) #12
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %116, label %69

69:                                               ; preds = %66
  %70 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(7) @.str.59) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %116, label %72

72:                                               ; preds = %69
  %73 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(9) @.str.60) #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %116, label %75

75:                                               ; preds = %72
  %76 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(7) @.str.61) #12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(6) @.str.62) #12
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78, %75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  store ptr %61, ptr %7, align 8, !tbaa !107
  %82 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %61) #12
  %83 = getelementptr inbounds i8, ptr %61, i64 %82
  store ptr %83, ptr %56, align 8, !tbaa !109
  call fastcc void @report_event(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %8, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %7, i32 noundef 1, ptr noundef %2) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %85

84:                                               ; preds = %78
  store ptr %61, ptr %55, align 8, !tbaa !110
  br label %85

85:                                               ; preds = %84, %81
  store ptr null, ptr %54, align 8, !tbaa !106
  %86 = call fastcc ptr @parse_buf(ptr noundef %0, ptr noundef %60, ptr noundef nonnull %50, i32 noundef %51, ptr noundef %2) #9
  br label %87

87:                                               ; preds = %85, %99
  %88 = phi ptr [ %86, %85 ], [ %100, %99 ]
  %89 = icmp ult ptr %88, %50
  br i1 %89, label %59, label %116, !llvm.loop !111

90:                                               ; preds = %59
  %91 = load i8, ptr %57, align 1, !tbaa !112, !range !60, !noundef !61
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = load i8, ptr %58, align 1, !tbaa !113, !range !60, !noundef !61
  %95 = icmp eq i8 %94, 0
  %96 = load i8, ptr %60, align 1, !tbaa !48
  %97 = icmp eq i8 %96, 60
  br i1 %95, label %98, label %101

98:                                               ; preds = %93
  br i1 %97, label %99, label %116

99:                                               ; preds = %98
  store i8 1, ptr %58, align 1, !tbaa !113
  %100 = call fastcc ptr @parse_buf(ptr noundef nonnull %0, ptr noundef nonnull %60, ptr noundef nonnull %50, i32 noundef %51, ptr noundef %2) #9
  br label %87

101:                                              ; preds = %93
  br i1 %97, label %102, label %116

102:                                              ; preds = %101
  %103 = getelementptr inbounds i8, ptr %60, i64 1
  %104 = icmp eq ptr %103, %50
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = load i8, ptr %103, align 1, !tbaa !48
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !48
  %110 = freeze i8 %109
  %111 = and i8 %110, 2
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  switch i8 %106, label %116 [
    i8 63, label %114
    i8 47, label %114
    i8 33, label %114
  ]

114:                                              ; preds = %102, %105, %113, %113, %113
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  store ptr %103, ptr %9, align 8, !tbaa !107
  %115 = getelementptr inbounds %struct.token_pos, ptr %9, i64 0, i32 1
  store ptr %50, ptr %115, align 8, !tbaa !109
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %60, ptr noundef nonnull %50, i32 noundef %51, ptr noundef nonnull %9, i32 noundef 1, ptr noundef %2) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  br label %120

116:                                              ; preds = %87, %72, %69, %66, %63, %90, %98, %46, %113, %101
  %117 = phi ptr [ %60, %113 ], [ %60, %101 ], [ %49, %46 ], [ %88, %87 ], [ %60, %72 ], [ %60, %69 ], [ %60, %66 ], [ %60, %63 ], [ %60, %90 ], [ %60, %98 ]
  %118 = icmp ult ptr %117, %50
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %117, ptr noundef nonnull %50, i32 noundef %51, ptr noundef null, i32 noundef 0, ptr noundef %2) #9
  br label %120

120:                                              ; preds = %114, %119, %116
  %121 = load ptr, ptr %17, align 8, !tbaa !92
  call fastcc void @S_SvREFCNT_dec(ptr noundef %121) #9
  store ptr null, ptr %17, align 8, !tbaa !92
  br label %122

122:                                              ; preds = %20, %120, %16
  %123 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %124 = load ptr, ptr %123, align 8, !tbaa !93
  %125 = icmp eq ptr %124, null
  br i1 %125, label %138, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !50
  %129 = and i32 %128, 65280
  %130 = icmp ne i32 %129, 0
  %131 = and i32 %128, 255
  %132 = icmp eq i32 %131, 8
  %133 = or i1 %130, %132
  %134 = and i32 %128, 16777471
  %135 = icmp eq i32 %134, 16777226
  %136 = or i1 %135, %133
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  call fastcc void @flush_pending_text(ptr noundef nonnull %0, ptr noundef %2) #9
  br label %138

138:                                              ; preds = %126, %137, %122
  %139 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 39
  %140 = load ptr, ptr %139, align 8, !tbaa !100
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %140) #9
  store ptr null, ptr %139, align 8, !tbaa !100
  br label %143

143:                                              ; preds = %142, %138
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %2) #9
  %144 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 2
  store i64 0, ptr %144, align 8, !tbaa !114
  %145 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 3
  %146 = load i64, ptr %145, align 8, !tbaa !115
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %143
  store i64 1, ptr %145, align 8, !tbaa !115
  br label %149

149:                                              ; preds = %148, %143
  %150 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 4
  store i64 0, ptr %150, align 8, !tbaa !116
  store i8 0, ptr %10, align 8, !tbaa !105
  %151 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 8
  store ptr null, ptr %151, align 8, !tbaa !106
  %152 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  store i8 0, ptr %152, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  br label %347

153:                                              ; preds = %14
  %154 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 29
  %155 = load i8, ptr %154, align 1, !tbaa !118, !range !60, !noundef !61
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %1, i1 noundef zeroext false) #10
  br label %159

159:                                              ; preds = %157, %153
  %160 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !92
  %162 = icmp eq ptr %161, null
  br i1 %162, label %195, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.sv, ptr %161, i64 0, i32 2
  %165 = load i32, ptr %164, align 4, !tbaa !50
  %166 = and i32 %165, 65280
  %167 = icmp ne i32 %166, 0
  %168 = and i32 %165, 255
  %169 = icmp eq i32 %168, 8
  %170 = or i1 %167, %169
  %171 = and i32 %165, 16777471
  %172 = icmp eq i32 %171, 16777226
  %173 = or i1 %172, %170
  br i1 %173, label %174, label %195

174:                                              ; preds = %163
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %161, ptr noundef nonnull %1, i32 noundef 2) #10
  %175 = load ptr, ptr %160, align 8, !tbaa !92
  %176 = getelementptr inbounds %struct.sv, ptr %175, i64 0, i32 2
  %177 = load i32, ptr %176, align 4, !tbaa !50
  %178 = and i32 %177, 2098176
  %179 = icmp eq i32 %178, 1024
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = load ptr, ptr %175, align 8, !tbaa !62
  %182 = getelementptr inbounds %struct.xpv, ptr %181, i64 0, i32 2
  %183 = load i64, ptr %182, align 8, !tbaa !63
  store i64 %183, ptr %4, align 8, !tbaa !66
  %184 = getelementptr inbounds %struct.sv, ptr %175, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !48
  br label %191

186:                                              ; preds = %174
  %187 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %175, ptr noundef nonnull %4, i32 noundef 2) #10
  %188 = load ptr, ptr %160, align 8, !tbaa !92
  %189 = getelementptr inbounds %struct.sv, ptr %188, i64 0, i32 2
  %190 = load i32, ptr %189, align 4, !tbaa !50
  br label %191

191:                                              ; preds = %186, %180
  %192 = phi i32 [ %177, %180 ], [ %190, %186 ]
  %193 = phi ptr [ %185, %180 ], [ %187, %186 ]
  %194 = and i32 %192, 536870912
  br label %286

195:                                              ; preds = %163, %159
  %196 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %197 = load i32, ptr %196, align 4, !tbaa !50
  %198 = and i32 %197, 2098176
  %199 = icmp eq i32 %198, 1024
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load ptr, ptr %1, align 8, !tbaa !62
  %202 = getelementptr inbounds %struct.xpv, ptr %201, i64 0, i32 2
  %203 = load i64, ptr %202, align 8, !tbaa !63
  store i64 %203, ptr %4, align 8, !tbaa !66
  %204 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !48
  br label %209

206:                                              ; preds = %195
  %207 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 2) #10
  %208 = load i32, ptr %196, align 4, !tbaa !50
  br label %209

209:                                              ; preds = %206, %200
  %210 = phi i32 [ %197, %200 ], [ %208, %206 ]
  %211 = phi ptr [ %205, %200 ], [ %207, %206 ]
  %212 = and i32 %210, 536870912
  %213 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 2
  %214 = load i64, ptr %213, align 8, !tbaa !114
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %286

216:                                              ; preds = %209
  %217 = load i8, ptr @PL_dowarn, align 1, !tbaa !48
  %218 = and i8 %217, 1
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %286, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 35
  %222 = load i32, ptr %221, align 8, !tbaa !119
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %254, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 26
  %226 = load i8, ptr %225, align 2, !tbaa !120, !range !60, !noundef !61
  %227 = icmp ne i8 %226, 0
  %228 = icmp eq i32 %222, 7
  %229 = and i1 %228, %227
  br i1 %229, label %254, label %230

230:                                              ; preds = %224
  %231 = load i8, ptr %154, align 1, !tbaa !118, !range !60, !noundef !61
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %254

233:                                              ; preds = %230
  %234 = icmp eq i32 %212, 0
  %235 = load i64, ptr %4, align 8
  %236 = icmp ugt i64 %235, 2
  %237 = select i1 %234, i1 %236, i1 false
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %211, ptr noundef nonnull dereferenceable(4) @.str.63, i64 noundef 3) #12
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %253, label %249

241:                                              ; preds = %233
  %242 = icmp ne i32 %212, 0
  %243 = icmp ugt i64 %235, 5
  %244 = select i1 %242, i1 %243, i1 false
  br i1 %244, label %245, label %248

245:                                              ; preds = %241
  %246 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %211, ptr noundef nonnull dereferenceable(7) @.str.64, i64 noundef 6) #12
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %253, label %254

248:                                              ; preds = %241
  br i1 %242, label %254, label %249

249:                                              ; preds = %238, %248
  %250 = call fastcc zeroext i1 @probably_utf8_chunk(ptr noundef %211, i64 noundef %235) #9
  br i1 %250, label %253, label %251

251:                                              ; preds = %249
  %252 = load i64, ptr %4, align 8
  br label %263

253:                                              ; preds = %249, %245, %238
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.65) #10
  br label %254

254:                                              ; preds = %245, %224, %253, %248, %230, %220
  %255 = icmp ne i32 %212, 0
  %256 = load i64, ptr %4, align 8
  %257 = icmp ugt i64 %256, 1
  %258 = select i1 %255, i1 %257, i1 false
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %211, ptr noundef nonnull dereferenceable(3) @.str.66, i64 noundef 2) #12
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %286

262:                                              ; preds = %259
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.67) #10
  br label %286

263:                                              ; preds = %251, %254
  %264 = phi i64 [ %252, %251 ], [ %256, %254 ]
  %265 = icmp eq i32 %212, 0
  %266 = icmp ugt i64 %264, 3
  %267 = select i1 %265, i1 %266, i1 false
  br i1 %267, label %268, label %275

268:                                              ; preds = %263
  %269 = load i8, ptr %211, align 1
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %211, ptr noundef nonnull dereferenceable(3) @.str.69, i64 noundef 4) #12
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271, %268
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.70) #10
  br label %286

275:                                              ; preds = %271, %263
  %276 = phi i1 [ true, %271 ], [ %265, %263 ]
  %277 = icmp ugt i64 %264, 1
  %278 = select i1 %276, i1 %277, i1 false
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %211, ptr noundef nonnull dereferenceable(3) @.str.71, i64 noundef 2) #12
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %279
  %283 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %211, ptr noundef nonnull dereferenceable(3) @.str.66, i64 noundef 2) #12
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282, %279
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.72) #10
  br label %286

286:                                              ; preds = %259, %262, %209, %216, %275, %282, %285, %274, %191
  %287 = phi ptr [ %193, %191 ], [ %211, %282 ], [ %211, %285 ], [ %211, %275 ], [ %211, %274 ], [ %211, %216 ], [ %211, %209 ], [ %211, %262 ], [ %211, %259 ]
  %288 = phi i32 [ %194, %191 ], [ 0, %282 ], [ 0, %285 ], [ %212, %275 ], [ 0, %274 ], [ %212, %216 ], [ %212, %209 ], [ %212, %262 ], [ %212, %259 ]
  %289 = load i64, ptr %4, align 8, !tbaa !66
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %347, label %291

291:                                              ; preds = %286
  %292 = getelementptr inbounds i8, ptr %287, i64 %289
  %293 = call fastcc ptr @parse_buf(ptr noundef nonnull %0, ptr noundef %287, ptr noundef nonnull %292, i32 noundef %288, ptr noundef %2) #9
  %294 = icmp eq ptr %293, %292
  br i1 %294, label %299, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 7
  %297 = load i8, ptr %296, align 2, !tbaa !65, !range !60, !noundef !61
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %310, label %299

299:                                              ; preds = %295, %291
  %300 = load ptr, ptr %160, align 8, !tbaa !92
  %301 = icmp eq ptr %300, null
  br i1 %301, label %347, label %302

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.sv, ptr %300, i64 0, i32 2
  %304 = load i32, ptr %303, align 4, !tbaa !50
  %305 = and i32 %304, 1610547455
  store i32 %305, ptr %303, align 4, !tbaa !50
  %306 = and i32 %304, 33554432
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %347, label %308

308:                                              ; preds = %302
  %309 = call i32 @Perl_sv_backoff(ptr noundef nonnull %300) #10
  br label %347

310:                                              ; preds = %295
  %311 = load ptr, ptr %160, align 8, !tbaa !92
  %312 = icmp eq ptr %311, null
  br i1 %312, label %337, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.sv, ptr %311, i64 0, i32 2
  %315 = load i32, ptr %314, align 4, !tbaa !50
  %316 = and i32 %315, 65280
  %317 = icmp ne i32 %316, 0
  %318 = and i32 %315, 255
  %319 = icmp eq i32 %318, 8
  %320 = or i1 %317, %319
  %321 = and i32 %315, 16777471
  %322 = icmp eq i32 %321, 16777226
  %323 = or i1 %322, %320
  br i1 %323, label %324, label %325

324:                                              ; preds = %313
  call void @Perl_sv_chop(ptr noundef nonnull %311, ptr noundef %293) #10
  br label %347

325:                                              ; preds = %313
  %326 = ptrtoint ptr %292 to i64
  %327 = ptrtoint ptr %293 to i64
  %328 = sub i64 %326, %327
  call void @Perl_sv_setpvn(ptr noundef nonnull %311, ptr noundef %293, i64 noundef %328) #10
  %329 = icmp eq i32 %288, 0
  %330 = load ptr, ptr %160, align 8, !tbaa !92
  %331 = getelementptr inbounds %struct.sv, ptr %330, i64 0, i32 2
  %332 = load i32, ptr %331, align 4, !tbaa !50
  br i1 %329, label %335, label %333

333:                                              ; preds = %325
  %334 = or i32 %332, 536870912
  store i32 %334, ptr %331, align 4, !tbaa !50
  br label %347

335:                                              ; preds = %325
  %336 = and i32 %332, -536870913
  store i32 %336, ptr %331, align 4, !tbaa !50
  br label %347

337:                                              ; preds = %310
  %338 = ptrtoint ptr %292 to i64
  %339 = ptrtoint ptr %293 to i64
  %340 = sub i64 %338, %339
  %341 = call ptr @Perl_newSVpv(ptr noundef %293, i64 noundef %340) #10
  store ptr %341, ptr %160, align 8, !tbaa !92
  %342 = icmp eq i32 %288, 0
  br i1 %342, label %347, label %343

343:                                              ; preds = %337
  %344 = getelementptr inbounds %struct.sv, ptr %341, i64 0, i32 2
  %345 = load i32, ptr %344, align 4, !tbaa !50
  %346 = or i32 %345, 536870912
  store i32 %346, ptr %344, align 4, !tbaa !50
  br label %347

347:                                              ; preds = %299, %337, %343, %324, %335, %333, %308, %302, %286, %149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_pstate_iv(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !121 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !50
  %4 = and i32 %3, 14680064
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 126) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1, %6
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #10
  unreachable

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #10
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i32, ptr %12, align 8, !tbaa !52
  %17 = icmp eq i32 %16, 369695076
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56, ptr noundef nonnull %12) #10
  br label %19

19:                                               ; preds = %18, %15
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @report_event(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 !prof !34 !PGOFuncName !122 {
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %3 to i64
  %11 = alloca i64, align 8
  %12 = alloca %struct.token_pos, align 8
  %13 = alloca i8, align 1
  %14 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  %15 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 7
  %16 = load i8, ptr %15, align 2, !tbaa !65, !range !60, !noundef !61
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %1153

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !114
  %21 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa !115
  %23 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !116
  %25 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  %27 = freeze ptr %26
  %28 = icmp eq ptr %27, null
  %29 = icmp eq i32 %1, 4
  br i1 %28, label %36, label %30

30:                                               ; preds = %18
  switch i32 %1, label %31 [
    i32 4, label %36
    i32 1, label %36
  ]

31:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #11
  store ptr %27, ptr %12, align 8, !tbaa !107
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #12
  %33 = getelementptr inbounds i8, ptr %27, i64 %32
  %34 = getelementptr inbounds %struct.token_pos, ptr %12, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !109
  store ptr null, ptr %25, align 8, !tbaa !110
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %13, ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %12, i32 noundef 1, ptr noundef %7) #9
  %35 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  br label %36

36:                                               ; preds = %30, %30, %18, %31
  %37 = phi ptr [ %35, %31 ], [ %14, %30 ], [ %14, %18 ], [ %14, %30 ]
  %38 = icmp eq i32 %4, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i64 @Perl_utf8_distance(ptr noundef %3, ptr noundef %2) #10
  br label %43

41:                                               ; preds = %36
  %42 = sub i64 %10, %9
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %40, %39 ], [ %42, %41 ]
  %45 = load i64, ptr %19, align 8, !tbaa !114
  %46 = add i64 %45, %44
  store i64 %46, ptr %19, align 8, !tbaa !114
  %47 = icmp eq i64 %22, 0
  br i1 %47, label %84, label %48

48:                                               ; preds = %43
  %49 = icmp ult ptr %2, %3
  br i1 %49, label %50, label %73

50:                                               ; preds = %48, %58
  %51 = phi ptr [ %60, %58 ], [ %2, %48 ]
  %52 = phi ptr [ %59, %58 ], [ null, %48 ]
  %53 = load i8, ptr %51, align 1, !tbaa !48
  %54 = icmp eq i8 %53, 10
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i64, ptr %21, align 8, !tbaa !115
  %57 = add i64 %56, 1
  store i64 %57, ptr %21, align 8, !tbaa !115
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi ptr [ %51, %55 ], [ %52, %50 ]
  %60 = getelementptr inbounds i8, ptr %51, i64 1
  %61 = icmp eq ptr %60, %3
  br i1 %61, label %62, label %50, !llvm.loop !123

62:                                               ; preds = %58
  %63 = icmp eq ptr %59, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %62
  br i1 %38, label %67, label %65

65:                                               ; preds = %64
  %66 = call i64 @Perl_utf8_distance(ptr noundef nonnull %3, ptr noundef nonnull %59) #10
  br label %70

67:                                               ; preds = %64
  %68 = ptrtoint ptr %59 to i64
  %69 = sub i64 %10, %68
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi i64 [ %66, %65 ], [ %69, %67 ]
  %72 = add nsw i64 %71, -1
  br label %82

73:                                               ; preds = %48, %62
  br i1 %38, label %76, label %74

74:                                               ; preds = %73
  %75 = call i64 @Perl_utf8_distance(ptr noundef %3, ptr noundef %2) #10
  br label %78

76:                                               ; preds = %73
  %77 = sub i64 %10, %9
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i64 [ %75, %74 ], [ %77, %76 ]
  %80 = load i64, ptr %23, align 8, !tbaa !116
  %81 = add i64 %80, %79
  br label %82

82:                                               ; preds = %78, %70
  %83 = phi i64 [ %81, %78 ], [ %72, %70 ]
  store i64 %83, ptr %23, align 8, !tbaa !116
  br label %84

84:                                               ; preds = %82, %43
  %85 = icmp eq i32 %1, 10
  br i1 %85, label %1113, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 18
  %88 = load i32, ptr %87, align 8, !tbaa !124
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %1113, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 37
  %92 = load ptr, ptr %91, align 8, !tbaa !98
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 36
  %96 = load ptr, ptr %95, align 8, !tbaa !97
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 38
  %100 = load ptr, ptr %99, align 8, !tbaa !99
  %101 = icmp eq ptr %100, null
  br i1 %101, label %174, label %102

102:                                              ; preds = %98, %94, %90
  %103 = icmp eq i32 %1, 2
  %104 = and i32 %1, -2
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %170

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 42
  %108 = load ptr, ptr %107, align 8, !tbaa !56
  %109 = load ptr, ptr %5, align 8, !tbaa !107
  %110 = getelementptr inbounds %struct.token_pos, ptr %5, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !109
  %112 = ptrtoint ptr %111 to i64
  %113 = ptrtoint ptr %109 to i64
  %114 = sub i64 %112, %113
  call void @Perl_sv_setpvn(ptr noundef %108, ptr noundef %109, i64 noundef %114) #10
  %115 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !50
  %117 = and i32 %116, -536870913
  %118 = select i1 %38, i32 0, i32 536870912
  %119 = or disjoint i32 %117, %118
  store i32 %119, ptr %115, align 4, !tbaa !50
  %120 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %121 = load i8, ptr %120, align 4, !tbaa !125, !range !60, !noundef !61
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %106
  %124 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %125 = load i8, ptr %124, align 1, !tbaa !126, !range !60, !noundef !61
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call fastcc ptr @sv_lower(ptr noundef nonnull %108) #9
  br label %129

129:                                              ; preds = %127, %123, %106
  %130 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 39
  %131 = load ptr, ptr %130, align 8, !tbaa !100
  %132 = icmp eq ptr %131, null
  br i1 %132, label %146, label %133

133:                                              ; preds = %129
  %134 = call i32 @Perl_sv_eq_flags(ptr noundef nonnull %131, ptr noundef nonnull %108, i32 noundef 2) #10
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %1113, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 40
  %138 = load i32, ptr %137, align 8, !tbaa !127
  br i1 %103, label %139, label %141

139:                                              ; preds = %136
  %140 = add nsw i32 %138, 1
  store i32 %140, ptr %137, align 8, !tbaa !127
  br label %1113

141:                                              ; preds = %136
  %142 = add nsw i32 %138, -1
  store i32 %142, ptr %137, align 8, !tbaa !127
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %1113

144:                                              ; preds = %141
  %145 = load ptr, ptr %130, align 8, !tbaa !100
  call fastcc void @S_SvREFCNT_dec(ptr noundef %145) #9
  store ptr null, ptr %130, align 8, !tbaa !100
  br label %1113

146:                                              ; preds = %129
  %147 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 38
  %148 = load ptr, ptr %147, align 8, !tbaa !99
  %149 = icmp eq ptr %148, null
  br i1 %149, label %157, label %150

150:                                              ; preds = %146
  %151 = call ptr @Perl_hv_common(ptr noundef nonnull %148, ptr noundef nonnull %108, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  br i1 %103, label %154, label %1113

154:                                              ; preds = %153
  %155 = call ptr @Perl_newSVsv(ptr noundef nonnull %108) #10
  store ptr %155, ptr %130, align 8, !tbaa !100
  %156 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 40
  store i32 1, ptr %156, align 8, !tbaa !127
  br label %1113

157:                                              ; preds = %150, %146
  %158 = load ptr, ptr %91, align 8, !tbaa !98
  %159 = icmp eq ptr %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = call ptr @Perl_hv_common(ptr noundef nonnull %158, ptr noundef nonnull %108, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %1113

163:                                              ; preds = %160, %157
  %164 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 36
  %165 = load ptr, ptr %164, align 8, !tbaa !97
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %163
  %168 = call ptr @Perl_hv_common(ptr noundef nonnull %165, ptr noundef nonnull %108, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %169 = icmp eq ptr %168, null
  br i1 %169, label %1113, label %174

170:                                              ; preds = %102
  %171 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 39
  %172 = load ptr, ptr %171, align 8, !tbaa !100
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %1113

174:                                              ; preds = %167, %163, %170, %98
  %175 = zext nneg i32 %1 to i64
  %176 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 34, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !81
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 34, i64 8
  %181 = load ptr, ptr %180, align 8, !tbaa !81
  %182 = icmp eq ptr %181, null
  br i1 %182, label %1113, label %183

183:                                              ; preds = %179, %174
  %184 = phi ptr [ %177, %174 ], [ %181, %179 ]
  %185 = phi ptr [ %176, %174 ], [ %180, %179 ]
  %186 = getelementptr inbounds %struct.sv, ptr %184, i64 0, i32 2
  %187 = load i32, ptr %186, align 4, !tbaa !50
  %188 = and i32 %187, 255
  %189 = icmp eq i32 %188, 11
  br i1 %189, label %241, label %190

190:                                              ; preds = %183
  %191 = and i32 %187, 2097152
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %184, i32 noundef 2) #10
  br i1 %194, label %241, label %1153

195:                                              ; preds = %190
  %196 = and i32 %187, 65280
  %197 = icmp ne i32 %196, 0
  %198 = icmp eq i32 %188, 8
  %199 = or i1 %197, %198
  %200 = and i32 %187, 16777471
  %201 = icmp eq i32 %200, 16777226
  %202 = or i1 %201, %199
  br i1 %202, label %203, label %1153

203:                                              ; preds = %195
  %204 = and i32 %187, 1024
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %220, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr %184, align 8, !tbaa !62
  %208 = icmp eq ptr %207, null
  br i1 %208, label %1153, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.xpv, ptr %207, i64 0, i32 2
  %211 = load i64, ptr %210, align 8, !tbaa !63
  %212 = icmp ugt i64 %211, 1
  br i1 %212, label %241, label %213

213:                                              ; preds = %209
  %214 = icmp eq i64 %211, 0
  br i1 %214, label %1153, label %215

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.sv, ptr %184, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !48
  %218 = load i8, ptr %217, align 1, !tbaa !48
  %219 = icmp eq i8 %218, 48
  br i1 %219, label %1153, label %241

220:                                              ; preds = %203
  %221 = and i32 %187, 768
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %239, label %223

223:                                              ; preds = %220
  %224 = and i32 %187, 256
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %223
  %227 = load ptr, ptr %184, align 8, !tbaa !62
  %228 = getelementptr inbounds %struct.xpviv, ptr %227, i64 0, i32 4
  %229 = load i64, ptr %228, align 8, !tbaa !48
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %226, %223
  %232 = and i32 %187, 512
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %1153, label %234

234:                                              ; preds = %231
  %235 = load ptr, ptr %184, align 8, !tbaa !62
  %236 = getelementptr inbounds %struct.xpvnv, ptr %235, i64 0, i32 5
  %237 = load double, ptr %236, align 8, !tbaa !48
  %238 = fcmp une double %237, 0.000000e+00
  br i1 %238, label %241, label %1153

239:                                              ; preds = %220
  %240 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %184, i32 noundef 0) #10
  br i1 %240, label %241, label %1153

241:                                              ; preds = %239, %234, %226, %215, %209, %193, %183
  %242 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 25
  %243 = load i8, ptr %242, align 1, !tbaa !128, !range !60, !noundef !61
  %244 = icmp ne i8 %243, 0
  %245 = and i1 %29, %244
  %246 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %247 = load ptr, ptr %246, align 8, !tbaa !93
  %248 = icmp eq ptr %247, null
  br i1 %245, label %249, label %307

249:                                              ; preds = %241
  br i1 %248, label %250, label %252

250:                                              ; preds = %249
  %251 = call ptr @Perl_newSV(i64 noundef 256) #10
  store ptr %251, ptr %246, align 8, !tbaa !93
  br label %252

252:                                              ; preds = %250, %249
  %253 = phi ptr [ %251, %250 ], [ %247, %249 ]
  %254 = getelementptr inbounds %struct.sv, ptr %253, i64 0, i32 2
  %255 = load i32, ptr %254, align 4, !tbaa !50
  %256 = and i32 %255, 65280
  %257 = icmp ne i32 %256, 0
  %258 = and i32 %255, 255
  %259 = icmp eq i32 %258, 8
  %260 = or i1 %257, %259
  %261 = and i32 %255, 16777471
  %262 = icmp eq i32 %261, 16777226
  %263 = or i1 %262, %260
  br i1 %263, label %264, label %272

264:                                              ; preds = %252
  %265 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %266 = load i8, ptr %265, align 8, !tbaa !117, !range !60, !noundef !61
  %267 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 13
  %268 = load i8, ptr %267, align 8, !tbaa !129, !range !60, !noundef !61
  %269 = icmp eq i8 %266, %268
  br i1 %269, label %285, label %270

270:                                              ; preds = %264
  call fastcc void @flush_pending_text(ptr noundef nonnull %0, ptr noundef %7) #9
  %271 = load ptr, ptr %246, align 8, !tbaa !93
  br label %272

272:                                              ; preds = %252, %270
  %273 = phi ptr [ %253, %252 ], [ %271, %270 ]
  %274 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 14
  store i64 %20, ptr %274, align 8, !tbaa !130
  %275 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 15
  store i64 %22, ptr %275, align 8, !tbaa !131
  %276 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 16
  store i64 %24, ptr %276, align 8, !tbaa !132
  %277 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %278 = load i8, ptr %277, align 8, !tbaa !117, !range !60, !noundef !61
  %279 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 13
  store i8 %278, ptr %279, align 8, !tbaa !129
  call void @Perl_sv_setpvn(ptr noundef %273, ptr noundef nonnull @.str.47, i64 noundef 0) #10
  %280 = load ptr, ptr %246, align 8, !tbaa !93
  %281 = getelementptr inbounds %struct.sv, ptr %280, i64 0, i32 2
  %282 = load i32, ptr %281, align 4, !tbaa !50
  br i1 %38, label %283, label %286

283:                                              ; preds = %272
  %284 = and i32 %282, -536870913
  store i32 %284, ptr %281, align 4, !tbaa !50
  br label %294

285:                                              ; preds = %264
  br i1 %38, label %294, label %286

286:                                              ; preds = %272, %285
  %287 = phi i32 [ %255, %285 ], [ %282, %272 ]
  %288 = phi ptr [ %253, %285 ], [ %280, %272 ]
  %289 = and i32 %287, 536870912
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %286
  %292 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef nonnull %288, i32 noundef 2, i64 noundef 0) #10
  %293 = load ptr, ptr %246, align 8, !tbaa !93
  br label %299

294:                                              ; preds = %283, %285
  %295 = phi i32 [ %284, %283 ], [ %255, %285 ]
  %296 = phi ptr [ %280, %283 ], [ %253, %285 ]
  %297 = and i32 %295, 536870912
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %286, %291, %294
  %300 = phi ptr [ %288, %286 ], [ %293, %291 ], [ %296, %294 ]
  %301 = sub i64 %10, %9
  call void @Perl_sv_catpvn_flags(ptr noundef %300, ptr noundef %2, i64 noundef %301, i32 noundef 2) #10
  br label %1153

302:                                              ; preds = %294
  %303 = sub i64 %10, %9
  %304 = call ptr @Perl_newSVpvn(ptr noundef %2, i64 noundef %303) #10
  %305 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %304, i32 noundef 2, i64 noundef 0) #10
  %306 = load ptr, ptr %246, align 8, !tbaa !93
  call void @Perl_sv_catsv_flags(ptr noundef %306, ptr noundef %304, i32 noundef 2) #10
  call fastcc void @S_SvREFCNT_dec(ptr noundef %304) #9
  br label %1153

307:                                              ; preds = %241
  br i1 %248, label %321, label %308

308:                                              ; preds = %307
  %309 = getelementptr inbounds %struct.sv, ptr %247, i64 0, i32 2
  %310 = load i32, ptr %309, align 4, !tbaa !50
  %311 = and i32 %310, 65280
  %312 = icmp ne i32 %311, 0
  %313 = and i32 %310, 255
  %314 = icmp eq i32 %313, 8
  %315 = or i1 %312, %314
  %316 = and i32 %310, 16777471
  %317 = icmp eq i32 %316, 16777226
  %318 = or i1 %317, %315
  br i1 %318, label %319, label %321

319:                                              ; preds = %308
  call fastcc void @flush_pending_text(ptr noundef nonnull %0, ptr noundef %7) #9
  %320 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !43
  br label %321

321:                                              ; preds = %308, %307, %319
  %322 = phi ptr [ %320, %319 ], [ %37, %307 ], [ %37, %308 ]
  %323 = getelementptr inbounds %struct.p_handler, ptr %185, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !83
  %325 = icmp eq ptr %324, null
  br i1 %325, label %339, label %326

326:                                              ; preds = %321
  %327 = getelementptr inbounds %struct.sv, ptr %324, i64 0, i32 2
  %328 = load i32, ptr %327, align 4, !tbaa !50
  %329 = and i32 %328, 2098176
  %330 = icmp eq i32 %329, 1024
  br i1 %330, label %331, label %337

331:                                              ; preds = %326
  %332 = load ptr, ptr %324, align 8, !tbaa !62
  %333 = getelementptr inbounds %struct.xpv, ptr %332, i64 0, i32 2
  %334 = load i64, ptr %333, align 8, !tbaa !63
  store i64 %334, ptr %11, align 8, !tbaa !66
  %335 = getelementptr inbounds %struct.sv, ptr %324, i64 0, i32 3
  %336 = load ptr, ptr %335, align 8, !tbaa !48
  br label %339

337:                                              ; preds = %326
  %338 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %324, ptr noundef nonnull %11, i32 noundef 2) #10
  br label %339

339:                                              ; preds = %321, %331, %337
  %340 = phi ptr [ %336, %331 ], [ %338, %337 ], [ @.str.47, %321 ]
  %341 = load ptr, ptr %185, align 8, !tbaa !81
  %342 = getelementptr inbounds %struct.sv, ptr %341, i64 0, i32 2
  %343 = load i32, ptr %342, align 4, !tbaa !50
  %344 = and i32 %343, 255
  %345 = icmp eq i32 %344, 11
  %346 = load i8, ptr %340, align 1, !tbaa !48
  %347 = icmp eq i8 %346, 22
  br i1 %345, label %348, label %353

348:                                              ; preds = %339
  br i1 %347, label %349, label %351

349:                                              ; preds = %348
  %350 = getelementptr inbounds i8, ptr %340, i64 1
  br label %371

351:                                              ; preds = %348
  %352 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  br label %371

353:                                              ; preds = %339
  %354 = zext i1 %347 to i64
  %355 = getelementptr inbounds i8, ptr %340, i64 %354
  call void @Perl_push_scope() #10
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #10
  %356 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !66
  store i64 %356, ptr @PL_tmps_floor, align 8, !tbaa !66
  %357 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %358 = getelementptr inbounds i32, ptr %357, i64 1
  store ptr %358, ptr @PL_markstack_ptr, align 8, !tbaa !43
  %359 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !43
  %360 = icmp eq ptr %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %353
  %362 = call ptr @Perl_markstack_grow() #10
  br label %363

363:                                              ; preds = %353, %361
  %364 = phi ptr [ %362, %361 ], [ %358, %353 ]
  %365 = load ptr, ptr @PL_stack_base, align 8, !tbaa !43
  %366 = ptrtoint ptr %322 to i64
  %367 = ptrtoint ptr %365 to i64
  %368 = sub i64 %366, %367
  %369 = lshr exact i64 %368, 3
  %370 = trunc i64 %369 to i32
  store i32 %370, ptr %364, align 4, !tbaa !44
  br label %371

371:                                              ; preds = %349, %351, %363
  %372 = phi ptr [ %350, %349 ], [ %340, %351 ], [ %355, %363 ]
  %373 = phi ptr [ %341, %349 ], [ %352, %351 ], [ null, %363 ]
  %374 = getelementptr inbounds [9 x ptr], ptr @event_id_str, i64 0, i64 %175
  %375 = sub i64 %10, %9
  %376 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 17
  %377 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %378 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 29
  %379 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 41
  %380 = icmp eq i32 %1, 2
  %381 = icmp sgt i32 %6, 1
  %382 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %383 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %384 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 32
  %385 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 26
  %386 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 33
  %387 = icmp eq ptr %373, null
  %388 = icmp sgt i32 %6, 0
  %389 = getelementptr inbounds %struct.token_pos, ptr %5, i64 0, i32 1
  %390 = icmp ne i32 %1, 2
  %391 = getelementptr inbounds i8, ptr @.str.73, i64 %175
  %392 = shl nuw nsw i32 %6, 1
  %393 = zext nneg i32 %392 to i64
  %394 = zext i32 %6 to i64
  br label %395

395:                                              ; preds = %780, %371
  %396 = phi ptr [ %372, %371 ], [ %783, %780 ]
  %397 = phi ptr [ %322, %371 ], [ %782, %780 ]
  %398 = load i8, ptr %396, align 1, !tbaa !48
  switch i8 %398, label %748 [
    i8 0, label %784
    i8 1, label %399
    i8 2, label %401
    i8 3, label %436
    i8 4, label %475
    i8 5, label %475
    i8 6, label %475
    i8 7, label %502
    i8 8, label %502
    i8 9, label %626
    i8 10, label %658
    i8 11, label %665
    i8 12, label %690
    i8 13, label %695
    i8 14, label %699
    i8 15, label %702
    i8 16, label %710
    i8 17, label %717
    i8 18, label %720
    i8 19, label %723
    i8 21, label %727
    i8 20, label %746
  ]

399:                                              ; preds = %395
  %400 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %7, i32 noundef 2) #10
  br label %754

401:                                              ; preds = %395
  br i1 %388, label %402, label %759

402:                                              ; preds = %401
  %403 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  call void @Perl_av_extend(ptr noundef %403, i64 noundef %394) #10
  br label %404

404:                                              ; preds = %402, %428
  %405 = phi i64 [ 0, %402 ], [ %431, %428 ]
  %406 = phi ptr [ @PL_sv_undef, %402 ], [ %430, %428 ]
  %407 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %405
  %408 = load ptr, ptr %407, align 8, !tbaa !107
  %409 = icmp eq ptr %408, null
  br i1 %409, label %421, label %410

410:                                              ; preds = %404
  %411 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %405, i32 1
  %412 = load ptr, ptr %411, align 8, !tbaa !109
  %413 = ptrtoint ptr %412 to i64
  %414 = ptrtoint ptr %408 to i64
  %415 = sub i64 %413, %414
  %416 = call ptr @Perl_newSVpvn(ptr noundef nonnull %408, i64 noundef %415) #10
  br i1 %38, label %428, label %417

417:                                              ; preds = %410
  %418 = getelementptr inbounds %struct.sv, ptr %416, i64 0, i32 2
  %419 = load i32, ptr %418, align 4, !tbaa !50
  %420 = or i32 %419, 536870912
  store i32 %420, ptr %418, align 4, !tbaa !50
  br label %428

421:                                              ; preds = %404
  %422 = load ptr, ptr %386, align 8, !tbaa !73
  %423 = icmp eq ptr %422, null
  br i1 %423, label %426, label %424

424:                                              ; preds = %421
  %425 = call ptr @Perl_newSVsv(ptr noundef nonnull %422) #10
  br label %428

426:                                              ; preds = %421
  %427 = call ptr @Perl_newSVsv(ptr noundef %406) #10
  br label %428

428:                                              ; preds = %424, %426, %410, %417
  %429 = phi ptr [ %416, %417 ], [ %416, %410 ], [ %425, %424 ], [ %427, %426 ]
  %430 = phi ptr [ %416, %417 ], [ %416, %410 ], [ %406, %424 ], [ %406, %426 ]
  call void @Perl_av_push(ptr noundef %403, ptr noundef %429) #10
  %431 = add nuw nsw i64 %405, 1
  %432 = icmp eq i64 %431, %394
  br i1 %432, label %433, label %404, !llvm.loop !133

433:                                              ; preds = %428
  %434 = call ptr @Perl_newRV_noinc(ptr noundef %403) #10
  %435 = call ptr @Perl_sv_2mortal(ptr noundef %434) #10
  br label %754

436:                                              ; preds = %395
  br i1 %388, label %437, label %759

437:                                              ; preds = %436
  %438 = load ptr, ptr %5, align 8, !tbaa !107
  %439 = icmp ult ptr %438, %2
  br i1 %439, label %759, label %440

440:                                              ; preds = %437
  %441 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  call void @Perl_av_extend(ptr noundef %441, i64 noundef %393) #10
  br label %442

442:                                              ; preds = %440, %467
  %443 = phi i64 [ 0, %440 ], [ %470, %467 ]
  %444 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %443
  %445 = load ptr, ptr %444, align 8, !tbaa !107
  %446 = icmp eq ptr %445, null
  br i1 %446, label %465, label %447

447:                                              ; preds = %442
  br i1 %38, label %450, label %448

448:                                              ; preds = %447
  %449 = call i64 @Perl_utf8_distance(ptr noundef nonnull %445, ptr noundef %2) #10
  br label %453

450:                                              ; preds = %447
  %451 = ptrtoint ptr %445 to i64
  %452 = sub i64 %451, %9
  br label %453

453:                                              ; preds = %450, %448
  %454 = phi i64 [ %449, %448 ], [ %452, %450 ]
  %455 = call ptr @Perl_newSViv(i64 noundef %454) #10
  call void @Perl_av_push(ptr noundef %441, ptr noundef %455) #10
  %456 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %443, i32 1
  %457 = load ptr, ptr %456, align 8, !tbaa !109
  %458 = load ptr, ptr %444, align 8, !tbaa !107
  br i1 %38, label %461, label %459

459:                                              ; preds = %453
  %460 = call i64 @Perl_utf8_distance(ptr noundef %457, ptr noundef %458) #10
  br label %467

461:                                              ; preds = %453
  %462 = ptrtoint ptr %457 to i64
  %463 = ptrtoint ptr %458 to i64
  %464 = sub i64 %462, %463
  br label %467

465:                                              ; preds = %442
  %466 = call ptr @Perl_newSViv(i64 noundef 0) #10
  call void @Perl_av_push(ptr noundef %441, ptr noundef %466) #10
  br label %467

467:                                              ; preds = %459, %461, %465
  %468 = phi i64 [ 0, %465 ], [ %460, %459 ], [ %464, %461 ]
  %469 = call ptr @Perl_newSViv(i64 noundef %468) #10
  call void @Perl_av_push(ptr noundef %441, ptr noundef %469) #10
  %470 = add nuw nsw i64 %443, 1
  %471 = icmp eq i64 %470, %394
  br i1 %471, label %472, label %442, !llvm.loop !134

472:                                              ; preds = %467
  %473 = call ptr @Perl_newRV_noinc(ptr noundef %441) #10
  %474 = call ptr @Perl_sv_2mortal(ptr noundef %473) #10
  br label %754

475:                                              ; preds = %395, %395, %395
  br i1 %388, label %476, label %759

476:                                              ; preds = %475
  %477 = load ptr, ptr %5, align 8, !tbaa !107
  %478 = load ptr, ptr %389, align 8, !tbaa !109
  %479 = ptrtoint ptr %478 to i64
  %480 = ptrtoint ptr %477 to i64
  %481 = sub i64 %479, %480
  %482 = call ptr @Perl_newSVpvn(ptr noundef %477, i64 noundef %481) #10
  %483 = call ptr @Perl_sv_2mortal(ptr noundef %482) #10
  br i1 %38, label %488, label %484

484:                                              ; preds = %476
  %485 = getelementptr inbounds %struct.sv, ptr %483, i64 0, i32 2
  %486 = load i32, ptr %485, align 4, !tbaa !50
  %487 = or i32 %486, 536870912
  store i32 %487, ptr %485, align 4, !tbaa !50
  br label %488

488:                                              ; preds = %484, %476
  %489 = load i8, ptr %382, align 4, !tbaa !125, !range !60, !noundef !61
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %491, label %498

491:                                              ; preds = %488
  %492 = load i8, ptr %383, align 1, !tbaa !126, !range !60, !noundef !61
  %493 = icmp eq i8 %492, 0
  %494 = icmp ne i8 %398, 4
  %495 = and i1 %494, %493
  br i1 %495, label %496, label %498

496:                                              ; preds = %491
  %497 = call fastcc ptr @sv_lower(ptr noundef %483) #9
  br label %498

498:                                              ; preds = %496, %491, %488
  %499 = icmp eq i8 %398, 6
  %500 = and i1 %390, %499
  br i1 %500, label %501, label %754

501:                                              ; preds = %498
  call void @Perl_sv_insert_flags(ptr noundef %483, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %391, i64 noundef 1, i32 noundef 2) #10
  br label %754

502:                                              ; preds = %395, %395
  br i1 %380, label %503, label %624

503:                                              ; preds = %502
  %504 = icmp eq i8 %398, 7
  br i1 %504, label %505, label %509

505:                                              ; preds = %503
  %506 = call ptr @Perl_newSV_type(i32 noundef 12) #10
  %507 = call ptr @Perl_newRV_noinc(ptr noundef %506) #10
  %508 = call ptr @Perl_sv_2mortal(ptr noundef %507) #10
  br label %509

509:                                              ; preds = %503, %505
  %510 = phi ptr [ %508, %505 ], [ null, %503 ]
  %511 = phi ptr [ %506, %505 ], [ null, %503 ]
  br i1 %381, label %512, label %752

512:                                              ; preds = %509, %619
  %513 = phi i64 [ %621, %619 ], [ 1, %509 ]
  %514 = phi ptr [ %620, %619 ], [ %397, %509 ]
  %515 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %513
  %516 = load ptr, ptr %515, align 8, !tbaa !107
  %517 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %513, i32 1
  %518 = load ptr, ptr %517, align 8, !tbaa !109
  %519 = ptrtoint ptr %518 to i64
  %520 = ptrtoint ptr %516 to i64
  %521 = sub i64 %519, %520
  %522 = call ptr @Perl_newSVpvn(ptr noundef %516, i64 noundef %521) #10
  br i1 %38, label %527, label %523

523:                                              ; preds = %512
  %524 = getelementptr inbounds %struct.sv, ptr %522, i64 0, i32 2
  %525 = load i32, ptr %524, align 4, !tbaa !50
  %526 = or i32 %525, 536870912
  store i32 %526, ptr %524, align 4, !tbaa !50
  br label %527

527:                                              ; preds = %523, %512
  %528 = getelementptr %struct.token_pos, ptr %515, i64 1
  %529 = load ptr, ptr %528, align 8, !tbaa !107
  %530 = icmp eq ptr %529, null
  br i1 %530, label %569, label %531

531:                                              ; preds = %527
  %532 = getelementptr %struct.token_pos, ptr %515, i64 1, i32 1
  %533 = load ptr, ptr %532, align 8, !tbaa !109
  %534 = ptrtoint ptr %533 to i64
  %535 = ptrtoint ptr %529 to i64
  %536 = sub i64 %534, %535
  %537 = load i8, ptr %529, align 1, !tbaa !48
  switch i8 %537, label %544 [
    i8 34, label %541
    i8 39, label %541
    i8 96, label %538
  ]

538:                                              ; preds = %531
  %539 = load i8, ptr %384, align 4, !tbaa !135, !range !60, !noundef !61
  %540 = icmp eq i8 %539, 0
  br i1 %540, label %544, label %541

541:                                              ; preds = %531, %531, %538
  %542 = getelementptr inbounds i8, ptr %529, i64 1
  %543 = add i64 %536, -2
  br label %544

544:                                              ; preds = %531, %541, %538
  %545 = phi ptr [ %542, %541 ], [ %529, %538 ], [ %529, %531 ]
  %546 = phi i64 [ %543, %541 ], [ %536, %538 ], [ %536, %531 ]
  %547 = call ptr @Perl_newSVpvn(ptr noundef nonnull %545, i64 noundef %546) #10
  br i1 %38, label %552, label %548

548:                                              ; preds = %544
  %549 = getelementptr inbounds %struct.sv, ptr %547, i64 0, i32 2
  %550 = load i32, ptr %549, align 4, !tbaa !50
  %551 = or i32 %550, 536870912
  store i32 %551, ptr %549, align 4, !tbaa !50
  br label %552

552:                                              ; preds = %548, %544
  %553 = load i8, ptr %385, align 2, !tbaa !120, !range !60, !noundef !61
  %554 = icmp eq i8 %553, 0
  br i1 %554, label %555, label %576

555:                                              ; preds = %552
  %556 = load i8, ptr %378, align 1, !tbaa !118, !range !60, !noundef !61
  %557 = icmp eq i8 %556, 0
  br i1 %557, label %560, label %558

558:                                              ; preds = %555
  %559 = call zeroext i1 @Perl_sv_utf8_decode(ptr noundef %547) #10
  br label %560

560:                                              ; preds = %558, %555
  %561 = load ptr, ptr %379, align 8, !tbaa !55
  %562 = call fastcc ptr @decode_entities(ptr noundef %547, ptr noundef %561, i1 noundef zeroext false) #9
  %563 = load i8, ptr %378, align 1, !tbaa !118, !range !60, !noundef !61
  %564 = icmp eq i8 %563, 0
  br i1 %564, label %576, label %565

565:                                              ; preds = %560
  %566 = getelementptr inbounds %struct.sv, ptr %547, i64 0, i32 2
  %567 = load i32, ptr %566, align 4, !tbaa !50
  %568 = and i32 %567, -536870913
  store i32 %568, ptr %566, align 4, !tbaa !50
  br label %576

569:                                              ; preds = %527
  %570 = load ptr, ptr %386, align 8, !tbaa !73
  %571 = icmp eq ptr %570, null
  br i1 %571, label %574, label %572

572:                                              ; preds = %569
  %573 = call ptr @Perl_newSVsv(ptr noundef nonnull %570) #10
  br label %576

574:                                              ; preds = %569
  %575 = call ptr @Perl_newSVsv(ptr noundef %522) #10
  br label %576

576:                                              ; preds = %552, %565, %560, %572, %574
  %577 = phi ptr [ %573, %572 ], [ %575, %574 ], [ %547, %560 ], [ %547, %565 ], [ %547, %552 ]
  %578 = load i8, ptr %382, align 4, !tbaa !125, !range !60, !noundef !61
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %580, label %585

580:                                              ; preds = %576
  %581 = load i8, ptr %383, align 1, !tbaa !126, !range !60, !noundef !61
  %582 = icmp eq i8 %581, 0
  br i1 %582, label %583, label %585

583:                                              ; preds = %580
  %584 = call fastcc ptr @sv_lower(ptr noundef %522) #9
  br label %585

585:                                              ; preds = %583, %580, %576
  br i1 %504, label %586, label %594

586:                                              ; preds = %585
  %587 = call ptr @Perl_hv_common(ptr noundef %511, ptr noundef %522, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #10
  %588 = icmp eq ptr %587, null
  br i1 %588, label %589, label %592

589:                                              ; preds = %586
  %590 = call ptr @Perl_hv_common(ptr noundef %511, ptr noundef %522, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %577, i32 noundef 0) #10
  %591 = icmp eq ptr %590, null
  br i1 %591, label %592, label %593

592:                                              ; preds = %586, %589
  call fastcc void @S_SvREFCNT_dec(ptr noundef %577) #9
  br label %593

593:                                              ; preds = %592, %589
  call fastcc void @S_SvREFCNT_dec(ptr noundef %522) #9
  br label %619

594:                                              ; preds = %585
  br i1 %387, label %596, label %595

595:                                              ; preds = %594
  call void @Perl_av_push(ptr noundef nonnull %373, ptr noundef %522) #10
  call void @Perl_av_push(ptr noundef nonnull %373, ptr noundef %577) #10
  br label %619

596:                                              ; preds = %594
  %597 = load ptr, ptr @PL_stack_max, align 8, !tbaa !43
  %598 = ptrtoint ptr %597 to i64
  %599 = ptrtoint ptr %514 to i64
  %600 = sub i64 %598, %599
  %601 = icmp slt i64 %600, 8
  br i1 %601, label %602, label %604

602:                                              ; preds = %596
  %603 = call ptr @Perl_stack_grow(ptr noundef %514, ptr noundef %514, i64 noundef 1) #10
  br label %604

604:                                              ; preds = %596, %602
  %605 = phi ptr [ %603, %602 ], [ %514, %596 ]
  %606 = call ptr @Perl_sv_2mortal(ptr noundef %522) #10
  %607 = getelementptr inbounds ptr, ptr %605, i64 1
  store ptr %606, ptr %607, align 8, !tbaa !43
  %608 = load ptr, ptr @PL_stack_max, align 8, !tbaa !43
  %609 = ptrtoint ptr %608 to i64
  %610 = ptrtoint ptr %607 to i64
  %611 = sub i64 %609, %610
  %612 = icmp slt i64 %611, 8
  br i1 %612, label %613, label %615

613:                                              ; preds = %604
  %614 = call ptr @Perl_stack_grow(ptr noundef nonnull %607, ptr noundef nonnull %607, i64 noundef 1) #10
  br label %615

615:                                              ; preds = %604, %613
  %616 = phi ptr [ %614, %613 ], [ %607, %604 ]
  %617 = call ptr @Perl_sv_2mortal(ptr noundef %577) #10
  %618 = getelementptr inbounds ptr, ptr %616, i64 1
  store ptr %617, ptr %618, align 8, !tbaa !43
  br label %619

619:                                              ; preds = %595, %615, %593
  %620 = phi ptr [ %514, %593 ], [ %514, %595 ], [ %618, %615 ]
  %621 = add nuw i64 %513, 2
  %622 = trunc i64 %621 to i32
  %623 = icmp slt i32 %622, %6
  br i1 %623, label %512, label %752, !llvm.loop !136

624:                                              ; preds = %502
  %625 = icmp eq i8 %398, 8
  br i1 %625, label %780, label %759

626:                                              ; preds = %395
  br i1 %380, label %627, label %759

627:                                              ; preds = %626
  %628 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  br i1 %381, label %629, label %655

629:                                              ; preds = %627, %651
  %630 = phi i64 [ %652, %651 ], [ 1, %627 ]
  %631 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %630
  %632 = load ptr, ptr %631, align 8, !tbaa !107
  %633 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %630, i32 1
  %634 = load ptr, ptr %633, align 8, !tbaa !109
  %635 = ptrtoint ptr %634 to i64
  %636 = ptrtoint ptr %632 to i64
  %637 = sub i64 %635, %636
  %638 = call ptr @Perl_newSVpvn(ptr noundef %632, i64 noundef %637) #10
  br i1 %38, label %643, label %639

639:                                              ; preds = %629
  %640 = getelementptr inbounds %struct.sv, ptr %638, i64 0, i32 2
  %641 = load i32, ptr %640, align 4, !tbaa !50
  %642 = or i32 %641, 536870912
  store i32 %642, ptr %640, align 4, !tbaa !50
  br label %643

643:                                              ; preds = %639, %629
  %644 = load i8, ptr %382, align 4, !tbaa !125, !range !60, !noundef !61
  %645 = icmp eq i8 %644, 0
  br i1 %645, label %646, label %651

646:                                              ; preds = %643
  %647 = load i8, ptr %383, align 1, !tbaa !126, !range !60, !noundef !61
  %648 = icmp eq i8 %647, 0
  br i1 %648, label %649, label %651

649:                                              ; preds = %646
  %650 = call fastcc ptr @sv_lower(ptr noundef %638) #9
  br label %651

651:                                              ; preds = %649, %646, %643
  call void @Perl_av_push(ptr noundef %628, ptr noundef %638) #10
  %652 = add nuw i64 %630, 2
  %653 = trunc i64 %652 to i32
  %654 = icmp slt i32 %653, %6
  br i1 %654, label %629, label %655, !llvm.loop !137

655:                                              ; preds = %651, %627
  %656 = call ptr @Perl_newRV_noinc(ptr noundef %628) #10
  %657 = call ptr @Perl_sv_2mortal(ptr noundef %656) #10
  br label %754

658:                                              ; preds = %395
  %659 = call ptr @Perl_newSVpvn(ptr noundef %2, i64 noundef %375) #10
  %660 = call ptr @Perl_sv_2mortal(ptr noundef %659) #10
  br i1 %38, label %754, label %661

661:                                              ; preds = %658
  %662 = getelementptr inbounds %struct.sv, ptr %660, i64 0, i32 2
  %663 = load i32, ptr %662, align 4, !tbaa !50
  %664 = or i32 %663, 536870912
  store i32 %664, ptr %662, align 4, !tbaa !50
  br label %763

665:                                              ; preds = %395
  br i1 %29, label %666, label %759

666:                                              ; preds = %665
  %667 = call ptr @Perl_newSVpvn(ptr noundef %2, i64 noundef %375) #10
  %668 = call ptr @Perl_sv_2mortal(ptr noundef %667) #10
  br i1 %38, label %673, label %669

669:                                              ; preds = %666
  %670 = getelementptr inbounds %struct.sv, ptr %668, i64 0, i32 2
  %671 = load i32, ptr %670, align 4, !tbaa !50
  %672 = or i32 %671, 536870912
  store i32 %672, ptr %670, align 4, !tbaa !50
  br label %673

673:                                              ; preds = %669, %666
  %674 = load i8, ptr %377, align 8, !tbaa !117, !range !60, !noundef !61
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %676, label %754

676:                                              ; preds = %673
  %677 = load i8, ptr %378, align 1, !tbaa !118, !range !60, !noundef !61
  %678 = icmp eq i8 %677, 0
  br i1 %678, label %681, label %679

679:                                              ; preds = %676
  %680 = call zeroext i1 @Perl_sv_utf8_decode(ptr noundef %668) #10
  br label %681

681:                                              ; preds = %679, %676
  %682 = load ptr, ptr %379, align 8, !tbaa !55
  %683 = call fastcc ptr @decode_entities(ptr noundef %668, ptr noundef %682, i1 noundef zeroext true) #9
  %684 = load i8, ptr %378, align 1, !tbaa !118, !range !60, !noundef !61
  %685 = icmp eq i8 %684, 0
  br i1 %685, label %754, label %686

686:                                              ; preds = %681
  %687 = getelementptr inbounds %struct.sv, ptr %668, i64 0, i32 2
  %688 = load i32, ptr %687, align 4, !tbaa !50
  %689 = and i32 %688, -536870913
  store i32 %689, ptr %687, align 4, !tbaa !50
  br label %763

690:                                              ; preds = %395
  br i1 %29, label %691, label %759

691:                                              ; preds = %690
  %692 = load i8, ptr %377, align 8, !tbaa !117, !range !60, !noundef !61
  %693 = icmp eq i8 %692, 0
  %694 = select i1 %693, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %763

695:                                              ; preds = %395
  %696 = load ptr, ptr %376, align 8, !tbaa !94
  %697 = call ptr @Perl_sv_2mortal(ptr noundef %696) #10
  %698 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.47, i64 noundef 0) #10
  store ptr %698, ptr %376, align 8, !tbaa !94
  br label %754

699:                                              ; preds = %395
  %700 = call ptr @Perl_newSViv(i64 noundef %20) #10
  %701 = call ptr @Perl_sv_2mortal(ptr noundef %700) #10
  br label %754

702:                                              ; preds = %395
  br i1 %38, label %705, label %703

703:                                              ; preds = %702
  %704 = call i64 @Perl_utf8_distance(ptr noundef %3, ptr noundef %2) #10
  br label %705

705:                                              ; preds = %702, %703
  %706 = phi i64 [ %704, %703 ], [ %375, %702 ]
  %707 = add i64 %706, %20
  %708 = call ptr @Perl_newSViv(i64 noundef %707) #10
  %709 = call ptr @Perl_sv_2mortal(ptr noundef %708) #10
  br label %754

710:                                              ; preds = %395
  br i1 %38, label %713, label %711

711:                                              ; preds = %710
  %712 = call i64 @Perl_utf8_distance(ptr noundef %3, ptr noundef %2) #10
  br label %713

713:                                              ; preds = %710, %711
  %714 = phi i64 [ %712, %711 ], [ %375, %710 ]
  %715 = call ptr @Perl_newSViv(i64 noundef %714) #10
  %716 = call ptr @Perl_sv_2mortal(ptr noundef %715) #10
  br label %754

717:                                              ; preds = %395
  %718 = call ptr @Perl_newSViv(i64 noundef %22) #10
  %719 = call ptr @Perl_sv_2mortal(ptr noundef %718) #10
  br label %754

720:                                              ; preds = %395
  %721 = call ptr @Perl_newSViv(i64 noundef %24) #10
  %722 = call ptr @Perl_sv_2mortal(ptr noundef %721) #10
  br label %754

723:                                              ; preds = %395
  %724 = load ptr, ptr %374, align 8, !tbaa !43
  %725 = call ptr @Perl_newSVpv(ptr noundef %724, i64 noundef 0) #10
  %726 = call ptr @Perl_sv_2mortal(ptr noundef %725) #10
  br label %754

727:                                              ; preds = %395
  %728 = getelementptr inbounds i8, ptr %396, i64 1
  %729 = load i8, ptr %728, align 1, !tbaa !48
  %730 = zext i8 %729 to i64
  %731 = getelementptr inbounds i8, ptr %396, i64 2
  %732 = call ptr @Perl_newSVpvn(ptr noundef nonnull %731, i64 noundef %730) #10
  %733 = call ptr @Perl_sv_2mortal(ptr noundef %732) #10
  %734 = load ptr, ptr %323, align 8, !tbaa !83
  %735 = getelementptr inbounds %struct.sv, ptr %734, i64 0, i32 2
  %736 = load i32, ptr %735, align 4, !tbaa !50
  %737 = and i32 %736, 536870912
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %743, label %739

739:                                              ; preds = %727
  %740 = getelementptr inbounds %struct.sv, ptr %733, i64 0, i32 2
  %741 = load i32, ptr %740, align 4, !tbaa !50
  %742 = or i32 %741, 536870912
  store i32 %742, ptr %740, align 4, !tbaa !50
  br label %743

743:                                              ; preds = %739, %727
  %744 = add nuw nsw i64 %730, 1
  %745 = getelementptr inbounds i8, ptr %396, i64 %744
  br label %754

746:                                              ; preds = %395
  %747 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull @PL_sv_undef, i32 noundef 2) #10
  br label %754

748:                                              ; preds = %395
  %749 = sext i8 %398 to i32
  %750 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.74, i32 noundef %749) #10
  %751 = call ptr @Perl_sv_2mortal(ptr noundef %750) #10
  br label %754

752:                                              ; preds = %619, %509
  %753 = phi ptr [ %397, %509 ], [ %620, %619 ]
  br i1 %504, label %754, label %780

754:                                              ; preds = %399, %433, %472, %498, %501, %655, %658, %681, %673, %695, %699, %705, %713, %717, %720, %723, %743, %746, %748, %752
  %755 = phi ptr [ %753, %752 ], [ %397, %748 ], [ %397, %746 ], [ %397, %743 ], [ %397, %723 ], [ %397, %720 ], [ %397, %717 ], [ %397, %713 ], [ %397, %705 ], [ %397, %699 ], [ %397, %695 ], [ %397, %673 ], [ %397, %681 ], [ %397, %658 ], [ %397, %655 ], [ %397, %501 ], [ %397, %498 ], [ %397, %472 ], [ %397, %433 ], [ %397, %399 ]
  %756 = phi ptr [ %396, %752 ], [ %396, %748 ], [ %396, %746 ], [ %745, %743 ], [ %396, %723 ], [ %396, %720 ], [ %396, %717 ], [ %396, %713 ], [ %396, %705 ], [ %396, %699 ], [ %396, %695 ], [ %396, %673 ], [ %396, %681 ], [ %396, %658 ], [ %396, %655 ], [ %396, %501 ], [ %396, %498 ], [ %396, %472 ], [ %396, %433 ], [ %396, %399 ]
  %757 = phi ptr [ %510, %752 ], [ %751, %748 ], [ %747, %746 ], [ %733, %743 ], [ %726, %723 ], [ %722, %720 ], [ %719, %717 ], [ %716, %713 ], [ %709, %705 ], [ %701, %699 ], [ %697, %695 ], [ %668, %673 ], [ %668, %681 ], [ %660, %658 ], [ %657, %655 ], [ %483, %501 ], [ %483, %498 ], [ %474, %472 ], [ %435, %433 ], [ %400, %399 ]
  %758 = icmp eq ptr %757, null
  br i1 %758, label %759, label %763

759:                                              ; preds = %690, %665, %626, %475, %437, %436, %401, %624, %754
  %760 = phi ptr [ %756, %754 ], [ %396, %624 ], [ %396, %401 ], [ %396, %436 ], [ %396, %437 ], [ %396, %475 ], [ %396, %626 ], [ %396, %665 ], [ %396, %690 ]
  %761 = phi ptr [ %755, %754 ], [ %397, %624 ], [ %397, %401 ], [ %397, %436 ], [ %397, %437 ], [ %397, %475 ], [ %397, %626 ], [ %397, %665 ], [ %397, %690 ]
  %762 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull @PL_sv_undef, i32 noundef 2) #10
  br label %763

763:                                              ; preds = %691, %686, %661, %759, %754
  %764 = phi ptr [ %756, %754 ], [ %760, %759 ], [ %396, %661 ], [ %396, %686 ], [ %396, %691 ]
  %765 = phi ptr [ %755, %754 ], [ %761, %759 ], [ %397, %661 ], [ %397, %686 ], [ %397, %691 ]
  %766 = phi ptr [ %757, %754 ], [ %762, %759 ], [ %660, %661 ], [ %668, %686 ], [ %694, %691 ]
  br i1 %387, label %769, label %767

767:                                              ; preds = %763
  %768 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %766) #9
  call void @Perl_av_push(ptr noundef nonnull %373, ptr noundef %766) #10
  br label %780

769:                                              ; preds = %763
  %770 = load ptr, ptr @PL_stack_max, align 8, !tbaa !43
  %771 = ptrtoint ptr %770 to i64
  %772 = ptrtoint ptr %765 to i64
  %773 = sub i64 %771, %772
  %774 = icmp slt i64 %773, 8
  br i1 %774, label %775, label %777

775:                                              ; preds = %769
  %776 = call ptr @Perl_stack_grow(ptr noundef %765, ptr noundef %765, i64 noundef 1) #10
  br label %777

777:                                              ; preds = %769, %775
  %778 = phi ptr [ %776, %775 ], [ %765, %769 ]
  %779 = getelementptr inbounds ptr, ptr %778, i64 1
  store ptr %766, ptr %779, align 8, !tbaa !43
  br label %780

780:                                              ; preds = %624, %767, %777, %752
  %781 = phi ptr [ %764, %767 ], [ %764, %777 ], [ %396, %752 ], [ %396, %624 ]
  %782 = phi ptr [ %765, %767 ], [ %779, %777 ], [ %753, %752 ], [ %397, %624 ]
  %783 = getelementptr inbounds i8, ptr %781, i64 1
  br label %395, !llvm.loop !138

784:                                              ; preds = %395
  br i1 %387, label %790, label %785

785:                                              ; preds = %784
  %786 = load ptr, ptr %185, align 8, !tbaa !81
  %787 = icmp eq ptr %373, %786
  br i1 %787, label %1107, label %788

788:                                              ; preds = %785
  %789 = call ptr @Perl_newRV_noinc(ptr noundef nonnull %373) #10
  call void @Perl_av_push(ptr noundef %786, ptr noundef %789) #10
  br label %1107

790:                                              ; preds = %784
  store ptr %397, ptr @PL_stack_sp, align 8, !tbaa !43
  %791 = load i8, ptr %372, align 1, !tbaa !48
  %792 = icmp eq i8 %791, 1
  %793 = load ptr, ptr %185, align 8, !tbaa !81
  br i1 %792, label %794, label %813

794:                                              ; preds = %790
  %795 = getelementptr inbounds %struct.sv, ptr %793, i64 0, i32 2
  %796 = load i32, ptr %795, align 4, !tbaa !50
  %797 = and i32 %796, 2048
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %813

799:                                              ; preds = %794
  %800 = and i32 %796, 2098176
  %801 = icmp eq i32 %800, 1024
  br i1 %801, label %802, label %808

802:                                              ; preds = %799
  %803 = load ptr, ptr %793, align 8, !tbaa !62
  %804 = getelementptr inbounds %struct.xpv, ptr %803, i64 0, i32 2
  %805 = load i64, ptr %804, align 8, !tbaa !63
  store i64 %805, ptr %11, align 8, !tbaa !66
  %806 = getelementptr inbounds %struct.sv, ptr %793, i64 0, i32 3
  %807 = load ptr, ptr %806, align 8, !tbaa !48
  br label %810

808:                                              ; preds = %799
  %809 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %793, ptr noundef nonnull %11, i32 noundef 2) #10
  br label %810

810:                                              ; preds = %808, %802
  %811 = phi ptr [ %807, %802 ], [ %809, %808 ]
  %812 = call i32 @Perl_call_method(ptr noundef %811, i32 noundef 13) #10
  br label %815

813:                                              ; preds = %794, %790
  %814 = call i32 @Perl_call_sv(ptr noundef %793, i32 noundef 13) #10
  br label %815

815:                                              ; preds = %813, %810
  %816 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %817 = getelementptr inbounds %struct.gv, ptr %816, i64 0, i32 3
  %818 = load ptr, ptr %817, align 8, !tbaa !48
  %819 = load ptr, ptr %818, align 8, !tbaa !43
  %820 = icmp eq ptr %819, null
  br i1 %820, label %821, label %838

821:                                              ; preds = %815
  %822 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %816, i32 noundef 0) #10
  %823 = getelementptr inbounds %struct.gv, ptr %822, i64 0, i32 3
  %824 = load ptr, ptr %823, align 8, !tbaa !48
  %825 = load ptr, ptr %824, align 8, !tbaa !43
  %826 = icmp eq ptr %825, null
  br i1 %826, label %1101, label %827

827:                                              ; preds = %821
  %828 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %829 = getelementptr inbounds %struct.gv, ptr %828, i64 0, i32 3
  %830 = load ptr, ptr %829, align 8, !tbaa !48
  %831 = load ptr, ptr %830, align 8, !tbaa !43
  %832 = icmp eq ptr %831, null
  br i1 %832, label %833, label %838

833:                                              ; preds = %827
  %834 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %828, i32 noundef 0) #10
  %835 = getelementptr inbounds %struct.gv, ptr %834, i64 0, i32 3
  %836 = load ptr, ptr %835, align 8, !tbaa !48
  %837 = load ptr, ptr %836, align 8, !tbaa !43
  br label %838

838:                                              ; preds = %815, %827, %833
  %839 = phi ptr [ %837, %833 ], [ %831, %827 ], [ %819, %815 ]
  %840 = getelementptr inbounds %struct.sv, ptr %839, i64 0, i32 2
  %841 = load i32, ptr %840, align 4, !tbaa !50
  %842 = and i32 %841, 2097152
  %843 = icmp eq i32 %842, 0
  %844 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %845 = getelementptr inbounds %struct.gv, ptr %844, i64 0, i32 3
  %846 = load ptr, ptr %845, align 8, !tbaa !48
  %847 = load ptr, ptr %846, align 8, !tbaa !43
  %848 = icmp eq ptr %847, null
  br i1 %843, label %858, label %849

849:                                              ; preds = %838
  br i1 %848, label %850, label %855

850:                                              ; preds = %849
  %851 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %844, i32 noundef 0) #10
  %852 = getelementptr inbounds %struct.gv, ptr %851, i64 0, i32 3
  %853 = load ptr, ptr %852, align 8, !tbaa !48
  %854 = load ptr, ptr %853, align 8, !tbaa !43
  br label %855

855:                                              ; preds = %849, %850
  %856 = phi ptr [ %854, %850 ], [ %847, %849 ]
  %857 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %856, i32 noundef 2) #10
  br i1 %857, label %1100, label %1101

858:                                              ; preds = %838
  br i1 %848, label %859, label %865

859:                                              ; preds = %858
  %860 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %844, i32 noundef 0) #10
  %861 = getelementptr inbounds %struct.gv, ptr %860, i64 0, i32 3
  %862 = load ptr, ptr %861, align 8, !tbaa !48
  %863 = load ptr, ptr %862, align 8, !tbaa !43
  %864 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  br label %865

865:                                              ; preds = %858, %859
  %866 = phi ptr [ %864, %859 ], [ %844, %858 ]
  %867 = phi ptr [ %863, %859 ], [ %847, %858 ]
  %868 = getelementptr inbounds %struct.sv, ptr %867, i64 0, i32 2
  %869 = load i32, ptr %868, align 4, !tbaa !50
  %870 = and i32 %869, 65280
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %908

872:                                              ; preds = %865
  %873 = getelementptr inbounds %struct.gv, ptr %866, i64 0, i32 3
  %874 = load ptr, ptr %873, align 8, !tbaa !48
  %875 = load ptr, ptr %874, align 8, !tbaa !43
  %876 = icmp eq ptr %875, null
  br i1 %876, label %877, label %883

877:                                              ; preds = %872
  %878 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %866, i32 noundef 0) #10
  %879 = getelementptr inbounds %struct.gv, ptr %878, i64 0, i32 3
  %880 = load ptr, ptr %879, align 8, !tbaa !48
  %881 = load ptr, ptr %880, align 8, !tbaa !43
  %882 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  br label %883

883:                                              ; preds = %872, %877
  %884 = phi ptr [ %882, %877 ], [ %866, %872 ]
  %885 = phi ptr [ %881, %877 ], [ %875, %872 ]
  %886 = getelementptr inbounds %struct.sv, ptr %885, i64 0, i32 2
  %887 = load i32, ptr %886, align 4, !tbaa !50
  %888 = and i32 %887, 255
  %889 = icmp eq i32 %888, 8
  br i1 %889, label %908, label %890

890:                                              ; preds = %883
  %891 = getelementptr inbounds %struct.gv, ptr %884, i64 0, i32 3
  %892 = load ptr, ptr %891, align 8, !tbaa !48
  %893 = load ptr, ptr %892, align 8, !tbaa !43
  %894 = icmp eq ptr %893, null
  br i1 %894, label %895, label %900

895:                                              ; preds = %890
  %896 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %884, i32 noundef 0) #10
  %897 = getelementptr inbounds %struct.gv, ptr %896, i64 0, i32 3
  %898 = load ptr, ptr %897, align 8, !tbaa !48
  %899 = load ptr, ptr %898, align 8, !tbaa !43
  br label %900

900:                                              ; preds = %890, %895
  %901 = phi ptr [ %899, %895 ], [ %893, %890 ]
  %902 = getelementptr inbounds %struct.sv, ptr %901, i64 0, i32 2
  %903 = load i32, ptr %902, align 4, !tbaa !50
  %904 = and i32 %903, 16826623
  %905 = icmp eq i32 %904, 16777226
  br i1 %905, label %906, label %1101

906:                                              ; preds = %900
  %907 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  br label %908

908:                                              ; preds = %906, %883, %865
  %909 = phi ptr [ %907, %906 ], [ %884, %883 ], [ %866, %865 ]
  %910 = getelementptr inbounds %struct.gv, ptr %909, i64 0, i32 3
  %911 = load ptr, ptr %910, align 8, !tbaa !48
  %912 = load ptr, ptr %911, align 8, !tbaa !43
  %913 = icmp eq ptr %912, null
  br i1 %913, label %914, label %919

914:                                              ; preds = %908
  %915 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %909, i32 noundef 0) #10
  %916 = getelementptr inbounds %struct.gv, ptr %915, i64 0, i32 3
  %917 = load ptr, ptr %916, align 8, !tbaa !48
  %918 = load ptr, ptr %917, align 8, !tbaa !43
  br label %919

919:                                              ; preds = %908, %914
  %920 = phi ptr [ %918, %914 ], [ %912, %908 ]
  %921 = getelementptr inbounds %struct.sv, ptr %920, i64 0, i32 2
  %922 = load i32, ptr %921, align 4, !tbaa !50
  %923 = and i32 %922, 1024
  %924 = icmp eq i32 %923, 0
  %925 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %926 = getelementptr inbounds %struct.gv, ptr %925, i64 0, i32 3
  %927 = load ptr, ptr %926, align 8, !tbaa !48
  %928 = load ptr, ptr %927, align 8, !tbaa !43
  %929 = icmp eq ptr %928, null
  br i1 %924, label %991, label %930

930:                                              ; preds = %919
  br i1 %929, label %931, label %936

931:                                              ; preds = %930
  %932 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %925, i32 noundef 0) #10
  %933 = getelementptr inbounds %struct.gv, ptr %932, i64 0, i32 3
  %934 = load ptr, ptr %933, align 8, !tbaa !48
  %935 = load ptr, ptr %934, align 8, !tbaa !43
  br label %936

936:                                              ; preds = %930, %931
  %937 = phi ptr [ %935, %931 ], [ %928, %930 ]
  %938 = load ptr, ptr %937, align 8, !tbaa !62
  %939 = icmp eq ptr %938, null
  br i1 %939, label %1101, label %940

940:                                              ; preds = %936
  %941 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %942 = getelementptr inbounds %struct.gv, ptr %941, i64 0, i32 3
  %943 = load ptr, ptr %942, align 8, !tbaa !48
  %944 = load ptr, ptr %943, align 8, !tbaa !43
  %945 = icmp eq ptr %944, null
  br i1 %945, label %946, label %951

946:                                              ; preds = %940
  %947 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %941, i32 noundef 0) #10
  %948 = getelementptr inbounds %struct.gv, ptr %947, i64 0, i32 3
  %949 = load ptr, ptr %948, align 8, !tbaa !48
  %950 = load ptr, ptr %949, align 8, !tbaa !43
  br label %951

951:                                              ; preds = %940, %946
  %952 = phi ptr [ %950, %946 ], [ %944, %940 ]
  %953 = load ptr, ptr %952, align 8, !tbaa !62
  %954 = getelementptr inbounds %struct.xpv, ptr %953, i64 0, i32 2
  %955 = load i64, ptr %954, align 8, !tbaa !63
  %956 = icmp ugt i64 %955, 1
  br i1 %956, label %1100, label %957

957:                                              ; preds = %951
  %958 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %959 = getelementptr inbounds %struct.gv, ptr %958, i64 0, i32 3
  %960 = load ptr, ptr %959, align 8, !tbaa !48
  %961 = load ptr, ptr %960, align 8, !tbaa !43
  %962 = icmp eq ptr %961, null
  br i1 %962, label %963, label %968

963:                                              ; preds = %957
  %964 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %958, i32 noundef 0) #10
  %965 = getelementptr inbounds %struct.gv, ptr %964, i64 0, i32 3
  %966 = load ptr, ptr %965, align 8, !tbaa !48
  %967 = load ptr, ptr %966, align 8, !tbaa !43
  br label %968

968:                                              ; preds = %957, %963
  %969 = phi ptr [ %967, %963 ], [ %961, %957 ]
  %970 = load ptr, ptr %969, align 8, !tbaa !62
  %971 = getelementptr inbounds %struct.xpv, ptr %970, i64 0, i32 2
  %972 = load i64, ptr %971, align 8, !tbaa !63
  %973 = icmp eq i64 %972, 0
  br i1 %973, label %1101, label %974

974:                                              ; preds = %968
  %975 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %976 = getelementptr inbounds %struct.gv, ptr %975, i64 0, i32 3
  %977 = load ptr, ptr %976, align 8, !tbaa !48
  %978 = load ptr, ptr %977, align 8, !tbaa !43
  %979 = icmp eq ptr %978, null
  br i1 %979, label %980, label %985

980:                                              ; preds = %974
  %981 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %975, i32 noundef 0) #10
  %982 = getelementptr inbounds %struct.gv, ptr %981, i64 0, i32 3
  %983 = load ptr, ptr %982, align 8, !tbaa !48
  %984 = load ptr, ptr %983, align 8, !tbaa !43
  br label %985

985:                                              ; preds = %974, %980
  %986 = phi ptr [ %984, %980 ], [ %978, %974 ]
  %987 = getelementptr inbounds %struct.sv, ptr %986, i64 0, i32 3
  %988 = load ptr, ptr %987, align 8, !tbaa !48
  %989 = load i8, ptr %988, align 1, !tbaa !48
  %990 = icmp eq i8 %989, 48
  br i1 %990, label %1101, label %1100

991:                                              ; preds = %919
  br i1 %929, label %992, label %997

992:                                              ; preds = %991
  %993 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %925, i32 noundef 0) #10
  %994 = getelementptr inbounds %struct.gv, ptr %993, i64 0, i32 3
  %995 = load ptr, ptr %994, align 8, !tbaa !48
  %996 = load ptr, ptr %995, align 8, !tbaa !43
  br label %997

997:                                              ; preds = %991, %992
  %998 = phi ptr [ %996, %992 ], [ %928, %991 ]
  %999 = getelementptr inbounds %struct.sv, ptr %998, i64 0, i32 2
  %1000 = load i32, ptr %999, align 4, !tbaa !50
  %1001 = and i32 %1000, 768
  %1002 = icmp eq i32 %1001, 0
  %1003 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %1004 = getelementptr inbounds %struct.gv, ptr %1003, i64 0, i32 3
  %1005 = load ptr, ptr %1004, align 8, !tbaa !48
  %1006 = load ptr, ptr %1005, align 8, !tbaa !43
  %1007 = icmp eq ptr %1006, null
  br i1 %1002, label %1091, label %1008

1008:                                             ; preds = %997
  br i1 %1007, label %1009, label %1015

1009:                                             ; preds = %1008
  %1010 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %1003, i32 noundef 0) #10
  %1011 = getelementptr inbounds %struct.gv, ptr %1010, i64 0, i32 3
  %1012 = load ptr, ptr %1011, align 8, !tbaa !48
  %1013 = load ptr, ptr %1012, align 8, !tbaa !43
  %1014 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  br label %1015

1015:                                             ; preds = %1008, %1009
  %1016 = phi ptr [ %1014, %1009 ], [ %1003, %1008 ]
  %1017 = phi ptr [ %1013, %1009 ], [ %1006, %1008 ]
  %1018 = getelementptr inbounds %struct.sv, ptr %1017, i64 0, i32 2
  %1019 = load i32, ptr %1018, align 4, !tbaa !50
  %1020 = and i32 %1019, 256
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1040, label %1022

1022:                                             ; preds = %1015
  %1023 = getelementptr inbounds %struct.gv, ptr %1016, i64 0, i32 3
  %1024 = load ptr, ptr %1023, align 8, !tbaa !48
  %1025 = load ptr, ptr %1024, align 8, !tbaa !43
  %1026 = icmp eq ptr %1025, null
  br i1 %1026, label %1027, label %1032

1027:                                             ; preds = %1022
  %1028 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %1016, i32 noundef 0) #10
  %1029 = getelementptr inbounds %struct.gv, ptr %1028, i64 0, i32 3
  %1030 = load ptr, ptr %1029, align 8, !tbaa !48
  %1031 = load ptr, ptr %1030, align 8, !tbaa !43
  br label %1032

1032:                                             ; preds = %1022, %1027
  %1033 = phi ptr [ %1031, %1027 ], [ %1025, %1022 ]
  %1034 = load ptr, ptr %1033, align 8, !tbaa !62
  %1035 = getelementptr inbounds %struct.xpviv, ptr %1034, i64 0, i32 4
  %1036 = load i64, ptr %1035, align 8, !tbaa !48
  %1037 = icmp eq i64 %1036, 0
  br i1 %1037, label %1038, label %1100

1038:                                             ; preds = %1032
  %1039 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  br label %1040

1040:                                             ; preds = %1038, %1015
  %1041 = phi ptr [ %1039, %1038 ], [ %1016, %1015 ]
  %1042 = getelementptr inbounds %struct.gv, ptr %1041, i64 0, i32 3
  %1043 = load ptr, ptr %1042, align 8, !tbaa !48
  %1044 = load ptr, ptr %1043, align 8, !tbaa !43
  %1045 = icmp eq ptr %1044, null
  br i1 %1045, label %1046, label %1051

1046:                                             ; preds = %1040
  %1047 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %1041, i32 noundef 0) #10
  %1048 = getelementptr inbounds %struct.gv, ptr %1047, i64 0, i32 3
  %1049 = load ptr, ptr %1048, align 8, !tbaa !48
  %1050 = load ptr, ptr %1049, align 8, !tbaa !43
  br label %1051

1051:                                             ; preds = %1040, %1046
  %1052 = phi ptr [ %1050, %1046 ], [ %1044, %1040 ]
  %1053 = getelementptr inbounds %struct.sv, ptr %1052, i64 0, i32 2
  %1054 = load i32, ptr %1053, align 4, !tbaa !50
  %1055 = and i32 %1054, 512
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1101, label %1057

1057:                                             ; preds = %1051
  %1058 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %1059 = getelementptr inbounds %struct.gv, ptr %1058, i64 0, i32 3
  %1060 = load ptr, ptr %1059, align 8, !tbaa !48
  %1061 = load ptr, ptr %1060, align 8, !tbaa !43
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1063, label %1068

1063:                                             ; preds = %1057
  %1064 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %1058, i32 noundef 0) #10
  %1065 = getelementptr inbounds %struct.gv, ptr %1064, i64 0, i32 3
  %1066 = load ptr, ptr %1065, align 8, !tbaa !48
  %1067 = load ptr, ptr %1066, align 8, !tbaa !43
  br label %1068

1068:                                             ; preds = %1057, %1063
  %1069 = phi ptr [ %1067, %1063 ], [ %1061, %1057 ]
  %1070 = load ptr, ptr %1069, align 8, !tbaa !62
  %1071 = getelementptr inbounds %struct.xpvnv, ptr %1070, i64 0, i32 5
  %1072 = load double, ptr %1071, align 8, !tbaa !48
  %1073 = fcmp uno double %1072, 0.000000e+00
  br i1 %1073, label %1100, label %1074

1074:                                             ; preds = %1068
  %1075 = load ptr, ptr @PL_errgv, align 8, !tbaa !43
  %1076 = getelementptr inbounds %struct.gv, ptr %1075, i64 0, i32 3
  %1077 = load ptr, ptr %1076, align 8, !tbaa !48
  %1078 = load ptr, ptr %1077, align 8, !tbaa !43
  %1079 = icmp eq ptr %1078, null
  br i1 %1079, label %1080, label %1085

1080:                                             ; preds = %1074
  %1081 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %1075, i32 noundef 0) #10
  %1082 = getelementptr inbounds %struct.gv, ptr %1081, i64 0, i32 3
  %1083 = load ptr, ptr %1082, align 8, !tbaa !48
  %1084 = load ptr, ptr %1083, align 8, !tbaa !43
  br label %1085

1085:                                             ; preds = %1074, %1080
  %1086 = phi ptr [ %1084, %1080 ], [ %1078, %1074 ]
  %1087 = load ptr, ptr %1086, align 8, !tbaa !62
  %1088 = getelementptr inbounds %struct.xpvnv, ptr %1087, i64 0, i32 5
  %1089 = load double, ptr %1088, align 8, !tbaa !48
  %1090 = fcmp une double %1089, 0.000000e+00
  br i1 %1090, label %1100, label %1101

1091:                                             ; preds = %997
  br i1 %1007, label %1092, label %1097

1092:                                             ; preds = %1091
  %1093 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %1003, i32 noundef 0) #10
  %1094 = getelementptr inbounds %struct.gv, ptr %1093, i64 0, i32 3
  %1095 = load ptr, ptr %1094, align 8, !tbaa !48
  %1096 = load ptr, ptr %1095, align 8, !tbaa !43
  br label %1097

1097:                                             ; preds = %1091, %1092
  %1098 = phi ptr [ %1096, %1092 ], [ %1006, %1091 ]
  %1099 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %1098, i32 noundef 0) #10
  br i1 %1099, label %1100, label %1101

1100:                                             ; preds = %1097, %1085, %1068, %1032, %985, %951, %855
  call void (ptr, ...) @Perl_croak(ptr noundef null) #10
  br label %1101

1101:                                             ; preds = %900, %821, %1100, %1097, %1085, %1051, %985, %968, %936, %855
  %1102 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !66
  %1103 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !66
  %1104 = icmp sgt i64 %1102, %1103
  br i1 %1104, label %1105, label %1106

1105:                                             ; preds = %1101
  call void @Perl_free_tmps() #10
  br label %1106

1106:                                             ; preds = %1105, %1101
  call void @Perl_pop_scope() #10
  br label %1107

1107:                                             ; preds = %785, %788, %1106
  %1108 = load ptr, ptr %376, align 8, !tbaa !94
  %1109 = icmp eq ptr %1108, null
  br i1 %1109, label %1153, label %1110

1110:                                             ; preds = %1107
  %1111 = load ptr, ptr %1108, align 8, !tbaa !62
  %1112 = getelementptr inbounds %struct.xpv, ptr %1111, i64 0, i32 2
  store i64 0, ptr %1112, align 8, !tbaa !63
  br label %1153

1113:                                             ; preds = %167, %160, %153, %154, %133, %141, %144, %139, %179, %170, %86, %84
  %1114 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 17
  %1115 = load ptr, ptr %1114, align 8, !tbaa !94
  %1116 = icmp eq ptr %1115, null
  br i1 %1116, label %1153, label %1117

1117:                                             ; preds = %1113
  br i1 %29, label %1134, label %1118

1118:                                             ; preds = %1117
  %1119 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %1120 = load ptr, ptr %1119, align 8, !tbaa !93
  %1121 = icmp eq ptr %1120, null
  br i1 %1121, label %1134, label %1122

1122:                                             ; preds = %1118
  %1123 = getelementptr inbounds %struct.sv, ptr %1120, i64 0, i32 2
  %1124 = load i32, ptr %1123, align 4, !tbaa !50
  %1125 = and i32 %1124, 65280
  %1126 = icmp ne i32 %1125, 0
  %1127 = and i32 %1124, 255
  %1128 = icmp eq i32 %1127, 8
  %1129 = or i1 %1126, %1128
  %1130 = and i32 %1124, 16777471
  %1131 = icmp eq i32 %1130, 16777226
  %1132 = or i1 %1131, %1129
  br i1 %1132, label %1133, label %1134

1133:                                             ; preds = %1122
  call fastcc void @flush_pending_text(ptr noundef nonnull %0, ptr noundef %7) #9
  br label %1134

1134:                                             ; preds = %1122, %1133, %1118, %1117
  %1135 = load ptr, ptr %1114, align 8, !tbaa !94
  %1136 = getelementptr inbounds %struct.sv, ptr %1135, i64 0, i32 2
  %1137 = load i32, ptr %1136, align 4, !tbaa !50
  %1138 = and i32 %1137, 536870912
  %1139 = icmp eq i32 %1138, 0
  br i1 %38, label %1144, label %1140

1140:                                             ; preds = %1134
  br i1 %1139, label %1141, label %1145

1141:                                             ; preds = %1140
  %1142 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef nonnull %1135, i32 noundef 2, i64 noundef 0) #10
  %1143 = load ptr, ptr %1114, align 8, !tbaa !94
  br label %1145

1144:                                             ; preds = %1134
  br i1 %1139, label %1145, label %1148

1145:                                             ; preds = %1140, %1141, %1144
  %1146 = phi ptr [ %1135, %1140 ], [ %1143, %1141 ], [ %1135, %1144 ]
  %1147 = sub i64 %10, %9
  call void @Perl_sv_catpvn_flags(ptr noundef %1146, ptr noundef %2, i64 noundef %1147, i32 noundef 2) #10
  br label %1153

1148:                                             ; preds = %1144
  %1149 = sub i64 %10, %9
  %1150 = call ptr @Perl_newSVpvn(ptr noundef %2, i64 noundef %1149) #10
  %1151 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %1150, i32 noundef 2, i64 noundef 0) #10
  %1152 = load ptr, ptr %1114, align 8, !tbaa !94
  call void @Perl_sv_catsv_flags(ptr noundef %1152, ptr noundef %1150, i32 noundef 2) #10
  call fastcc void @S_SvREFCNT_dec(ptr noundef %1150) #9
  br label %1153

1153:                                             ; preds = %1113, %1148, %1145, %1107, %1110, %299, %302, %193, %206, %213, %215, %231, %239, %195, %234, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @parse_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !34 !PGOFuncName !139 {
  %6 = ptrtoint ptr %2 to i64
  %7 = alloca %struct.token_pos, align 8
  %8 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 7
  %9 = load i8, ptr %8, align 2, !tbaa !65, !range !60, !noundef !61
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %278

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 8
  br label %13

13:                                               ; preds = %11, %273
  %14 = phi ptr [ %1, %11 ], [ %275, %273 ]
  %15 = phi ptr [ %1, %11 ], [ %274, %273 ]
  %16 = load ptr, ptr %12, align 8, !tbaa !106
  %17 = icmp eq ptr %16, null
  br i1 %17, label %103, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 28
  %20 = getelementptr inbounds %struct.token_pos, ptr %7, i64 0, i32 1
  %21 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  br label %22

22:                                               ; preds = %18, %98
  %23 = phi ptr [ %99, %98 ], [ %16, %18 ]
  %24 = phi ptr [ %101, %98 ], [ %14, %18 ]
  %25 = phi ptr [ %100, %98 ], [ %15, %18 ]
  %26 = icmp ult ptr %24, %2
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = ptrtoint ptr %24 to i64
  %29 = getelementptr i8, ptr %24, i64 %6
  %30 = sub i64 0, %28
  %31 = getelementptr i8, ptr %29, i64 %30
  br label %32

32:                                               ; preds = %27, %36
  %33 = phi ptr [ %37, %36 ], [ %24, %27 ]
  %34 = load i8, ptr %33, align 1, !tbaa !48
  %35 = icmp eq i8 %34, 60
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  %38 = icmp eq ptr %37, %31
  br i1 %38, label %39, label %32, !llvm.loop !140

39:                                               ; preds = %32, %36, %22
  %40 = phi ptr [ %24, %22 ], [ %31, %36 ], [ %33, %32 ]
  %41 = icmp eq ptr %40, %2
  br i1 %41, label %278, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds i8, ptr %40, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !48
  %45 = icmp eq i8 %44, 47
  br i1 %45, label %46, label %98

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %40, i64 2
  %48 = load i8, ptr %23, align 1, !tbaa !48
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %46, %66
  %51 = phi i8 [ %69, %66 ], [ %48, %46 ]
  %52 = phi ptr [ %67, %66 ], [ %47, %46 ]
  %53 = phi ptr [ %68, %66 ], [ %23, %46 ]
  %54 = load i8, ptr %52, align 1, !tbaa !48
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !44
  %58 = and i32 %57, 16400
  %59 = icmp eq i32 %58, 16400
  %60 = add i8 %54, 32
  %61 = zext i8 %60 to i32
  %62 = sext i8 %54 to i32
  %63 = select i1 %59, i32 %61, i32 %62
  %64 = sext i8 %51 to i32
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %50
  %67 = getelementptr inbounds i8, ptr %52, i64 1
  %68 = getelementptr inbounds i8, ptr %53, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !48
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %50, !llvm.loop !141

71:                                               ; preds = %66, %46
  %72 = phi ptr [ %47, %46 ], [ %67, %66 ]
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(10) @.str.57) #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8, ptr %19, align 8, !tbaa !142, !range !60, !noundef !61
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %75, %71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  store ptr %47, ptr %7, align 8, !tbaa !107
  store ptr %72, ptr %20, align 8, !tbaa !109
  br label %79

79:                                               ; preds = %79, %78
  %80 = phi ptr [ %72, %78 ], [ %87, %79 ]
  %81 = load i8, ptr %80, align 1, !tbaa !48
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !48
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  %87 = getelementptr inbounds i8, ptr %80, i64 1
  br i1 %86, label %88, label %79, !llvm.loop !143

88:                                               ; preds = %79
  %89 = icmp eq i8 %81, 62
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = icmp eq ptr %25, %40
  br i1 %91, label %93, label %92

92:                                               ; preds = %90
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %25, ptr noundef %40, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  br label %93

93:                                               ; preds = %92, %90
  call fastcc void @report_event(ptr noundef %0, i32 noundef 3, ptr noundef %40, ptr noundef nonnull %87, i32 noundef %3, ptr noundef nonnull %7, i32 noundef 1, ptr noundef %4) #9
  store ptr null, ptr %12, align 8, !tbaa !106
  store i8 0, ptr %21, align 8, !tbaa !117
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi ptr [ null, %93 ], [ %23, %88 ]
  %96 = phi ptr [ %87, %93 ], [ %25, %88 ]
  %97 = phi ptr [ %87, %93 ], [ %80, %88 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %98

98:                                               ; preds = %50, %42, %94, %75
  %99 = phi ptr [ %95, %94 ], [ %23, %75 ], [ %23, %42 ], [ %23, %50 ]
  %100 = phi ptr [ %96, %94 ], [ %25, %75 ], [ %25, %42 ], [ %25, %50 ]
  %101 = phi ptr [ %97, %94 ], [ %72, %75 ], [ %43, %42 ], [ %52, %50 ]
  %102 = icmp eq ptr %99, null
  br i1 %102, label %103, label %22

103:                                              ; preds = %98, %13
  %104 = phi ptr [ %15, %13 ], [ %100, %98 ]
  %105 = phi ptr [ %14, %13 ], [ %101, %98 ]
  %106 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 18
  br label %146

107:                                              ; preds = %146, %152
  %108 = phi ptr [ %153, %152 ], [ %148, %146 ]
  %109 = ptrtoint ptr %108 to i64
  br i1 %151, label %112, label %110

110:                                              ; preds = %107
  %111 = icmp ult ptr %148, %2
  br i1 %111, label %178, label %185

112:                                              ; preds = %107
  %113 = icmp ult ptr %108, %2
  br i1 %113, label %114, label %125

114:                                              ; preds = %112
  %115 = getelementptr i8, ptr %108, i64 %6
  %116 = sub i64 0, %109
  %117 = getelementptr i8, ptr %115, i64 %116
  br label %118

118:                                              ; preds = %114, %122
  %119 = phi ptr [ %123, %122 ], [ %108, %114 ]
  %120 = load i8, ptr %119, align 1, !tbaa !48
  %121 = icmp eq i8 %120, 93
  br i1 %121, label %129, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds i8, ptr %119, i64 1
  %124 = icmp eq ptr %123, %117
  br i1 %124, label %125, label %118, !llvm.loop !144

125:                                              ; preds = %122, %112
  %126 = phi ptr [ %108, %112 ], [ %117, %122 ]
  %127 = load i8, ptr %126, align 1, !tbaa !48
  %128 = icmp eq i8 %127, 93
  br i1 %128, label %129, label %152

129:                                              ; preds = %118, %125
  %130 = phi ptr [ %126, %125 ], [ %119, %118 ]
  %131 = getelementptr inbounds i8, ptr %130, i64 1
  %132 = load i8, ptr %131, align 1, !tbaa !48
  %133 = icmp eq i8 %132, 93
  br i1 %133, label %134, label %152

134:                                              ; preds = %129
  %135 = getelementptr inbounds i8, ptr %130, i64 2
  %136 = load i8, ptr %135, align 1, !tbaa !48
  %137 = icmp eq i8 %136, 62
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = getelementptr inbounds i8, ptr %130, i64 3
  %140 = icmp eq ptr %147, %130
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %147, ptr noundef nonnull %130, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  br label %142

142:                                              ; preds = %138, %141
  %143 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %130, ptr noundef nonnull %139, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  %144 = load ptr, ptr %143, align 8, !tbaa !95
  %145 = tail call ptr @Perl_av_pop(ptr noundef %144) #10
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %145) #9
  tail call fastcc void @marked_section_update(ptr noundef %0) #9
  br label %146

146:                                              ; preds = %103, %142
  %147 = phi ptr [ %139, %142 ], [ %104, %103 ]
  %148 = phi ptr [ %139, %142 ], [ %105, %103 ]
  %149 = load i32, ptr %106, align 8, !tbaa !124
  %150 = and i32 %149, -2
  %151 = icmp eq i32 %150, 2
  br label %107

152:                                              ; preds = %129, %134, %125
  %153 = phi ptr [ %126, %125 ], [ %131, %134 ], [ %131, %129 ]
  %154 = icmp eq ptr %153, %2
  br i1 %154, label %278, label %107, !llvm.loop !145

155:                                              ; preds = %178, %181
  %156 = phi ptr [ %179, %178 ], [ %183, %181 ]
  %157 = load i8, ptr %156, align 1, !tbaa !48
  %158 = icmp eq i8 %157, 60
  br i1 %158, label %185, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %106, align 8, !tbaa !124
  %161 = icmp ne i32 %160, 0
  %162 = icmp eq i8 %157, 93
  %163 = and i1 %162, %161
  br i1 %163, label %164, label %181

164:                                              ; preds = %159
  %165 = getelementptr inbounds i8, ptr %156, i64 1
  %166 = load i8, ptr %165, align 1, !tbaa !48
  %167 = icmp eq i8 %166, 93
  br i1 %167, label %168, label %181

168:                                              ; preds = %164
  %169 = getelementptr inbounds i8, ptr %156, i64 2
  %170 = load i8, ptr %169, align 1, !tbaa !48
  %171 = icmp eq i8 %170, 62
  br i1 %171, label %172, label %181

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  %174 = getelementptr inbounds i8, ptr %156, i64 3
  tail call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 4, ptr noundef %180, ptr noundef nonnull %156, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  tail call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 10, ptr noundef nonnull %156, ptr noundef nonnull %174, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  %175 = load ptr, ptr %173, align 8, !tbaa !95
  %176 = tail call ptr @Perl_av_pop(ptr noundef %175) #10
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %176) #9
  tail call fastcc void @marked_section_update(ptr noundef nonnull %0) #9
  %177 = icmp ult ptr %174, %2
  br i1 %177, label %178, label %245

178:                                              ; preds = %110, %172
  %179 = phi ptr [ %174, %172 ], [ %148, %110 ]
  %180 = phi ptr [ %174, %172 ], [ %147, %110 ]
  br label %155

181:                                              ; preds = %164, %168, %159
  %182 = phi ptr [ %156, %159 ], [ %165, %164 ], [ %169, %168 ]
  %183 = getelementptr inbounds i8, ptr %182, i64 1
  %184 = icmp ult ptr %183, %2
  br i1 %184, label %155, label %185, !llvm.loop !146

185:                                              ; preds = %155, %181, %110
  %186 = phi ptr [ %147, %110 ], [ %180, %181 ], [ %180, %155 ]
  %187 = phi ptr [ %148, %110 ], [ %156, %155 ], [ %183, %181 ]
  %188 = icmp eq ptr %187, %186
  br i1 %188, label %245, label %189

189:                                              ; preds = %185
  %190 = load i8, ptr %187, align 1, !tbaa !48
  %191 = icmp eq i8 %190, 60
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %186, ptr noundef nonnull %187, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  br label %245

193:                                              ; preds = %189
  %194 = getelementptr inbounds i8, ptr %187, i64 -1
  %195 = load i8, ptr %194, align 1, !tbaa !48
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !48
  %199 = and i8 %198, 1
  %200 = icmp eq i8 %199, 0
  %201 = icmp ult ptr %194, %186
  br i1 %200, label %203, label %202

202:                                              ; preds = %193
  br i1 %201, label %240, label %204

203:                                              ; preds = %193
  br i1 %201, label %226, label %215

204:                                              ; preds = %202, %212
  %205 = phi ptr [ %213, %212 ], [ %194, %202 ]
  %206 = load i8, ptr %205, align 1, !tbaa !48
  %207 = zext i8 %206 to i64
  %208 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !48
  %210 = and i8 %209, 1
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %240, label %212

212:                                              ; preds = %204
  %213 = getelementptr inbounds i8, ptr %205, i64 -1
  %214 = icmp ult ptr %213, %186
  br i1 %214, label %240, label %204, !llvm.loop !147

215:                                              ; preds = %203, %223
  %216 = phi ptr [ %224, %223 ], [ %194, %203 ]
  %217 = load i8, ptr %216, align 1, !tbaa !48
  %218 = zext i8 %217 to i64
  %219 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !48
  %221 = and i8 %220, 1
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %215
  %224 = getelementptr inbounds i8, ptr %216, i64 -1
  %225 = icmp ult ptr %224, %186
  br i1 %225, label %226, label %215, !llvm.loop !148

226:                                              ; preds = %215, %223, %203
  %227 = phi ptr [ %194, %203 ], [ %224, %223 ], [ %216, %215 ]
  %228 = icmp ult ptr %227, %186
  br i1 %228, label %240, label %229

229:                                              ; preds = %226, %237
  %230 = phi ptr [ %238, %237 ], [ %227, %226 ]
  %231 = load i8, ptr %230, align 1, !tbaa !48
  %232 = zext i8 %231 to i64
  %233 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %232
  %234 = load i8, ptr %233, align 1, !tbaa !48
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %229
  %238 = getelementptr inbounds i8, ptr %230, i64 -1
  %239 = icmp ult ptr %238, %186
  br i1 %239, label %240, label %229, !llvm.loop !149

240:                                              ; preds = %212, %204, %237, %229, %202, %226
  %241 = phi ptr [ %227, %226 ], [ %194, %202 ], [ %238, %237 ], [ %230, %229 ], [ %213, %212 ], [ %205, %204 ]
  %242 = getelementptr inbounds i8, ptr %241, i64 1
  %243 = icmp eq ptr %242, %186
  br i1 %243, label %278, label %244

244:                                              ; preds = %240
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %186, ptr noundef nonnull %242, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  br label %278

245:                                              ; preds = %172, %192, %185
  %246 = phi ptr [ %187, %192 ], [ %187, %185 ], [ %174, %172 ]
  %247 = phi ptr [ %187, %192 ], [ %186, %185 ], [ %174, %172 ]
  %248 = ptrtoint ptr %246 to i64
  %249 = sub i64 %6, %248
  %250 = icmp slt i64 %249, 3
  br i1 %250, label %278, label %251

251:                                              ; preds = %245
  %252 = getelementptr inbounds i8, ptr %246, i64 1
  %253 = load i8, ptr %252, align 1, !tbaa !48
  %254 = zext i8 %253 to i64
  %255 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !48
  %257 = and i8 %256, 2
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %251
  %260 = tail call fastcc ptr @parse_start(ptr noundef %0, ptr noundef %247, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
  br label %268

261:                                              ; preds = %251
  switch i8 %253, label %273 [
    i8 47, label %262
    i8 33, label %264
    i8 63, label %266
  ]

262:                                              ; preds = %261
  %263 = tail call fastcc ptr @parse_end(ptr noundef %0, ptr noundef %247, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
  br label %268

264:                                              ; preds = %261
  %265 = tail call fastcc ptr @parse_decl(ptr noundef %0, ptr noundef %247, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
  br label %268

266:                                              ; preds = %261
  %267 = tail call fastcc ptr @parse_process(ptr noundef %0, ptr noundef %247, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
  br label %268

268:                                              ; preds = %262, %266, %264, %259
  %269 = phi ptr [ %260, %259 ], [ %263, %262 ], [ %265, %264 ], [ %267, %266 ]
  %270 = icmp eq ptr %269, null
  br i1 %270, label %273, label %271

271:                                              ; preds = %268
  %272 = icmp eq ptr %269, %247
  br i1 %272, label %278, label %273

273:                                              ; preds = %261, %271, %268
  %274 = phi ptr [ %247, %268 ], [ %269, %271 ], [ %247, %261 ]
  %275 = phi ptr [ %252, %268 ], [ %269, %271 ], [ %252, %261 ]
  %276 = load i8, ptr %8, align 2, !tbaa !65, !range !60, !noundef !61
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %13, label %278, !llvm.loop !150

278:                                              ; preds = %271, %273, %245, %39, %152, %5, %240, %244
  %279 = phi ptr [ %242, %244 ], [ %186, %240 ], [ %1, %5 ], [ %147, %152 ], [ %25, %39 ], [ %247, %271 ], [ %275, %273 ], [ %246, %245 ]
  ret ptr %279
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flush_pending_text(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !151 {
  %3 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 25
  %4 = load i8, ptr %3, align 1, !tbaa !128, !range !60, !noundef !61
  %5 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %8 = load i8, ptr %7, align 8, !tbaa !117, !range !60, !noundef !61
  %9 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 2
  %10 = load <2 x i64>, ptr %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !116
  store i8 0, ptr %3, align 1, !tbaa !128
  store ptr null, ptr %5, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 13
  %14 = load i8, ptr %13, align 8, !tbaa !129, !range !60, !noundef !61
  store i8 %14, ptr %7, align 8, !tbaa !117
  %15 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 14
  %16 = load <2 x i64>, ptr %15, align 8, !tbaa !66
  store <2 x i64> %16, ptr %9, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 16
  %18 = load i64, ptr %17, align 8, !tbaa !132
  store i64 %18, ptr %11, align 8, !tbaa !116
  %19 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = load ptr, ptr %6, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct.xpv, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !63
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  %25 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !50
  %27 = and i32 %26, 536870912
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %20, ptr noundef %24, i32 noundef %27, ptr noundef null, i32 noundef 0, ptr noundef %1) #9
  %28 = load i32, ptr %25, align 4, !tbaa !50
  %29 = and i32 %28, 1610547455
  store i32 %29, ptr %25, align 4, !tbaa !50
  %30 = and i32 %28, 33554432
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %6) #10
  br label %34

34:                                               ; preds = %32, %2
  store i8 %4, ptr %3, align 1, !tbaa !128
  store ptr %6, ptr %5, align 8, !tbaa !93
  store i8 %8, ptr %7, align 8, !tbaa !117
  store <2 x i64> %10, ptr %9, align 8, !tbaa !66
  store i64 %12, ptr %11, align 8, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i1 @probably_utf8_chunk(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !152 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  br label %4

4:                                                ; preds = %7, %2
  %5 = phi ptr [ %3, %2 ], [ %8, %7 ]
  %6 = icmp ugt ptr %5, %0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %5, i64 -1
  %9 = load i8, ptr %8, align 1, !tbaa !48
  %10 = and i8 %9, -64
  %11 = icmp eq i8 %10, -128
  br i1 %11, label %4, label %12, !llvm.loop !153

12:                                               ; preds = %7
  %13 = icmp ugt i8 %9, -63
  %14 = select i1 %13, ptr %8, ptr %5
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi ptr [ %14, %12 ], [ %5, %4 ]
  %17 = ptrtoint ptr %16 to i64
  %18 = ptrtoint ptr %0 to i64
  %19 = sub i64 %18, %17
  %20 = add i64 %19, %1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = load i8, ptr %16, align 1, !tbaa !48
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !48
  %27 = zext i8 %26 to i64
  %28 = icmp eq i64 %20, %27
  %29 = select i1 %28, ptr %3, ptr %16
  br label %30

30:                                               ; preds = %22, %15
  %31 = phi ptr [ %16, %15 ], [ %29, %22 ]
  %32 = tail call fastcc zeroext i1 @has_hibit(ptr noundef %0, ptr noundef %31) #9
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = ptrtoint ptr %31 to i64
  %35 = sub i64 %34, %18
  %36 = tail call zeroext i1 @Perl_is_utf8_string(ptr noundef %0, i64 noundef %35) #10
  br label %37

37:                                               ; preds = %30, %33
  %38 = phi i1 [ %36, %33 ], [ false, %30 ]
  ret i1 %38
}

; Function Attrs: optsize
declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_chop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_utf8_distance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @sv_lower(ptr noundef returned %0) unnamed_addr #0 !prof !34 !PGOFuncName !154 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = and i32 %4, 430018304
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  br label %14

12:                                               ; preds = %1
  %13 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2) #10
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %12 ]
  %16 = phi ptr [ %11, %7 ], [ %13, %12 ]
  %17 = load i64, ptr %15, align 8, !tbaa !66
  %18 = add i64 %17, -1
  store i64 %18, ptr %2, align 8, !tbaa !66
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %30, %20 ], [ %16, %14 ]
  %22 = load i8, ptr %21, align 1, !tbaa !48
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !44
  %26 = and i32 %25, 16400
  %27 = icmp eq i32 %26, 16400
  %28 = add i8 %22, 32
  %29 = select i1 %27, i8 %28, i8 %22
  store i8 %29, ptr %21, align 1, !tbaa !48
  %30 = getelementptr inbounds i8, ptr %21, i64 1
  %31 = load i64, ptr %2, align 8, !tbaa !66
  %32 = add i64 %31, -1
  store i64 %32, ptr %2, align 8, !tbaa !66
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %34, label %20, !llvm.loop !155

34:                                               ; preds = %20, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret ptr %0
}

; Function Attrs: optsize
declare i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_insert_flags(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_utf8_decode(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @decode_entities(ptr noundef returned %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 !prof !34 !PGOFuncName !156 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca [13 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = and i32 %13, 430018304
  %15 = icmp eq i32 %14, 1024
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load ptr, ptr %0, align 8, !tbaa !62
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !63
  store i64 %19, ptr %4, align 8, !tbaa !66
  %20 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  br label %25

22:                                               ; preds = %3
  %23 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2) #10
  %24 = load i64, ptr %4, align 8, !tbaa !66
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i64 [ %19, %16 ], [ %24, %22 ]
  %27 = phi ptr [ %21, %16 ], [ %23, %22 ]
  store ptr %27, ptr %5, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store ptr %27, ptr %6, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %28 = getelementptr inbounds i8, ptr %27, i64 %26
  store ptr %28, ptr %7, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %9) #11
  %29 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  br label %30

30:                                               ; preds = %342, %25
  %31 = phi ptr [ %343, %342 ], [ %27, %25 ]
  %32 = phi ptr [ %346, %342 ], [ %27, %25 ]
  %33 = phi ptr [ %345, %342 ], [ %28, %25 ]
  %34 = phi i32 [ %344, %342 ], [ 0, %25 ]
  %35 = ptrtoint ptr %33 to i64
  br label %36

36:                                               ; preds = %30, %40
  %37 = phi ptr [ %31, %30 ], [ %43, %40 ]
  %38 = phi ptr [ %32, %30 ], [ %41, %40 ]
  %39 = icmp ult ptr %38, %33
  br i1 %39, label %40, label %347

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  %42 = load i8, ptr %38, align 1, !tbaa !48
  %43 = getelementptr inbounds i8, ptr %37, i64 1
  store i8 %42, ptr %37, align 1, !tbaa !48
  %44 = icmp eq i8 %42, 38
  br i1 %44, label %45, label %36, !llvm.loop !157

45:                                               ; preds = %40
  store ptr %41, ptr %5, align 8, !tbaa !43
  store ptr %43, ptr %6, align 8, !tbaa !43
  %46 = icmp ult ptr %41, %33
  br i1 %46, label %47, label %241

47:                                               ; preds = %45
  %48 = load i8, ptr %41, align 1, !tbaa !48
  %49 = icmp eq i8 %48, 35
  br i1 %49, label %50, label %158

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, ptr %38, i64 2
  store ptr %51, ptr %5, align 8, !tbaa !43
  %52 = icmp ult ptr %51, %33
  br i1 %52, label %53, label %110

53:                                               ; preds = %50
  %54 = load i8, ptr %51, align 1, !tbaa !48
  switch i8 %54, label %81 [
    i8 120, label %55
    i8 88, label %55
  ]

55:                                               ; preds = %53, %53
  %56 = getelementptr inbounds i8, ptr %38, i64 3
  store ptr %56, ptr %5, align 8, !tbaa !43
  %57 = icmp ult ptr %56, %33
  br i1 %57, label %58, label %241

58:                                               ; preds = %55
  %59 = load i8, ptr %56, align 1, !tbaa !48
  %60 = sext i8 %59 to i32
  %61 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) @PL_hexdigit, i32 noundef %60) #12
  %62 = icmp eq ptr %61, null
  br i1 %62, label %114, label %71

63:                                               ; preds = %71
  %64 = getelementptr inbounds i8, ptr %73, i64 1
  store ptr %64, ptr %5, align 8, !tbaa !43
  %65 = icmp ult ptr %64, %33
  br i1 %65, label %66, label %114

66:                                               ; preds = %63
  %67 = load i8, ptr %64, align 1, !tbaa !48
  %68 = sext i8 %67 to i32
  %69 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) @PL_hexdigit, i32 noundef %68) #12
  %70 = icmp eq ptr %69, null
  br i1 %70, label %114, label %71

71:                                               ; preds = %58, %66
  %72 = phi ptr [ %69, %66 ], [ %61, %58 ]
  %73 = phi ptr [ %64, %66 ], [ %56, %58 ]
  %74 = phi i64 [ %79, %66 ], [ 0, %58 ]
  %75 = shl i64 %74, 4
  %76 = ptrtoint ptr %72 to i64
  %77 = sub i64 %76, ptrtoint (ptr @PL_hexdigit to i64)
  %78 = and i64 %77, 15
  %79 = or disjoint i64 %78, %75
  %80 = icmp ugt i64 %79, 1114111
  br i1 %80, label %241, label %63

81:                                               ; preds = %53
  %82 = ptrtoint ptr %51 to i64
  %83 = sub i64 %35, %82
  %84 = getelementptr i8, ptr %51, i64 %83
  %85 = load i8, ptr %51, align 1, !tbaa !48
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !44
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %110, label %98

91:                                               ; preds = %107
  %92 = load i8, ptr %108, align 1, !tbaa !48
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !44
  %96 = and i32 %95, 2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %110, label %98, !llvm.loop !158

98:                                               ; preds = %81, %91
  %99 = phi i8 [ %92, %91 ], [ %85, %81 ]
  %100 = phi ptr [ %108, %91 ], [ %51, %81 ]
  %101 = phi i64 [ %105, %91 ], [ 0, %81 ]
  %102 = mul i64 %101, 10
  %103 = sext i8 %99 to i64
  %104 = add i64 %102, -48
  %105 = add nsw i64 %104, %103
  %106 = icmp ugt i64 %105, 1114111
  br i1 %106, label %240, label %107

107:                                              ; preds = %98
  %108 = getelementptr inbounds i8, ptr %100, i64 1
  %109 = icmp eq ptr %108, %33
  br i1 %109, label %110, label %91, !llvm.loop !158

110:                                              ; preds = %107, %91, %81, %50
  %111 = phi ptr [ %51, %50 ], [ %51, %81 ], [ %108, %91 ], [ %84, %107 ]
  %112 = phi i32 [ 0, %50 ], [ 0, %81 ], [ 1, %91 ], [ 1, %107 ]
  %113 = phi i64 [ 0, %50 ], [ 0, %81 ], [ %105, %91 ], [ %105, %107 ]
  store ptr %111, ptr %5, align 8, !tbaa !43
  br label %114

114:                                              ; preds = %66, %63, %58, %110
  %115 = phi ptr [ %111, %110 ], [ %56, %58 ], [ %64, %63 ], [ %64, %66 ]
  %116 = phi i32 [ %112, %110 ], [ 0, %58 ], [ 1, %63 ], [ 1, %66 ]
  %117 = phi i64 [ %113, %110 ], [ 0, %58 ], [ %79, %63 ], [ %79, %66 ]
  %118 = icmp ne i64 %117, 0
  %119 = icmp ne i32 %116, 0
  %120 = and i1 %119, %118
  br i1 %120, label %121, label %241

121:                                              ; preds = %114
  %122 = load i32, ptr %12, align 4, !tbaa !50
  %123 = and i32 %122, 536870912
  %124 = icmp eq i32 %123, 0
  %125 = icmp ult i64 %117, 256
  %126 = and i1 %125, %124
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = trunc i64 %117 to i8
  store i8 %128, ptr %9, align 1, !tbaa !48
  store i64 1, ptr %8, align 8, !tbaa !66
  br label %255

129:                                              ; preds = %121
  %130 = and i64 %117, -2
  %131 = icmp eq i64 %130, 65534
  br i1 %131, label %241, label %132

132:                                              ; preds = %129
  %133 = trunc i64 %117 to i32
  %134 = and i32 %133, -1024
  switch i32 %134, label %144 [
    i32 56320, label %135
    i32 55296, label %151
  ]

135:                                              ; preds = %132
  %136 = icmp eq i32 %34, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds i8, ptr %37, i64 -2
  store ptr %138, ptr %6, align 8, !tbaa !43
  %139 = shl i32 %34, 10
  %140 = add i32 %139, -56623104
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, 9216
  %143 = add nsw i64 %142, %117
  br label %151

144:                                              ; preds = %132
  %145 = add nsw i64 %117, -64976
  %146 = icmp ult i64 %145, 32
  %147 = and i64 %117, 65534
  %148 = icmp eq i64 %147, 65534
  %149 = or i1 %146, %148
  %150 = select i1 %149, i64 65533, i64 %117
  br label %151

151:                                              ; preds = %132, %144, %135, %137
  %152 = phi i64 [ %143, %137 ], [ 65533, %135 ], [ %150, %144 ], [ 65533, %132 ]
  %153 = phi i32 [ 0, %137 ], [ 0, %135 ], [ 0, %144 ], [ %133, %132 ]
  %154 = ptrtoint ptr %9 to i64
  %155 = call ptr @Perl_uvuni_to_utf8(ptr noundef nonnull %9, i64 noundef %152) #10
  %156 = ptrtoint ptr %155 to i64
  %157 = sub i64 %156, %154
  store i64 %157, ptr %8, align 8, !tbaa !66
  br label %255

158:                                              ; preds = %47
  %159 = ptrtoint ptr %41 to i64
  %160 = sub i64 %35, %159
  %161 = getelementptr i8, ptr %41, i64 %160
  br label %162

162:                                              ; preds = %158, %170
  %163 = phi ptr [ %171, %170 ], [ %41, %158 ]
  %164 = load i8, ptr %163, align 1, !tbaa !48
  %165 = zext i8 %164 to i64
  %166 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !44
  %168 = and i32 %167, 16385
  %169 = icmp eq i32 %168, 16385
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = getelementptr inbounds i8, ptr %163, i64 1
  %172 = icmp eq ptr %171, %33
  br i1 %172, label %173, label %162, !llvm.loop !159

173:                                              ; preds = %162, %170
  %174 = phi ptr [ %163, %162 ], [ %161, %170 ]
  %175 = icmp ne ptr %1, null
  store ptr %174, ptr %5, align 8, !tbaa !43
  %176 = icmp ne ptr %41, %174
  %177 = and i1 %175, %176
  br i1 %177, label %178, label %241

178:                                              ; preds = %173
  %179 = ptrtoint ptr %174 to i64
  %180 = sub i64 %179, %159
  %181 = trunc i64 %180 to i32
  %182 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %1, ptr noundef nonnull %41, i32 noundef %181, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %178
  %185 = load i8, ptr %174, align 1, !tbaa !48
  %186 = icmp eq i8 %185, 59
  br i1 %186, label %187, label %209

187:                                              ; preds = %184
  %188 = add i32 %181, 1
  %189 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %1, ptr noundef nonnull %41, i32 noundef %188, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %190 = icmp eq ptr %189, null
  br i1 %190, label %209, label %191

191:                                              ; preds = %187, %178
  %192 = phi ptr [ %182, %178 ], [ %189, %187 ]
  %193 = load ptr, ptr %192, align 8, !tbaa !43
  %194 = getelementptr inbounds %struct.sv, ptr %193, i64 0, i32 2
  %195 = load i32, ptr %194, align 4, !tbaa !50
  %196 = and i32 %195, 2098176
  %197 = icmp eq i32 %196, 1024
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load ptr, ptr %193, align 8, !tbaa !62
  %200 = getelementptr inbounds %struct.xpv, ptr %199, i64 0, i32 2
  %201 = load i64, ptr %200, align 8, !tbaa !63
  store i64 %201, ptr %8, align 8, !tbaa !66
  %202 = getelementptr inbounds %struct.sv, ptr %193, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !48
  br label %244

204:                                              ; preds = %191
  %205 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %193, ptr noundef nonnull %8, i32 noundef 2) #10
  %206 = load ptr, ptr %192, align 8, !tbaa !43
  %207 = getelementptr inbounds %struct.sv, ptr %206, i64 0, i32 2
  %208 = load i32, ptr %207, align 4, !tbaa !50
  br label %244

209:                                              ; preds = %187, %184
  br i1 %2, label %210, label %241

210:                                              ; preds = %209, %214
  %211 = phi ptr [ %212, %214 ], [ %174, %209 ]
  %212 = getelementptr inbounds i8, ptr %211, i64 -1
  %213 = icmp ugt ptr %212, %41
  br i1 %213, label %214, label %241

214:                                              ; preds = %210
  %215 = ptrtoint ptr %212 to i64
  %216 = sub i64 %215, %159
  %217 = trunc i64 %216 to i32
  %218 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %1, ptr noundef nonnull %41, i32 noundef %217, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %219 = icmp eq ptr %218, null
  br i1 %219, label %210, label %220, !llvm.loop !160

220:                                              ; preds = %214
  %221 = load ptr, ptr %218, align 8, !tbaa !43
  %222 = getelementptr inbounds %struct.sv, ptr %221, i64 0, i32 2
  %223 = load i32, ptr %222, align 4, !tbaa !50
  %224 = and i32 %223, 2098176
  %225 = icmp eq i32 %224, 1024
  br i1 %225, label %226, label %232

226:                                              ; preds = %220
  %227 = load ptr, ptr %221, align 8, !tbaa !62
  %228 = getelementptr inbounds %struct.xpv, ptr %227, i64 0, i32 2
  %229 = load i64, ptr %228, align 8, !tbaa !63
  store i64 %229, ptr %8, align 8, !tbaa !66
  %230 = getelementptr inbounds %struct.sv, ptr %221, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !48
  br label %237

232:                                              ; preds = %220
  %233 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %221, ptr noundef nonnull %8, i32 noundef 2) #10
  %234 = load ptr, ptr %218, align 8, !tbaa !43
  %235 = getelementptr inbounds %struct.sv, ptr %234, i64 0, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !50
  br label %237

237:                                              ; preds = %232, %226
  %238 = phi i32 [ %223, %226 ], [ %236, %232 ]
  %239 = phi ptr [ %231, %226 ], [ %233, %232 ]
  store ptr %212, ptr %5, align 8, !tbaa !43
  br label %244

240:                                              ; preds = %98
  store ptr %100, ptr %5, align 8, !tbaa !43
  br label %241

241:                                              ; preds = %210, %71, %45, %129, %114, %209, %173, %240, %55
  %242 = phi i32 [ %34, %240 ], [ 0, %173 ], [ 0, %209 ], [ %34, %114 ], [ %34, %129 ], [ %34, %55 ], [ 0, %45 ], [ %34, %71 ], [ 0, %210 ]
  %243 = load ptr, ptr %5, align 8, !tbaa !43
  br label %250

244:                                              ; preds = %198, %204, %237
  %245 = phi i32 [ %238, %237 ], [ %195, %198 ], [ %208, %204 ]
  %246 = phi ptr [ %239, %237 ], [ %203, %198 ], [ %205, %204 ]
  %247 = and i32 %245, 536870912
  %248 = icmp eq ptr %246, null
  %249 = load ptr, ptr %5, align 8, !tbaa !43
  br i1 %248, label %250, label %255

250:                                              ; preds = %241, %244
  %251 = phi ptr [ %243, %241 ], [ %249, %244 ]
  %252 = phi i32 [ %242, %241 ], [ 0, %244 ]
  %253 = load ptr, ptr %6, align 8, !tbaa !43
  %254 = icmp ult ptr %41, %251
  br i1 %254, label %335, label %342

255:                                              ; preds = %151, %127, %244
  %256 = phi ptr [ %249, %244 ], [ %115, %127 ], [ %115, %151 ]
  %257 = phi ptr [ %246, %244 ], [ %9, %127 ], [ %9, %151 ]
  %258 = phi i32 [ %247, %244 ], [ 0, %127 ], [ 1, %151 ]
  %259 = phi i32 [ 0, %244 ], [ %34, %127 ], [ %153, %151 ]
  %260 = icmp ult ptr %256, %33
  br i1 %260, label %261, label %266

261:                                              ; preds = %255
  %262 = load i8, ptr %256, align 1, !tbaa !48
  %263 = icmp eq i8 %262, 59
  br i1 %263, label %264, label %266

264:                                              ; preds = %261
  %265 = getelementptr inbounds i8, ptr %256, i64 1
  store ptr %265, ptr %5, align 8, !tbaa !43
  br label %266

266:                                              ; preds = %264, %261, %255
  %267 = phi ptr [ %265, %264 ], [ %256, %261 ], [ %256, %255 ]
  %268 = load ptr, ptr %6, align 8, !tbaa !43
  %269 = getelementptr inbounds i8, ptr %268, i64 -1
  store ptr %269, ptr %6, align 8, !tbaa !43
  %270 = load i8, ptr %267, align 1, !tbaa !48
  %271 = icmp eq i8 %270, 38
  %272 = select i1 %271, i32 %259, i32 0
  %273 = load i32, ptr %12, align 4, !tbaa !50
  %274 = and i32 %273, 536870912
  %275 = icmp eq i32 %274, 0
  %276 = icmp ne i32 %258, 0
  %277 = select i1 %275, i1 %276, i1 false
  br i1 %277, label %278, label %296

278:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %279 = load ptr, ptr %29, align 8, !tbaa !48
  %280 = ptrtoint ptr %269 to i64
  %281 = ptrtoint ptr %279 to i64
  %282 = sub i64 %280, %281
  store i64 %282, ptr %10, align 8, !tbaa !66
  %283 = call ptr @Perl_bytes_to_utf8(ptr noundef %279, ptr noundef nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  %284 = ptrtoint ptr %267 to i64
  %285 = sub i64 %35, %284
  store i64 %285, ptr %11, align 8, !tbaa !66
  %286 = call ptr @Perl_bytes_to_utf8(ptr noundef nonnull %267, ptr noundef nonnull %11) #10
  %287 = load i64, ptr %10, align 8, !tbaa !66
  call void @Perl_sv_setpvn(ptr noundef nonnull %0, ptr noundef %283, i64 noundef %287) #10
  %288 = load i64, ptr %11, align 8, !tbaa !66
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef %286, i64 noundef %288, i32 noundef 2) #10
  %289 = load i32, ptr %12, align 4, !tbaa !50
  %290 = or i32 %289, 536870912
  store i32 %290, ptr %12, align 4, !tbaa !50
  call void @Perl_safesysfree(ptr noundef %283) #10
  call void @Perl_safesysfree(ptr noundef %286) #10
  %291 = load ptr, ptr %29, align 8, !tbaa !48
  %292 = load i64, ptr %10, align 8, !tbaa !66
  %293 = getelementptr inbounds i8, ptr %291, i64 %292
  store ptr %293, ptr %6, align 8, !tbaa !43
  store ptr %293, ptr %5, align 8, !tbaa !43
  %294 = load i64, ptr %11, align 8, !tbaa !66
  %295 = getelementptr inbounds i8, ptr %293, i64 %294
  store ptr %295, ptr %7, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %302

296:                                              ; preds = %266
  %297 = select i1 %275, i1 true, i1 %276
  br i1 %297, label %302, label %298

298:                                              ; preds = %296
  %299 = call ptr @Perl_bytes_to_utf8(ptr noundef nonnull %257, ptr noundef nonnull %8) #10
  %300 = load ptr, ptr %6, align 8, !tbaa !43
  %301 = load ptr, ptr %5, align 8, !tbaa !43
  br label %302

302:                                              ; preds = %296, %298, %278
  %303 = phi ptr [ %293, %278 ], [ %267, %296 ], [ %301, %298 ]
  %304 = phi ptr [ %293, %278 ], [ %269, %296 ], [ %300, %298 ]
  %305 = phi ptr [ null, %278 ], [ null, %296 ], [ %299, %298 ]
  %306 = phi ptr [ %257, %278 ], [ %257, %296 ], [ %299, %298 ]
  %307 = load i64, ptr %8, align 8, !tbaa !66
  %308 = getelementptr inbounds i8, ptr %304, i64 %307
  %309 = icmp ugt ptr %308, %303
  br i1 %309, label %310, label %317

310:                                              ; preds = %302
  %311 = ptrtoint ptr %303 to i64
  %312 = ptrtoint ptr %304 to i64
  %313 = add i64 %307, %312
  %314 = sub i64 %313, %311
  call fastcc void @grow_gap(ptr noundef nonnull %0, i64 noundef %314, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #9
  %315 = load ptr, ptr %6, align 8, !tbaa !43
  %316 = load i64, ptr %8, align 8, !tbaa !66
  br label %317

317:                                              ; preds = %310, %302
  %318 = phi i64 [ %316, %310 ], [ %307, %302 ]
  %319 = phi ptr [ %315, %310 ], [ %304, %302 ]
  %320 = add i64 %318, -1
  store i64 %320, ptr %8, align 8, !tbaa !66
  %321 = icmp eq i64 %318, 0
  br i1 %321, label %331, label %322

322:                                              ; preds = %317, %322
  %323 = phi ptr [ %325, %322 ], [ %306, %317 ]
  %324 = phi ptr [ %327, %322 ], [ %319, %317 ]
  %325 = getelementptr inbounds i8, ptr %323, i64 1
  %326 = load i8, ptr %323, align 1, !tbaa !48
  %327 = getelementptr inbounds i8, ptr %324, i64 1
  store ptr %327, ptr %6, align 8, !tbaa !43
  store i8 %326, ptr %324, align 1, !tbaa !48
  %328 = load i64, ptr %8, align 8, !tbaa !66
  %329 = add i64 %328, -1
  store i64 %329, ptr %8, align 8, !tbaa !66
  %330 = icmp eq i64 %328, 0
  br i1 %330, label %331, label %322, !llvm.loop !161

331:                                              ; preds = %322, %317
  %332 = phi ptr [ %319, %317 ], [ %327, %322 ]
  %333 = icmp eq ptr %305, null
  br i1 %333, label %342, label %334

334:                                              ; preds = %331
  call void @Perl_safesysfree(ptr noundef nonnull %305) #10
  br label %342

335:                                              ; preds = %250, %335
  %336 = phi ptr [ %338, %335 ], [ %41, %250 ]
  %337 = phi ptr [ %340, %335 ], [ %253, %250 ]
  %338 = getelementptr inbounds i8, ptr %336, i64 1
  %339 = load i8, ptr %336, align 1, !tbaa !48
  %340 = getelementptr inbounds i8, ptr %337, i64 1
  store ptr %340, ptr %6, align 8, !tbaa !43
  store i8 %339, ptr %337, align 1, !tbaa !48
  %341 = icmp ult ptr %338, %251
  br i1 %341, label %335, label %342, !llvm.loop !162

342:                                              ; preds = %335, %250, %331, %334
  %343 = phi ptr [ %332, %334 ], [ %332, %331 ], [ %253, %250 ], [ %340, %335 ]
  %344 = phi i32 [ %272, %334 ], [ %272, %331 ], [ %252, %250 ], [ %252, %335 ]
  %345 = load ptr, ptr %7, align 8, !tbaa !43
  %346 = load ptr, ptr %5, align 8, !tbaa !43
  br label %30, !llvm.loop !157

347:                                              ; preds = %36
  store i8 0, ptr %37, align 1, !tbaa !48
  %348 = load ptr, ptr %29, align 8, !tbaa !48
  %349 = ptrtoint ptr %37 to i64
  %350 = ptrtoint ptr %348 to i64
  %351 = sub i64 %349, %350
  %352 = load ptr, ptr %0, align 8, !tbaa !62
  %353 = getelementptr inbounds %struct.xpv, ptr %352, i64 0, i32 2
  store i64 %351, ptr %353, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #4 !prof !34 !PGOFuncName !163 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !102
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !102
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare i32 @Perl_call_method(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_free_tmps() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_uvuni_to_utf8(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @grow_gap(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !prof !34 !PGOFuncName !164 {
  %6 = load ptr, ptr %2, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = ptrtoint ptr %8 to i64
  %10 = load ptr, ptr %3, align 8, !tbaa !43
  %11 = load ptr, ptr %4, align 8, !tbaa !43
  %12 = ptrtoint ptr %11 to i64
  %13 = sub i64 %12, %9
  %14 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = and i32 %15, 268435456
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = add i64 %1, 1
  %20 = add i64 %19, %13
  br label %28

21:                                               ; preds = %5
  %22 = load ptr, ptr %0, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !48
  %25 = add i64 %1, 1
  %26 = add i64 %25, %13
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18, %21
  %29 = phi i64 [ %20, %18 ], [ %26, %21 ]
  %30 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %0, i64 noundef %29) #10
  %31 = load ptr, ptr %7, align 8, !tbaa !48
  br label %32

32:                                               ; preds = %21, %28
  %33 = phi ptr [ %8, %21 ], [ %31, %28 ]
  %34 = ptrtoint ptr %10 to i64
  %35 = sub i64 %34, %9
  %36 = ptrtoint ptr %6 to i64
  %37 = sub i64 %36, %9
  %38 = getelementptr inbounds i8, ptr %33, i64 %37
  store ptr %38, ptr %2, align 8, !tbaa !43
  %39 = load ptr, ptr %7, align 8, !tbaa !48
  %40 = getelementptr inbounds i8, ptr %39, i64 %35
  store ptr %40, ptr %3, align 8, !tbaa !43
  %41 = load ptr, ptr %7, align 8, !tbaa !48
  %42 = getelementptr inbounds i8, ptr %41, i64 %13
  store ptr %42, ptr %4, align 8, !tbaa !43
  %43 = load ptr, ptr %3, align 8, !tbaa !43
  %44 = getelementptr inbounds i8, ptr %43, i64 %1
  %45 = ptrtoint ptr %42 to i64
  %46 = ptrtoint ptr %43 to i64
  %47 = sub i64 %45, %46
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %44, ptr align 1 %43, i64 %47, i1 false)
  %48 = load ptr, ptr %3, align 8, !tbaa !43
  %49 = getelementptr inbounds i8, ptr %48, i64 %1
  store ptr %49, ptr %3, align 8, !tbaa !43
  %50 = load ptr, ptr %4, align 8, !tbaa !43
  %51 = getelementptr inbounds i8, ptr %50, i64 %1
  store ptr %51, ptr %4, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @Perl_av_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @marked_section_update(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !165 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 18
  store i32 0, ptr %5, align 8, !tbaa !124
  %6 = icmp eq ptr %4, null
  br i1 %6, label %72, label %7

7:                                                ; preds = %1
  %8 = tail call i64 @Perl_av_len(ptr noundef nonnull %4) #10
  %9 = and i64 %8, 2147483648
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %72

11:                                               ; preds = %7
  %12 = add nuw nsw i64 %8, 1
  %13 = and i64 %12, 4294967295
  br label %14

14:                                               ; preds = %11, %69
  %15 = phi i64 [ 0, %11 ], [ %70, %69 ]
  %16 = call ptr @Perl_av_fetch(ptr noundef nonnull %4, i64 noundef %15, i32 noundef 0) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %69, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = call i64 @Perl_av_len(ptr noundef %21) #10
  %23 = and i64 %22, 2147483648
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %69

25:                                               ; preds = %18
  %26 = add nuw nsw i64 %22, 1
  %27 = and i64 %26, 4294967295
  br label %28

28:                                               ; preds = %25, %66
  %29 = phi i64 [ 0, %25 ], [ %67, %66 ]
  %30 = call ptr @Perl_av_fetch(ptr noundef %21, i64 noundef %29, i32 noundef 0) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %33 = load ptr, ptr %30, align 8, !tbaa !43
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = and i32 %35, 2098176
  %37 = icmp eq i32 %36, 1024
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !62
  %40 = getelementptr inbounds %struct.xpv, ptr %39, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !63
  store i64 %41, ptr %2, align 8, !tbaa !66
  %42 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  br label %46

44:                                               ; preds = %32
  %45 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %33, ptr noundef nonnull %2, i32 noundef 2) #10
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi ptr [ %43, %38 ], [ %45, %44 ]
  %48 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(8) @.str.83) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(7) @.str.84) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(6) @.str.85) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(7) @.str.86) #12
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 4, i32 0
  br label %60

60:                                               ; preds = %56, %53, %50, %46
  %61 = phi i32 [ 1, %46 ], [ 2, %50 ], [ 3, %53 ], [ %59, %56 ]
  %62 = load i32, ptr %5, align 8, !tbaa !124
  %63 = icmp ult i32 %62, %61
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 %61, ptr %5, align 8, !tbaa !124
  br label %65

65:                                               ; preds = %64, %60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %66

66:                                               ; preds = %65, %28
  %67 = add nuw nsw i64 %29, 1
  %68 = icmp eq i64 %67, %27
  br i1 %68, label %69, label %28, !llvm.loop !166

69:                                               ; preds = %66, %18, %14
  %70 = add nuw nsw i64 %15, 1
  %71 = icmp eq i64 %70, %13
  br i1 %71, label %72, label %14, !llvm.loop !167

72:                                               ; preds = %69, %7, %1
  %73 = load i32, ptr %5, align 8, !tbaa !124
  %74 = icmp eq i32 %73, 3
  %75 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %76 = zext i1 %74 to i8
  store i8 %76, ptr %75, align 8, !tbaa !117
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @parse_start(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !34 !PGOFuncName !168 {
  %6 = ptrtoint ptr %2 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = alloca [16 x %struct.token_pos], align 16
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 16, ptr %9, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  store ptr %8, ptr %10, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %12 = load i8, ptr %11, align 4, !tbaa !125, !range !60, !noundef !61
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 22
  %16 = load i8, ptr %15, align 2, !tbaa !169, !range !60, !noundef !61
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %5, %14, %18
  %20 = phi i32 [ 8, %18 ], [ 4, %14 ], [ 4, %5 ]
  %21 = phi i32 [ 8, %18 ], [ 2, %14 ], [ 2, %5 ]
  %22 = phi i32 [ 16, %18 ], [ 4, %14 ], [ 4, %5 ]
  %23 = getelementptr inbounds i8, ptr %1, i64 2
  %24 = icmp ult ptr %23, %2
  br i1 %24, label %25, label %53

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 30
  %27 = sub i64 %6, %7
  %28 = getelementptr i8, ptr %1, i64 %27
  br label %29

29:                                               ; preds = %25, %50
  %30 = phi ptr [ %23, %25 ], [ %51, %50 ]
  %31 = load i8, ptr %30, align 1, !tbaa !48
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !48
  %35 = zext i8 %34 to i32
  %36 = and i32 %20, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %29
  %39 = icmp eq i8 %31, 47
  br i1 %39, label %40, label %50

40:                                               ; preds = %38
  br i1 %13, label %41, label %44

41:                                               ; preds = %40
  %42 = load i8, ptr %26, align 2, !tbaa !170, !range !60, !noundef !61
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41, %40
  %45 = getelementptr inbounds i8, ptr %30, i64 1
  %46 = icmp eq ptr %45, %2
  br i1 %46, label %372, label %47

47:                                               ; preds = %44
  %48 = load i8, ptr %45, align 1, !tbaa !48
  %49 = icmp eq i8 %48, 62
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %41, %38
  %51 = getelementptr inbounds i8, ptr %30, i64 1
  %52 = icmp eq ptr %51, %2
  br i1 %52, label %53, label %29, !llvm.loop !171

53:                                               ; preds = %29, %47, %50, %19
  %54 = phi ptr [ %23, %19 ], [ %28, %50 ], [ %30, %47 ], [ %30, %29 ]
  %55 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %55, ptr %8, align 16, !tbaa !107
  %56 = getelementptr inbounds %struct.token_pos, ptr %8, i64 0, i32 1
  store ptr %54, ptr %56, align 8, !tbaa !109
  br label %57

57:                                               ; preds = %57, %53
  %58 = phi ptr [ %54, %53 ], [ %65, %57 ]
  %59 = load i8, ptr %58, align 1, !tbaa !48
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !48
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  %65 = getelementptr inbounds i8, ptr %58, i64 1
  br i1 %64, label %66, label %57, !llvm.loop !172

66:                                               ; preds = %57
  %67 = icmp eq ptr %58, %2
  br i1 %67, label %372, label %68

68:                                               ; preds = %66
  %69 = zext i8 %62 to i32
  %70 = and i32 %21, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %288, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 30
  br label %74

74:                                               ; preds = %72, %279
  %75 = phi ptr [ %8, %72 ], [ %282, %279 ]
  %76 = phi i8 [ %59, %72 ], [ %281, %279 ]
  %77 = phi ptr [ %58, %72 ], [ %284, %279 ]
  %78 = phi i32 [ 1, %72 ], [ %283, %279 ]
  %79 = ptrtoint ptr %77 to i64
  %80 = icmp eq i8 %76, 47
  br i1 %80, label %81, label %93

81:                                               ; preds = %74
  %82 = load i8, ptr %11, align 4, !tbaa !125, !range !60, !noundef !61
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i8, ptr %73, align 2, !tbaa !170, !range !60, !noundef !61
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84, %81
  %88 = getelementptr inbounds i8, ptr %77, i64 1
  %89 = icmp eq ptr %88, %2
  br i1 %89, label %372, label %90

90:                                               ; preds = %87
  %91 = load i8, ptr %88, align 1, !tbaa !48
  %92 = icmp eq i8 %91, 62
  br i1 %92, label %288, label %93

93:                                               ; preds = %90, %84, %74
  %94 = getelementptr inbounds i8, ptr %77, i64 1
  %95 = icmp ult ptr %94, %2
  br i1 %95, label %96, label %127

96:                                               ; preds = %93
  %97 = getelementptr i8, ptr %77, i64 %6
  %98 = sub i64 0, %79
  %99 = getelementptr i8, ptr %97, i64 %98
  br label %100

100:                                              ; preds = %96, %124
  %101 = phi ptr [ %125, %124 ], [ %94, %96 ]
  %102 = phi ptr [ %101, %124 ], [ %77, %96 ]
  %103 = load i8, ptr %101, align 1, !tbaa !48
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !48
  %107 = zext i8 %106 to i32
  %108 = and i32 %22, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %127, label %110

110:                                              ; preds = %100
  %111 = icmp eq i8 %103, 47
  br i1 %111, label %112, label %124

112:                                              ; preds = %110
  %113 = load i8, ptr %11, align 4, !tbaa !125, !range !60, !noundef !61
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i8, ptr %73, align 2, !tbaa !170, !range !60, !noundef !61
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %115, %112
  %119 = getelementptr inbounds i8, ptr %102, i64 2
  %120 = icmp eq ptr %119, %2
  br i1 %120, label %372, label %121

121:                                              ; preds = %118
  %122 = load i8, ptr %119, align 1, !tbaa !48
  %123 = icmp eq i8 %122, 62
  br i1 %123, label %127, label %124

124:                                              ; preds = %121, %115, %110
  %125 = getelementptr inbounds i8, ptr %101, i64 1
  %126 = icmp eq ptr %125, %99
  br i1 %126, label %127, label %100, !llvm.loop !173

127:                                              ; preds = %100, %121, %124, %93
  %128 = phi ptr [ %94, %93 ], [ %99, %124 ], [ %101, %121 ], [ %101, %100 ]
  %129 = ptrtoint ptr %128 to i64
  %130 = icmp eq ptr %128, %2
  br i1 %130, label %372, label %131

131:                                              ; preds = %127
  %132 = add nsw i32 %78, 1
  %133 = load i32, ptr %9, align 4, !tbaa !44
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = icmp ne ptr %75, %8
  call fastcc void @tokens_grow(ptr noundef nonnull %10, ptr noundef nonnull %9, i1 noundef zeroext %136) #9
  %137 = load ptr, ptr %10, align 8, !tbaa !43
  br label %138

138:                                              ; preds = %135, %131
  %139 = phi ptr [ %137, %135 ], [ %75, %131 ]
  %140 = sext i32 %78 to i64
  %141 = getelementptr inbounds %struct.token_pos, ptr %139, i64 %140
  store ptr %77, ptr %141, align 8, !tbaa !107
  %142 = getelementptr inbounds %struct.token_pos, ptr %139, i64 %140, i32 1
  store ptr %128, ptr %142, align 8, !tbaa !109
  br label %143

143:                                              ; preds = %143, %138
  %144 = phi ptr [ %128, %138 ], [ %151, %143 ]
  %145 = load i8, ptr %144, align 1, !tbaa !48
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !48
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  %151 = getelementptr inbounds i8, ptr %144, i64 1
  br i1 %150, label %152, label %143, !llvm.loop !174

152:                                              ; preds = %143
  %153 = icmp eq ptr %144, %2
  br i1 %153, label %372, label %154

154:                                              ; preds = %152
  %155 = icmp eq i8 %145, 61
  br i1 %155, label %156, label %265

156:                                              ; preds = %154, %156
  %157 = phi ptr [ %158, %156 ], [ %144, %154 ]
  %158 = getelementptr inbounds i8, ptr %157, i64 1
  %159 = load i8, ptr %158, align 1, !tbaa !48
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !48
  %163 = and i8 %162, 1
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %156, !llvm.loop !175

165:                                              ; preds = %156
  %166 = icmp eq ptr %158, %2
  br i1 %166, label %372, label %167

167:                                              ; preds = %165
  switch i8 %159, label %205 [
    i8 62, label %168
    i8 34, label %183
    i8 39, label %183
    i8 96, label %179
  ]

168:                                              ; preds = %167
  %169 = add nsw i32 %78, 2
  %170 = load i32, ptr %9, align 4, !tbaa !44
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = icmp ne ptr %139, %8
  call fastcc void @tokens_grow(ptr noundef nonnull %10, ptr noundef nonnull %9, i1 noundef zeroext %173) #9
  br label %174

174:                                              ; preds = %172, %168
  %175 = load ptr, ptr %10, align 8, !tbaa !43
  %176 = sext i32 %132 to i64
  %177 = getelementptr inbounds %struct.token_pos, ptr %175, i64 %176
  store ptr %158, ptr %177, align 8, !tbaa !107
  %178 = getelementptr inbounds %struct.token_pos, ptr %175, i64 %176, i32 1
  store ptr %158, ptr %178, align 8, !tbaa !109
  br label %288

179:                                              ; preds = %167
  %180 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 32
  %181 = load i8, ptr %180, align 4, !tbaa !135, !range !60, !noundef !61
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %205, label %183

183:                                              ; preds = %167, %167, %179
  br label %184

184:                                              ; preds = %183, %188
  %185 = phi ptr [ %186, %188 ], [ %158, %183 ]
  %186 = getelementptr inbounds i8, ptr %185, i64 1
  %187 = icmp ult ptr %186, %2
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i8, ptr %186, align 1, !tbaa !48
  %190 = icmp eq i8 %189, %159
  br i1 %190, label %191, label %184, !llvm.loop !176

191:                                              ; preds = %184, %188
  %192 = icmp eq ptr %186, %2
  br i1 %192, label %372, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds i8, ptr %185, i64 2
  %195 = add nsw i32 %78, 2
  %196 = load i32, ptr %9, align 4, !tbaa !44
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = icmp ne ptr %139, %8
  call fastcc void @tokens_grow(ptr noundef nonnull %10, ptr noundef nonnull %9, i1 noundef zeroext %199) #9
  br label %200

200:                                              ; preds = %193, %198
  %201 = load ptr, ptr %10, align 8, !tbaa !43
  %202 = sext i32 %132 to i64
  %203 = getelementptr inbounds %struct.token_pos, ptr %201, i64 %202
  store ptr %158, ptr %203, align 8, !tbaa !107
  %204 = getelementptr inbounds %struct.token_pos, ptr %201, i64 %202, i32 1
  store ptr %194, ptr %204, align 8, !tbaa !109
  br label %250

205:                                              ; preds = %167, %179
  %206 = icmp ult ptr %158, %2
  br i1 %206, label %207, label %236

207:                                              ; preds = %205
  %208 = getelementptr i8, ptr %128, i64 %6
  %209 = sub i64 0, %129
  %210 = getelementptr i8, ptr %208, i64 %209
  br label %211

211:                                              ; preds = %207, %233
  %212 = phi ptr [ %234, %233 ], [ %158, %207 ]
  %213 = load i8, ptr %212, align 1, !tbaa !48
  %214 = zext i8 %213 to i64
  %215 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !48
  %217 = and i8 %216, 8
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %236, label %219

219:                                              ; preds = %211
  %220 = icmp eq i8 %213, 47
  br i1 %220, label %221, label %233

221:                                              ; preds = %219
  %222 = load i8, ptr %11, align 4, !tbaa !125, !range !60, !noundef !61
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i8, ptr %73, align 2, !tbaa !170, !range !60, !noundef !61
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %224, %221
  %228 = getelementptr inbounds i8, ptr %212, i64 1
  %229 = icmp eq ptr %228, %2
  br i1 %229, label %372, label %230

230:                                              ; preds = %227
  %231 = load i8, ptr %228, align 1, !tbaa !48
  %232 = icmp eq i8 %231, 62
  br i1 %232, label %236, label %233

233:                                              ; preds = %230, %224, %219
  %234 = getelementptr inbounds i8, ptr %212, i64 1
  %235 = icmp ult ptr %234, %2
  br i1 %235, label %211, label %236, !llvm.loop !177

236:                                              ; preds = %211, %230, %233, %205
  %237 = phi ptr [ %158, %205 ], [ %210, %233 ], [ %212, %230 ], [ %212, %211 ]
  %238 = icmp eq ptr %237, %2
  br i1 %238, label %372, label %239

239:                                              ; preds = %236
  %240 = add nsw i32 %78, 2
  %241 = load i32, ptr %9, align 4, !tbaa !44
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = icmp ne ptr %139, %8
  call fastcc void @tokens_grow(ptr noundef nonnull %10, ptr noundef nonnull %9, i1 noundef zeroext %244) #9
  br label %245

245:                                              ; preds = %239, %243
  %246 = load ptr, ptr %10, align 8, !tbaa !43
  %247 = sext i32 %132 to i64
  %248 = getelementptr inbounds %struct.token_pos, ptr %246, i64 %247
  store ptr %158, ptr %248, align 8, !tbaa !107
  %249 = getelementptr inbounds %struct.token_pos, ptr %246, i64 %247, i32 1
  store ptr %237, ptr %249, align 8, !tbaa !109
  br label %250

250:                                              ; preds = %245, %200
  %251 = phi ptr [ %201, %200 ], [ %246, %245 ]
  %252 = phi i32 [ %195, %200 ], [ %240, %245 ]
  %253 = phi ptr [ %194, %200 ], [ %237, %245 ]
  br label %254

254:                                              ; preds = %254, %250
  %255 = phi ptr [ %253, %250 ], [ %262, %254 ]
  %256 = load i8, ptr %255, align 1, !tbaa !48
  %257 = zext i8 %256 to i64
  %258 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !48
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  %262 = getelementptr inbounds i8, ptr %255, i64 1
  br i1 %261, label %263, label %254, !llvm.loop !178

263:                                              ; preds = %254
  %264 = icmp eq ptr %255, %2
  br i1 %264, label %372, label %279

265:                                              ; preds = %154
  %266 = add nsw i32 %78, 2
  %267 = load i32, ptr %9, align 4, !tbaa !44
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = icmp ne ptr %139, %8
  call fastcc void @tokens_grow(ptr noundef nonnull %10, ptr noundef nonnull %9, i1 noundef zeroext %270) #9
  br label %271

271:                                              ; preds = %269, %265
  %272 = load ptr, ptr %10, align 8, !tbaa !43
  %273 = sext i32 %132 to i64
  %274 = getelementptr inbounds %struct.token_pos, ptr %272, i64 %273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %274, i8 0, i64 16, i1 false)
  %275 = load i8, ptr %144, align 1, !tbaa !48
  %276 = zext i8 %275 to i64
  %277 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !48
  br label %279

279:                                              ; preds = %263, %271
  %280 = phi i8 [ %278, %271 ], [ %259, %263 ]
  %281 = phi i8 [ %275, %271 ], [ %256, %263 ]
  %282 = phi ptr [ %272, %271 ], [ %251, %263 ]
  %283 = phi i32 [ %266, %271 ], [ %252, %263 ]
  %284 = phi ptr [ %144, %271 ], [ %255, %263 ]
  %285 = zext i8 %280 to i32
  %286 = and i32 %21, %285
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %74

288:                                              ; preds = %279, %90, %68, %174
  %289 = phi ptr [ %175, %174 ], [ %8, %68 ], [ %282, %279 ], [ %75, %90 ]
  %290 = phi i32 [ %169, %174 ], [ 1, %68 ], [ %283, %279 ], [ %78, %90 ]
  %291 = phi ptr [ %158, %174 ], [ %58, %68 ], [ %284, %279 ], [ %77, %90 ]
  %292 = load i8, ptr %11, align 4, !tbaa !125, !range !60, !noundef !61
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 30
  %296 = load i8, ptr %295, align 2, !tbaa !170, !range !60, !noundef !61
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %303, label %298

298:                                              ; preds = %294, %288
  %299 = load i8, ptr %291, align 1, !tbaa !48
  switch i8 %299, label %370 [
    i8 47, label %300
    i8 62, label %313
  ]

300:                                              ; preds = %298
  %301 = getelementptr inbounds i8, ptr %291, i64 1
  %302 = icmp eq ptr %301, %2
  br i1 %302, label %372, label %306

303:                                              ; preds = %294
  %304 = load i8, ptr %291, align 1, !tbaa !48
  %305 = icmp eq i8 %304, 62
  br i1 %305, label %313, label %370

306:                                              ; preds = %300
  %307 = load i8, ptr %301, align 1, !tbaa !48
  %308 = icmp eq i8 %307, 62
  br i1 %308, label %309, label %370

309:                                              ; preds = %306
  %310 = getelementptr inbounds i8, ptr %291, i64 2
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %1, ptr noundef nonnull %310, i32 noundef %3, ptr noundef %289, i32 noundef %290, ptr noundef %4) #9
  %311 = load ptr, ptr %10, align 8, !tbaa !43
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %310, ptr noundef nonnull %310, i32 noundef %3, ptr noundef %311, i32 noundef 1, ptr noundef %4) #9
  %312 = load ptr, ptr %10, align 8, !tbaa !43
  br label %366

313:                                              ; preds = %303, %298
  %314 = getelementptr inbounds i8, ptr %291, i64 1
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %1, ptr noundef nonnull %314, i32 noundef %3, ptr noundef %289, i32 noundef %290, ptr noundef %4) #9
  %315 = load i8, ptr %11, align 4, !tbaa !125, !range !60, !noundef !61
  %316 = icmp eq i8 %315, 0
  %317 = load ptr, ptr %10, align 8, !tbaa !43
  br i1 %316, label %318, label %366

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.token_pos, ptr %317, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !109
  %321 = load ptr, ptr %317, align 8, !tbaa !107
  %322 = ptrtoint ptr %320 to i64
  %323 = ptrtoint ptr %321 to i64
  %324 = sub i64 %322, %323
  %325 = trunc i64 %324 to i32
  br label %326

326:                                              ; preds = %318, %361
  %327 = phi i64 [ 0, %318 ], [ %362, %361 ]
  %328 = phi i32 [ 6, %318 ], [ %364, %361 ]
  %329 = icmp eq i32 %328, %325
  br i1 %329, label %330, label %361

330:                                              ; preds = %326
  %331 = getelementptr inbounds [8 x %struct.literal_tag], ptr @literal_mode_elem, i64 0, i64 %327, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !179
  br label %333

333:                                              ; preds = %350, %330
  %334 = phi ptr [ %55, %330 ], [ %351, %350 ]
  %335 = phi ptr [ %332, %330 ], [ %352, %350 ]
  %336 = phi i32 [ %325, %330 ], [ %353, %350 ]
  %337 = load i8, ptr %334, align 1, !tbaa !48
  %338 = zext i8 %337 to i64
  %339 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !44
  %341 = and i32 %340, 16400
  %342 = icmp eq i32 %341, 16400
  %343 = add i8 %337, 32
  %344 = zext i8 %343 to i32
  %345 = sext i8 %337 to i32
  %346 = select i1 %342, i32 %344, i32 %345
  %347 = load i8, ptr %335, align 1, !tbaa !48
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %346, %348
  br i1 %349, label %350, label %361

350:                                              ; preds = %333
  %351 = getelementptr inbounds i8, ptr %334, i64 1
  %352 = getelementptr inbounds i8, ptr %335, i64 1
  %353 = add nsw i32 %336, -1
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %333, !llvm.loop !181

355:                                              ; preds = %350
  %356 = trunc i64 %327 to i32
  %357 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 8
  store ptr %332, ptr %357, align 8, !tbaa !106
  %358 = icmp ult i32 %356, 5
  %359 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %360 = zext i1 %358 to i8
  store i8 %360, ptr %359, align 8, !tbaa !117
  br label %366

361:                                              ; preds = %333, %326
  %362 = add nuw nsw i64 %327, 1
  %363 = getelementptr inbounds [8 x %struct.literal_tag], ptr @literal_mode_elem, i64 0, i64 %362
  %364 = load i32, ptr %363, align 8, !tbaa !182
  %365 = icmp eq i64 %362, 7
  br i1 %365, label %366, label %326, !llvm.loop !183

366:                                              ; preds = %361, %355, %309, %313
  %367 = phi ptr [ %317, %355 ], [ %312, %309 ], [ %317, %313 ], [ %317, %361 ]
  %368 = phi ptr [ %314, %355 ], [ %310, %309 ], [ %314, %313 ], [ %314, %361 ]
  %369 = icmp eq ptr %367, %8
  br i1 %369, label %378, label %375

370:                                              ; preds = %306, %298, %303
  %371 = icmp eq ptr %289, %8
  br i1 %371, label %378, label %375

372:                                              ; preds = %44, %263, %236, %191, %165, %152, %127, %87, %118, %227, %66, %300
  %373 = load ptr, ptr %10, align 8, !tbaa !43
  %374 = icmp eq ptr %373, %8
  br i1 %374, label %378, label %375

375:                                              ; preds = %372, %370, %366
  %376 = phi ptr [ %367, %366 ], [ %289, %370 ], [ %373, %372 ]
  %377 = phi ptr [ %368, %366 ], [ null, %370 ], [ %1, %372 ]
  call void @Perl_safesysfree(ptr noundef %376) #10
  br label %378

378:                                              ; preds = %375, %372, %370, %366
  %379 = phi ptr [ %368, %366 ], [ null, %370 ], [ %1, %372 ], [ %377, %375 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #11
  ret ptr %379
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @parse_end(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !34 !PGOFuncName !184 {
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = alloca %struct.token_pos, align 8
  %9 = alloca %struct.token_pos, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 2
  %11 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %12 = load i8, ptr %11, align 4, !tbaa !125, !range !60, !noundef !61
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 22
  %16 = load i8, ptr %15, align 2, !tbaa !169, !range !60, !noundef !61
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 8, i32 2
  %19 = select i1 %17, i32 8, i32 4
  br label %20

20:                                               ; preds = %14, %5
  %21 = phi i32 [ 2, %5 ], [ %18, %14 ]
  %22 = phi i32 [ 4, %5 ], [ %19, %14 ]
  %23 = load i8, ptr %10, align 1, !tbaa !48
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !48
  %27 = zext i8 %26 to i32
  %28 = and i32 %21, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %76, label %30

30:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  store ptr %10, ptr %8, align 8, !tbaa !107
  %31 = getelementptr inbounds i8, ptr %1, i64 3
  %32 = icmp ult ptr %31, %2
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = sub i64 %7, %6
  %35 = getelementptr i8, ptr %1, i64 %34
  br label %36

36:                                               ; preds = %33, %45
  %37 = phi ptr [ %46, %45 ], [ %31, %33 ]
  %38 = load i8, ptr %37, align 1, !tbaa !48
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !48
  %42 = zext i8 %41 to i32
  %43 = and i32 %22, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds i8, ptr %37, i64 1
  %47 = icmp eq ptr %46, %2
  br i1 %47, label %48, label %36, !llvm.loop !185

48:                                               ; preds = %36, %45, %30
  %49 = phi ptr [ %31, %30 ], [ %35, %45 ], [ %37, %36 ]
  %50 = getelementptr inbounds %struct.token_pos, ptr %8, i64 0, i32 1
  store ptr %49, ptr %50, align 8, !tbaa !109
  %51 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 23
  %52 = load i8, ptr %51, align 1, !tbaa !186, !range !60, !noundef !61
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %48, %54
  %55 = phi ptr [ %62, %54 ], [ %49, %48 ]
  %56 = load i8, ptr %55, align 1, !tbaa !48
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !48
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  %62 = getelementptr inbounds i8, ptr %55, i64 1
  br i1 %61, label %65, label %54, !llvm.loop !187

63:                                               ; preds = %48
  %64 = tail call fastcc ptr @skip_until_gt(ptr noundef nonnull %49, ptr noundef %2) #9
  br label %65

65:                                               ; preds = %54, %63
  %66 = phi ptr [ %64, %63 ], [ %55, %54 ]
  %67 = icmp ult ptr %66, %2
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i8, ptr %66, align 1, !tbaa !48
  %70 = icmp eq i8 %69, 62
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = getelementptr inbounds i8, ptr %66, i64 1
  call fastcc void @report_event(ptr noundef %0, i32 noundef 3, ptr noundef %1, ptr noundef nonnull %72, i32 noundef %3, ptr noundef nonnull %8, i32 noundef 1, ptr noundef %4) #9
  br label %73

73:                                               ; preds = %71, %65
  %74 = phi ptr [ %1, %65 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %86

75:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %86

76:                                               ; preds = %20
  %77 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 21
  %78 = load i8, ptr %77, align 1, !tbaa !112, !range !60, !noundef !61
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = tail call fastcc ptr @skip_until_gt(ptr noundef nonnull %10, ptr noundef %2) #9
  %82 = icmp ult ptr %81, %2
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  store ptr %10, ptr %9, align 8, !tbaa !107
  %84 = getelementptr inbounds %struct.token_pos, ptr %9, i64 0, i32 1
  store ptr %81, ptr %84, align 8, !tbaa !109
  %85 = getelementptr inbounds i8, ptr %81, i64 1
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %85, i32 noundef %3, ptr noundef nonnull %9, i32 noundef 1, ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  br label %86

86:                                               ; preds = %76, %75, %73, %80, %83
  %87 = phi ptr [ %85, %83 ], [ %1, %80 ], [ %74, %73 ], [ null, %75 ], [ null, %76 ]
  ret ptr %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @parse_decl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !34 !PGOFuncName !188 {
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = alloca %struct.token_pos, align 8
  %9 = alloca [8 x %struct.token_pos], align 16
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca %struct.token_pos, align 8
  %13 = getelementptr inbounds i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !48
  switch i8 %14, label %32 [
    i8 45, label %15
    i8 91, label %26
    i8 62, label %29
  ]

15:                                               ; preds = %5
  %16 = getelementptr inbounds i8, ptr %1, i64 3
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %259, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %16, align 1, !tbaa !48
  %20 = icmp eq i8 %19, 45
  br i1 %20, label %21, label %238

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %1, i64 4
  %23 = tail call fastcc ptr @parse_comment(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
  %24 = icmp eq ptr %23, %22
  %25 = select i1 %24, ptr %1, ptr %23
  br label %259

26:                                               ; preds = %5
  %27 = tail call fastcc ptr @parse_marked_section(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %238, label %259

29:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  store ptr %13, ptr %8, align 8, !tbaa !107
  %30 = getelementptr inbounds %struct.token_pos, ptr %8, i64 0, i32 1
  store ptr %13, ptr %30, align 8, !tbaa !109
  %31 = getelementptr inbounds i8, ptr %1, i64 3
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %31, i32 noundef %3, ptr noundef nonnull %8, i32 noundef 1, ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %259

32:                                               ; preds = %5
  %33 = zext i8 %14 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !44
  %36 = and i32 %35, 16388
  %37 = icmp eq i32 %36, 16388
  br i1 %37, label %38, label %238

38:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 8, ptr %10, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  store ptr %9, ptr %11, align 8, !tbaa !43
  %39 = getelementptr inbounds i8, ptr %1, i64 3
  %40 = icmp ult ptr %39, %2
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = sub i64 %7, %6
  %43 = getelementptr i8, ptr %1, i64 %42
  br label %44

44:                                               ; preds = %41, %52
  %45 = phi ptr [ %53, %52 ], [ %39, %41 ]
  %46 = load i8, ptr %45, align 1, !tbaa !48
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !48
  %50 = and i8 %49, 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds i8, ptr %45, i64 1
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %55, label %44, !llvm.loop !189

55:                                               ; preds = %44, %52, %38
  %56 = phi ptr [ %39, %38 ], [ %43, %52 ], [ %45, %44 ]
  %57 = icmp eq ptr %56, %2
  br i1 %57, label %228, label %58

58:                                               ; preds = %55
  %59 = ptrtoint ptr %56 to i64
  %60 = ptrtoint ptr %13 to i64
  %61 = sub i64 %59, %60
  switch i64 %61, label %236 [
    i64 7, label %62
    i64 6, label %75
  ]

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %64 = load i8, ptr %63, align 4, !tbaa !125, !range !60, !noundef !61
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %68 = load i8, ptr %67, align 1, !tbaa !126, !range !60, !noundef !61
  %69 = xor i8 %68, 1
  %70 = zext nneg i8 %69 to i32
  br label %71

71:                                               ; preds = %66, %62
  %72 = phi i32 [ 0, %62 ], [ %70, %66 ]
  %73 = call fastcc i32 @strnEQx(ptr noundef nonnull %13, ptr noundef nonnull @.str.88, i64 noundef 7, i32 noundef %72) #9, !range !190
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %236, label %88

75:                                               ; preds = %58
  %76 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %77 = load i8, ptr %76, align 4, !tbaa !125, !range !60, !noundef !61
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %81 = load i8, ptr %80, align 1, !tbaa !126, !range !60, !noundef !61
  %82 = xor i8 %81, 1
  %83 = zext nneg i8 %82 to i32
  br label %84

84:                                               ; preds = %79, %75
  %85 = phi i32 [ 0, %75 ], [ %83, %79 ]
  %86 = call fastcc i32 @strnEQx(ptr noundef nonnull %13, ptr noundef nonnull @.str.89, i64 noundef 6, i32 noundef %85) #9, !range !190
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %236, label %88

88:                                               ; preds = %84, %71
  store ptr %13, ptr %9, align 16, !tbaa !107
  %89 = getelementptr inbounds %struct.token_pos, ptr %9, i64 0, i32 1
  store ptr %56, ptr %89, align 8, !tbaa !109
  br label %90

90:                                               ; preds = %216, %88
  %91 = phi ptr [ %9, %88 ], [ %217, %216 ]
  %92 = phi i32 [ 1, %88 ], [ %218, %216 ]
  %93 = phi ptr [ %56, %88 ], [ %219, %216 ]
  %94 = icmp ult ptr %93, %2
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = ptrtoint ptr %93 to i64
  %97 = getelementptr i8, ptr %93, i64 %7
  %98 = sub i64 0, %96
  %99 = getelementptr i8, ptr %97, i64 %98
  br label %100

100:                                              ; preds = %95, %108
  %101 = phi ptr [ %109, %108 ], [ %93, %95 ]
  %102 = load i8, ptr %101, align 1, !tbaa !48
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !48
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds i8, ptr %101, i64 1
  %110 = icmp eq ptr %109, %99
  br i1 %110, label %111, label %100, !llvm.loop !191

111:                                              ; preds = %100, %108, %90
  %112 = phi ptr [ %93, %90 ], [ %99, %108 ], [ %101, %100 ]
  %113 = icmp eq ptr %112, %2
  br i1 %113, label %228, label %114

114:                                              ; preds = %111
  %115 = load i8, ptr %112, align 1, !tbaa !48
  switch i8 %115, label %116 [
    i8 34, label %121
    i8 39, label %121
    i8 96, label %117
    i8 45, label %145
    i8 62, label %220
  ]

116:                                              ; preds = %117, %114
  br label %190

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 32
  %119 = load i8, ptr %118, align 4, !tbaa !135, !range !60, !noundef !61
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %116, label %121

121:                                              ; preds = %114, %114, %117
  br label %122

122:                                              ; preds = %121, %126
  %123 = phi ptr [ %124, %126 ], [ %112, %121 ]
  %124 = getelementptr inbounds i8, ptr %123, i64 1
  %125 = icmp ult ptr %124, %2
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i8, ptr %124, align 1, !tbaa !48
  %128 = icmp eq i8 %127, %115
  br i1 %128, label %129, label %122, !llvm.loop !192

129:                                              ; preds = %122, %126
  %130 = icmp eq ptr %124, %2
  br i1 %130, label %228, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds i8, ptr %123, i64 2
  %133 = add nsw i32 %92, 1
  %134 = load i32, ptr %10, align 4, !tbaa !44
  %135 = icmp eq i32 %133, %134
  %136 = load ptr, ptr %11, align 8, !tbaa !43
  br i1 %135, label %137, label %140

137:                                              ; preds = %131
  %138 = icmp ne ptr %136, %9
  call fastcc void @tokens_grow(ptr noundef nonnull %11, ptr noundef nonnull %10, i1 noundef zeroext %138) #9
  %139 = load ptr, ptr %11, align 8, !tbaa !43
  br label %140

140:                                              ; preds = %131, %137
  %141 = phi ptr [ %136, %131 ], [ %139, %137 ]
  %142 = sext i32 %92 to i64
  %143 = getelementptr inbounds %struct.token_pos, ptr %141, i64 %142
  store ptr %112, ptr %143, align 8, !tbaa !107
  %144 = getelementptr inbounds %struct.token_pos, ptr %141, i64 %142, i32 1
  store ptr %132, ptr %144, align 8, !tbaa !109
  br label %216

145:                                              ; preds = %114
  %146 = getelementptr inbounds i8, ptr %112, i64 1
  %147 = icmp eq ptr %146, %2
  br i1 %147, label %228, label %148

148:                                              ; preds = %145
  %149 = load i8, ptr %146, align 1, !tbaa !48
  %150 = icmp eq i8 %149, 45
  br i1 %150, label %151, label %224

151:                                              ; preds = %148
  %152 = getelementptr inbounds i8, ptr %112, i64 2
  br label %153

153:                                              ; preds = %174, %151
  %154 = phi ptr [ %152, %151 ], [ %172, %174 ]
  %155 = icmp ult ptr %154, %2
  br i1 %155, label %156, label %168

156:                                              ; preds = %153
  %157 = ptrtoint ptr %154 to i64
  %158 = getelementptr i8, ptr %154, i64 %7
  %159 = sub i64 0, %157
  %160 = getelementptr i8, ptr %158, i64 %159
  br label %161

161:                                              ; preds = %156, %165
  %162 = phi ptr [ %166, %165 ], [ %154, %156 ]
  %163 = load i8, ptr %162, align 1, !tbaa !48
  %164 = icmp eq i8 %163, 45
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds i8, ptr %162, i64 1
  %167 = icmp eq ptr %166, %160
  br i1 %167, label %168, label %161, !llvm.loop !193

168:                                              ; preds = %161, %165, %153
  %169 = phi ptr [ %154, %153 ], [ %160, %165 ], [ %162, %161 ]
  %170 = icmp eq ptr %169, %2
  br i1 %170, label %228, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds i8, ptr %169, i64 1
  %173 = icmp eq ptr %172, %2
  br i1 %173, label %228, label %174

174:                                              ; preds = %171
  %175 = load i8, ptr %172, align 1, !tbaa !48
  %176 = icmp eq i8 %175, 45
  br i1 %176, label %177, label %153

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, ptr %169, i64 2
  %179 = add nsw i32 %92, 1
  %180 = load i32, ptr %10, align 4, !tbaa !44
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = icmp ne ptr %91, %9
  call fastcc void @tokens_grow(ptr noundef nonnull %11, ptr noundef nonnull %10, i1 noundef zeroext %183) #9
  %184 = load ptr, ptr %11, align 8, !tbaa !43
  br label %185

185:                                              ; preds = %177, %182
  %186 = phi ptr [ %91, %177 ], [ %184, %182 ]
  %187 = sext i32 %92 to i64
  %188 = getelementptr inbounds %struct.token_pos, ptr %186, i64 %187
  store ptr %112, ptr %188, align 8, !tbaa !107
  %189 = getelementptr inbounds %struct.token_pos, ptr %186, i64 %187, i32 1
  store ptr %178, ptr %189, align 8, !tbaa !109
  br label %216

190:                                              ; preds = %116, %194
  %191 = phi ptr [ %192, %194 ], [ %112, %116 ]
  %192 = getelementptr inbounds i8, ptr %191, i64 1
  %193 = icmp ult ptr %192, %2
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load i8, ptr %192, align 1, !tbaa !48
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !48
  %199 = and i8 %198, 8
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %190, !llvm.loop !194

201:                                              ; preds = %190, %194
  %202 = icmp eq ptr %192, %2
  br i1 %202, label %228, label %203

203:                                              ; preds = %201
  %204 = add nsw i32 %92, 1
  %205 = load i32, ptr %10, align 4, !tbaa !44
  %206 = icmp eq i32 %204, %205
  %207 = load ptr, ptr %11, align 8, !tbaa !43
  br i1 %206, label %208, label %211

208:                                              ; preds = %203
  %209 = icmp ne ptr %207, %9
  call fastcc void @tokens_grow(ptr noundef nonnull %11, ptr noundef nonnull %10, i1 noundef zeroext %209) #9
  %210 = load ptr, ptr %11, align 8, !tbaa !43
  br label %211

211:                                              ; preds = %203, %208
  %212 = phi ptr [ %207, %203 ], [ %210, %208 ]
  %213 = sext i32 %92 to i64
  %214 = getelementptr inbounds %struct.token_pos, ptr %212, i64 %213
  store ptr %112, ptr %214, align 8, !tbaa !107
  %215 = getelementptr inbounds %struct.token_pos, ptr %212, i64 %213, i32 1
  store ptr %192, ptr %215, align 8, !tbaa !109
  br label %216

216:                                              ; preds = %211, %185, %140
  %217 = phi ptr [ %141, %140 ], [ %186, %185 ], [ %212, %211 ]
  %218 = phi i32 [ %133, %140 ], [ %179, %185 ], [ %204, %211 ]
  %219 = phi ptr [ %132, %140 ], [ %178, %185 ], [ %192, %211 ]
  br label %90

220:                                              ; preds = %114
  %221 = getelementptr inbounds i8, ptr %112, i64 1
  call fastcc void @report_event(ptr noundef %0, i32 noundef 0, ptr noundef %1, ptr noundef nonnull %221, i32 noundef %3, ptr noundef %91, i32 noundef %92, ptr noundef %4) #9
  %222 = load ptr, ptr %11, align 8, !tbaa !43
  %223 = icmp eq ptr %222, %9
  br i1 %223, label %234, label %231

224:                                              ; preds = %148
  %225 = load ptr, ptr %11, align 8, !tbaa !43
  %226 = icmp eq ptr %225, %9
  br i1 %226, label %236, label %227

227:                                              ; preds = %224
  call void @Perl_safesysfree(ptr noundef %225) #10
  br label %236

228:                                              ; preds = %145, %201, %129, %111, %171, %168, %55
  %229 = load ptr, ptr %11, align 8, !tbaa !43
  %230 = icmp eq ptr %229, %9
  br i1 %230, label %234, label %231

231:                                              ; preds = %228, %220
  %232 = phi ptr [ %222, %220 ], [ %229, %228 ]
  %233 = phi ptr [ %221, %220 ], [ %1, %228 ]
  call void @Perl_safesysfree(ptr noundef %232) #10
  br label %234

234:                                              ; preds = %231, %220, %228
  %235 = phi ptr [ %1, %228 ], [ %221, %220 ], [ %233, %231 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #11
  br label %259

236:                                              ; preds = %71, %58, %84, %224, %227
  %237 = phi ptr [ %146, %224 ], [ %146, %227 ], [ %56, %84 ], [ %56, %58 ], [ %56, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #11
  br label %238

238:                                              ; preds = %236, %18, %32, %26
  %239 = phi ptr [ %13, %26 ], [ %237, %236 ], [ %13, %32 ], [ %16, %18 ]
  %240 = ptrtoint ptr %239 to i64
  %241 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 21
  %242 = load i8, ptr %241, align 1, !tbaa !112, !range !60, !noundef !61
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %259

244:                                              ; preds = %238
  %245 = icmp ult ptr %239, %2
  br i1 %245, label %246, label %259

246:                                              ; preds = %244
  %247 = sub i64 %7, %240
  %248 = getelementptr i8, ptr %239, i64 %247
  br label %249

249:                                              ; preds = %246, %253
  %250 = phi ptr [ %254, %253 ], [ %239, %246 ]
  %251 = load i8, ptr %250, align 1, !tbaa !48
  %252 = icmp eq i8 %251, 62
  br i1 %252, label %256, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds i8, ptr %250, i64 1
  %255 = icmp eq ptr %254, %248
  br i1 %255, label %259, label %249, !llvm.loop !195

256:                                              ; preds = %249
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  store ptr %13, ptr %12, align 8, !tbaa !107
  %257 = getelementptr inbounds %struct.token_pos, ptr %12, i64 0, i32 1
  store ptr %250, ptr %257, align 8, !tbaa !109
  %258 = getelementptr inbounds i8, ptr %250, i64 1
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %258, i32 noundef %3, ptr noundef nonnull %12, i32 noundef 1, ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  br label %259

259:                                              ; preds = %253, %244, %15, %21, %234, %238, %26, %256, %29
  %260 = phi ptr [ %258, %256 ], [ %27, %26 ], [ %31, %29 ], [ null, %238 ], [ %235, %234 ], [ %1, %15 ], [ %25, %21 ], [ %1, %244 ], [ %1, %253 ]
  ret ptr %260
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @parse_process(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !34 !PGOFuncName !196 {
  %6 = alloca %struct.token_pos, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  store ptr %7, ptr %6, align 8, !tbaa !107
  %8 = icmp ult ptr %7, %2
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.token_pos, ptr %6, i64 0, i32 1
  %11 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %12 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 31
  %13 = ptrtoint ptr %1 to i64
  br label %14

14:                                               ; preds = %9, %33
  %15 = phi ptr [ %7, %9 ], [ %34, %33 ]
  %16 = load i8, ptr %15, align 1, !tbaa !48
  %17 = icmp eq i8 %16, 62
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  store ptr %15, ptr %10, align 8, !tbaa !109
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  %20 = load i8, ptr %11, align 4, !tbaa !125, !range !60, !noundef !61
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8, ptr %12, align 1, !tbaa !197, !range !60, !noundef !61
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22, %18
  %26 = ptrtoint ptr %19 to i64
  %27 = sub i64 %26, %13
  %28 = icmp slt i64 %27, 4
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %15, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !48
  %32 = icmp eq i8 %31, 63
  br i1 %32, label %36, label %33

33:                                               ; preds = %25, %29, %39
  %34 = phi ptr [ %40, %39 ], [ %19, %29 ], [ %19, %25 ]
  %35 = icmp ult ptr %34, %2
  br i1 %35, label %14, label %41, !llvm.loop !198

36:                                               ; preds = %29
  %37 = getelementptr inbounds i8, ptr %15, i64 -1
  store ptr %37, ptr %10, align 8, !tbaa !109
  br label %38

38:                                               ; preds = %22, %36
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 5, ptr noundef %1, ptr noundef nonnull %19, i32 noundef %3, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %4) #9
  br label %41

39:                                               ; preds = %14
  %40 = getelementptr inbounds i8, ptr %15, i64 1
  br label %33

41:                                               ; preds = %33, %5, %38
  %42 = phi ptr [ %19, %38 ], [ %1, %5 ], [ %1, %33 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret ptr %42
}

; Function Attrs: optsize
declare i64 @Perl_av_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tokens_grow(ptr nocapture noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) unnamed_addr #0 !prof !34 !PGOFuncName !199 {
  %4 = load i32, ptr %1, align 4, !tbaa !44
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 4)
  %6 = shl nuw nsw i32 %5, 1
  br i1 %2, label %7, label %12

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !43
  %9 = zext nneg i32 %6 to i64
  %10 = shl nuw nsw i64 %9, 4
  %11 = tail call ptr @Perl_safesysrealloc(ptr noundef %8, i64 noundef %10) #10
  br label %27

12:                                               ; preds = %3
  %13 = zext nneg i32 %6 to i64
  %14 = shl nuw nsw i64 %13, 4
  %15 = tail call ptr @Perl_safesysmalloc(i64 noundef %14) #10
  %16 = load i32, ptr %1, align 4, !tbaa !44
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12, %18
  %19 = phi i64 [ %23, %18 ], [ 0, %12 ]
  %20 = getelementptr inbounds %struct.token_pos, ptr %15, i64 %19
  %21 = load ptr, ptr %0, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.token_pos, ptr %21, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !200
  %23 = add nuw nsw i64 %19, 1
  %24 = load i32, ptr %1, align 4, !tbaa !44
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %18, label %27, !llvm.loop !201

27:                                               ; preds = %18, %12, %7
  %28 = phi ptr [ %11, %7 ], [ %15, %12 ], [ %15, %18 ]
  store ptr %28, ptr %0, align 8, !tbaa !43
  store i32 %6, ptr %1, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @skip_until_gt(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 !prof !34 !PGOFuncName !202 {
  %3 = icmp ult ptr %0, %1
  br i1 %3, label %4, label %23

4:                                                ; preds = %2, %19
  %5 = phi i8 [ %9, %19 ], [ 32, %2 ]
  %6 = phi i8 [ %20, %19 ], [ 0, %2 ]
  %7 = phi ptr [ %21, %19 ], [ %0, %2 ]
  %8 = icmp ne i8 %6, 0
  %9 = load i8, ptr %7, align 1, !tbaa !48
  %10 = icmp ne i8 %9, 62
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  switch i8 %9, label %19 [
    i8 34, label %13
    i8 39, label %13
  ]

13:                                               ; preds = %12, %12
  %14 = icmp eq i8 %9, %6
  %15 = or i1 %8, %14
  %16 = select i1 %14, i8 0, i8 %6
  br i1 %15, label %19, label %17

17:                                               ; preds = %13
  switch i8 %5, label %19 [
    i8 61, label %18
    i8 32, label %18
  ]

18:                                               ; preds = %17, %17
  br label %19

19:                                               ; preds = %17, %13, %12, %18
  %20 = phi i8 [ %9, %18 ], [ 0, %17 ], [ %6, %12 ], [ %16, %13 ]
  %21 = getelementptr inbounds i8, ptr %7, i64 1
  %22 = icmp ult ptr %21, %1
  br i1 %22, label %4, label %23, !llvm.loop !203

23:                                               ; preds = %4, %19, %2
  %24 = phi ptr [ %1, %2 ], [ %1, %19 ], [ %7, %4 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @parse_comment(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !34 !PGOFuncName !204 {
  %6 = ptrtoint ptr %2 to i64
  %7 = alloca [4 x %struct.token_pos], align 16
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca %struct.token_pos, align 8
  %11 = alloca %struct.token_pos, align 8
  %12 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 21
  %13 = load i8, ptr %12, align 1, !tbaa !112, !range !60, !noundef !61
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %84, label %15

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 4, ptr %8, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  store ptr %7, ptr %9, align 8, !tbaa !43
  br label %16

16:                                               ; preds = %74, %15
  %17 = phi ptr [ %75, %74 ], [ %7, %15 ]
  %18 = phi ptr [ %66, %74 ], [ %1, %15 ]
  %19 = phi i32 [ %68, %74 ], [ 0, %15 ]
  %20 = phi ptr [ null, %74 ], [ %1, %15 ]
  br label %21

21:                                               ; preds = %16, %65
  %22 = phi ptr [ %18, %16 ], [ %66, %65 ]
  %23 = phi ptr [ %20, %16 ], [ %66, %65 ]
  %24 = icmp eq ptr %23, null
  br label %25

25:                                               ; preds = %21, %62
  %26 = phi ptr [ %50, %62 ], [ %22, %21 ]
  br label %27

27:                                               ; preds = %51, %25
  %28 = phi ptr [ %26, %25 ], [ %50, %51 ]
  %29 = icmp ult ptr %28, %2
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = ptrtoint ptr %28 to i64
  %32 = getelementptr i8, ptr %28, i64 %6
  %33 = sub i64 0, %31
  %34 = getelementptr i8, ptr %32, i64 %33
  br label %35

35:                                               ; preds = %30, %38
  %36 = phi ptr [ %39, %38 ], [ %28, %30 ]
  %37 = load i8, ptr %36, align 1, !tbaa !48
  switch i8 %37, label %38 [
    i8 45, label %41
    i8 62, label %41
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  %40 = icmp eq ptr %39, %34
  br i1 %40, label %41, label %35, !llvm.loop !205

41:                                               ; preds = %38, %35, %35, %27
  %42 = phi ptr [ %28, %27 ], [ %36, %35 ], [ %36, %35 ], [ %34, %38 ]
  %43 = icmp eq ptr %42, %2
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr %9, align 8, !tbaa !43
  %46 = icmp eq ptr %45, %7
  br i1 %46, label %82, label %79

47:                                               ; preds = %41
  %48 = load i8, ptr %42, align 1, !tbaa !48
  %49 = icmp eq i8 %48, 62
  %50 = getelementptr inbounds i8, ptr %42, i64 1
  br i1 %49, label %51, label %57

51:                                               ; preds = %47
  br i1 %24, label %52, label %27

52:                                               ; preds = %51
  %53 = getelementptr inbounds i8, ptr %1, i64 -4
  %54 = load ptr, ptr %9, align 8, !tbaa !43
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %53, ptr noundef nonnull %50, i32 noundef %3, ptr noundef %54, i32 noundef %19, ptr noundef %4) #9
  %55 = load ptr, ptr %9, align 8, !tbaa !43
  %56 = icmp eq ptr %55, %7
  br i1 %56, label %82, label %79

57:                                               ; preds = %47
  %58 = icmp eq ptr %50, %2
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load ptr, ptr %9, align 8, !tbaa !43
  %61 = icmp eq ptr %60, %7
  br i1 %61, label %82, label %79

62:                                               ; preds = %57
  %63 = load i8, ptr %50, align 1, !tbaa !48
  %64 = icmp eq i8 %63, 45
  br i1 %64, label %65, label %25

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, ptr %42, i64 2
  br i1 %24, label %21, label %67

67:                                               ; preds = %65
  %68 = add nuw nsw i32 %19, 1
  %69 = load i32, ptr %8, align 4, !tbaa !44
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = icmp ne ptr %17, %7
  call fastcc void @tokens_grow(ptr noundef nonnull %9, ptr noundef nonnull %8, i1 noundef zeroext %72) #9
  %73 = load ptr, ptr %9, align 8, !tbaa !43
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi ptr [ %73, %71 ], [ %17, %67 ]
  %76 = zext nneg i32 %19 to i64
  %77 = getelementptr inbounds %struct.token_pos, ptr %75, i64 %76
  store ptr %23, ptr %77, align 8, !tbaa !107
  %78 = getelementptr inbounds %struct.token_pos, ptr %75, i64 %76, i32 1
  store ptr %42, ptr %78, align 8, !tbaa !109
  br label %16

79:                                               ; preds = %59, %52, %44
  %80 = phi ptr [ %45, %44 ], [ %55, %52 ], [ %60, %59 ]
  %81 = phi ptr [ %1, %44 ], [ %50, %52 ], [ %1, %59 ]
  call void @Perl_safesysfree(ptr noundef %80) #10
  br label %82

82:                                               ; preds = %79, %59, %52, %44
  %83 = phi ptr [ %1, %44 ], [ %50, %52 ], [ %1, %59 ], [ %81, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  br label %146

84:                                               ; preds = %5
  %85 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 10
  %86 = load i8, ptr %85, align 1, !tbaa !113, !range !60, !noundef !61
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  store ptr %1, ptr %10, align 8, !tbaa !107
  %89 = icmp ult ptr %1, %2
  br i1 %89, label %90, label %101

90:                                               ; preds = %88, %94
  %91 = phi ptr [ %95, %94 ], [ %1, %88 ]
  %92 = load i8, ptr %91, align 1, !tbaa !48
  %93 = icmp eq i8 %92, 62
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %91, i64 1
  %96 = icmp eq ptr %95, %2
  br i1 %96, label %101, label %90, !llvm.loop !206

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.token_pos, ptr %10, i64 0, i32 1
  store ptr %91, ptr %98, align 8, !tbaa !109
  %99 = getelementptr inbounds i8, ptr %91, i64 1
  %100 = getelementptr inbounds i8, ptr %1, i64 -4
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %100, ptr noundef nonnull %99, i32 noundef %3, ptr noundef nonnull %10, i32 noundef 1, ptr noundef %4) #9
  br label %101

101:                                              ; preds = %94, %88, %97
  %102 = phi ptr [ %99, %97 ], [ %1, %88 ], [ %1, %94 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  br label %146

103:                                              ; preds = %84
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #11
  store ptr %1, ptr %11, align 8, !tbaa !107
  br label %104

104:                                              ; preds = %139, %103
  %105 = phi ptr [ %1, %103 ], [ %121, %139 ]
  %106 = icmp ult ptr %105, %2
  br i1 %106, label %107, label %142

107:                                              ; preds = %104
  %108 = ptrtoint ptr %105 to i64
  %109 = getelementptr i8, ptr %105, i64 %6
  %110 = sub i64 0, %108
  %111 = getelementptr i8, ptr %109, i64 %110
  br label %112

112:                                              ; preds = %107, %116
  %113 = phi ptr [ %117, %116 ], [ %105, %107 ]
  %114 = load i8, ptr %113, align 1, !tbaa !48
  %115 = icmp eq i8 %114, 45
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr i8, ptr %113, i64 1
  %118 = icmp eq ptr %117, %111
  br i1 %118, label %142, label %112, !llvm.loop !207

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.token_pos, ptr %11, i64 0, i32 1
  store ptr %113, ptr %120, align 8, !tbaa !109
  %121 = getelementptr inbounds i8, ptr %113, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !48
  %123 = icmp eq i8 %122, 45
  br i1 %123, label %124, label %139

124:                                              ; preds = %119
  %125 = getelementptr inbounds i8, ptr %113, i64 2
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi ptr [ %125, %124 ], [ %134, %126 ]
  %128 = load i8, ptr %127, align 1, !tbaa !48
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !48
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  %134 = getelementptr inbounds i8, ptr %127, i64 1
  br i1 %133, label %135, label %126, !llvm.loop !208

135:                                              ; preds = %126
  %136 = icmp eq i8 %128, 62
  br i1 %136, label %137, label %139

137:                                              ; preds = %135
  %138 = getelementptr inbounds i8, ptr %1, i64 -4
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %138, ptr noundef nonnull %134, i32 noundef %3, ptr noundef nonnull %11, i32 noundef 1, ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  br label %146

139:                                              ; preds = %135, %119
  %140 = phi ptr [ %127, %135 ], [ %121, %119 ]
  %141 = icmp ult ptr %140, %2
  br i1 %141, label %104, label %142

142:                                              ; preds = %139, %104, %116
  %143 = phi ptr [ %111, %116 ], [ %105, %104 ], [ %140, %139 ]
  %144 = icmp eq ptr %143, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  %145 = select i1 %144, ptr %1, ptr null
  br label %146

146:                                              ; preds = %142, %137, %101, %82
  %147 = phi ptr [ %83, %82 ], [ %102, %101 ], [ %134, %137 ], [ %145, %142 ]
  ret ptr %147
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @parse_marked_section(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !34 !PGOFuncName !209 {
  %6 = ptrtoint ptr %2 to i64
  %7 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 20
  %8 = load i8, ptr %7, align 8, !tbaa !210, !range !60, !noundef !61
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %127, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %1, i64 3
  br label %12

12:                                               ; preds = %106, %10
  %13 = phi ptr [ null, %10 ], [ %75, %106 ]
  %14 = phi ptr [ %11, %10 ], [ %107, %106 ]
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi ptr [ %14, %12 ], [ %23, %15 ]
  %17 = load i8, ptr %16, align 1, !tbaa !48
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !48
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds i8, ptr %16, i64 1
  br i1 %22, label %24, label %15, !llvm.loop !211

24:                                               ; preds = %15
  %25 = and i8 %20, 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %74, label %27

27:                                               ; preds = %24
  %28 = icmp eq i32 %3, 0
  br label %29

29:                                               ; preds = %27, %66
  %30 = phi ptr [ %42, %66 ], [ %16, %27 ]
  %31 = phi ptr [ %57, %66 ], [ %13, %27 ]
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %34, %32 ], [ %30, %29 ]
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !48
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !48
  %39 = and i8 %38, 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %32, !llvm.loop !212

41:                                               ; preds = %32, %41
  %42 = phi ptr [ %49, %41 ], [ %34, %32 ]
  %43 = load i8, ptr %42, align 1, !tbaa !48
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !48
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  %49 = getelementptr inbounds i8, ptr %42, i64 1
  br i1 %48, label %50, label %41, !llvm.loop !213

50:                                               ; preds = %41
  %51 = icmp eq ptr %42, %2
  br i1 %51, label %125, label %52

52:                                               ; preds = %50
  %53 = icmp eq ptr %31, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = tail call ptr @Perl_newSV_type(i32 noundef 11) #10
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi ptr [ %31, %52 ], [ %55, %54 ]
  %58 = ptrtoint ptr %34 to i64
  %59 = ptrtoint ptr %30 to i64
  %60 = sub i64 %58, %59
  %61 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull %30, i64 noundef %60) #10
  br i1 %28, label %66, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !50
  %65 = or i32 %64, 536870912
  store i32 %65, ptr %63, align 4, !tbaa !50
  br label %66

66:                                               ; preds = %56, %62
  %67 = tail call fastcc ptr @sv_lower(ptr noundef %61) #9
  tail call void @Perl_av_push(ptr noundef %57, ptr noundef %61) #10
  %68 = load i8, ptr %42, align 1, !tbaa !48
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !48
  %72 = and i8 %71, 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %29

74:                                               ; preds = %66, %24
  %75 = phi ptr [ %13, %24 ], [ %57, %66 ]
  %76 = phi ptr [ %16, %24 ], [ %42, %66 ]
  %77 = phi i8 [ %17, %24 ], [ %68, %66 ]
  switch i8 %77, label %124 [
    i8 45, label %78
    i8 91, label %108
  ]

78:                                               ; preds = %74
  %79 = getelementptr inbounds i8, ptr %76, i64 1
  %80 = load i8, ptr %79, align 1, !tbaa !48
  %81 = icmp eq i8 %80, 45
  br i1 %81, label %82, label %124

82:                                               ; preds = %78
  %83 = getelementptr inbounds i8, ptr %76, i64 2
  br label %84

84:                                               ; preds = %102, %82
  %85 = phi ptr [ %83, %82 ], [ %103, %102 ]
  %86 = icmp ult ptr %85, %2
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = ptrtoint ptr %85 to i64
  %89 = getelementptr i8, ptr %85, i64 %6
  %90 = sub i64 0, %88
  %91 = getelementptr i8, ptr %89, i64 %90
  br label %92

92:                                               ; preds = %87, %96
  %93 = phi ptr [ %97, %96 ], [ %85, %87 ]
  %94 = load i8, ptr %93, align 1, !tbaa !48
  %95 = icmp eq i8 %94, 45
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %93, i64 1
  %98 = icmp eq ptr %97, %91
  br i1 %98, label %99, label %92, !llvm.loop !214

99:                                               ; preds = %92, %96, %84
  %100 = phi ptr [ %85, %84 ], [ %91, %96 ], [ %93, %92 ]
  %101 = icmp eq ptr %100, %2
  br i1 %101, label %125, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds i8, ptr %100, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !48
  %105 = icmp eq i8 %104, 45
  br i1 %105, label %106, label %84

106:                                              ; preds = %102
  %107 = getelementptr inbounds i8, ptr %100, i64 2
  br label %12

108:                                              ; preds = %74
  %109 = getelementptr inbounds i8, ptr %76, i64 1
  %110 = icmp eq ptr %75, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = tail call ptr @Perl_newSV_type(i32 noundef 11) #10
  %113 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.83, i64 noundef 7) #10
  tail call void @Perl_av_push(ptr noundef %112, ptr noundef %113) #10
  br label %114

114:                                              ; preds = %111, %108
  %115 = phi ptr [ %75, %108 ], [ %112, %111 ]
  %116 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  %117 = load ptr, ptr %116, align 8, !tbaa !95
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = tail call ptr @Perl_newSV_type(i32 noundef 11) #10
  store ptr %120, ptr %116, align 8, !tbaa !95
  br label %121

121:                                              ; preds = %119, %114
  %122 = phi ptr [ %120, %119 ], [ %117, %114 ]
  %123 = tail call ptr @Perl_newRV_noinc(ptr noundef %115) #10
  tail call void @Perl_av_push(ptr noundef %122, ptr noundef %123) #10
  tail call fastcc void @marked_section_update(ptr noundef nonnull %0) #9
  tail call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %1, ptr noundef nonnull %109, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  br label %127

124:                                              ; preds = %74, %78
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %75) #9
  br label %127

125:                                              ; preds = %50, %99
  %126 = phi ptr [ %75, %99 ], [ %31, %50 ]
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %126) #9
  br label %127

127:                                              ; preds = %5, %125, %124, %121
  %128 = phi ptr [ %1, %125 ], [ null, %124 ], [ %109, %121 ], [ null, %5 ]
  ret ptr %128
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @strnEQx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #6 !prof !34 !PGOFuncName !215 {
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  br label %8

8:                                                ; preds = %6, %38
  %9 = phi i64 [ %2, %6 ], [ %12, %38 ]
  %10 = phi ptr [ %1, %6 ], [ %40, %38 ]
  %11 = phi ptr [ %0, %6 ], [ %39, %38 ]
  %12 = add i64 %9, -1
  %13 = load i8, ptr %11, align 1, !tbaa !48
  br i1 %7, label %35, label %14

14:                                               ; preds = %8
  %15 = zext i8 %13 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !44
  %18 = and i32 %17, 16400
  %19 = icmp eq i32 %18, 16400
  %20 = add i8 %13, 32
  %21 = zext i8 %20 to i32
  %22 = sext i8 %13 to i32
  %23 = select i1 %19, i32 %21, i32 %22
  %24 = load i8, ptr %10, align 1, !tbaa !48
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !44
  %28 = and i32 %27, 16400
  %29 = icmp eq i32 %28, 16400
  %30 = add i8 %24, 32
  %31 = zext i8 %30 to i32
  %32 = sext i8 %24 to i32
  %33 = select i1 %29, i32 %31, i32 %32
  %34 = icmp eq i32 %23, %33
  br i1 %34, label %38, label %42

35:                                               ; preds = %8
  %36 = load i8, ptr %10, align 1, !tbaa !48
  %37 = icmp eq i8 %13, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %14
  %39 = getelementptr inbounds i8, ptr %11, i64 1
  %40 = getelementptr inbounds i8, ptr %10, i64 1
  %41 = icmp eq i64 %12, 0
  br i1 %41, label %42, label %8, !llvm.loop !216

42:                                               ; preds = %14, %35, %38, %4
  %43 = phi i32 [ 1, %4 ], [ 1, %38 ], [ 0, %35 ], [ 0, %14 ]
  ret i32 %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @has_hibit(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 !prof !34 !PGOFuncName !217 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %6 ]
  %5 = icmp ult ptr %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  %8 = load i8, ptr %4, align 1, !tbaa !48
  %9 = icmp sgt i8 %8, -1
  br i1 %9, label %3, label %10

10:                                               ; preds = %6, %3
  ret i1 %5
}

; Function Attrs: optsize
declare zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @argspec_compile(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !218 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x i8], align 1
  %7 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.47, i64 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !50
  %10 = and i32 %9, 2098176
  %11 = icmp eq i32 %10, 1024
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !63
  store i64 %15, ptr %3, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  br label %22

18:                                               ; preds = %2
  %19 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #10
  %20 = load i64, ptr %3, align 8, !tbaa !66
  %21 = load i32, ptr %8, align 4, !tbaa !50
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i32 [ %9, %12 ], [ %21, %18 ]
  %24 = phi i64 [ %15, %12 ], [ %20, %18 ]
  %25 = phi ptr [ %17, %12 ], [ %19, %18 ]
  %26 = getelementptr inbounds i8, ptr %25, i64 %24
  %27 = and i32 %23, 536870912
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !50
  %32 = or i32 %31, 536870912
  store i32 %32, ptr %30, align 4, !tbaa !50
  br label %33

33:                                               ; preds = %29, %22
  br label %34

34:                                               ; preds = %33, %34
  %35 = phi ptr [ %42, %34 ], [ %25, %33 ]
  %36 = load i8, ptr %35, align 1, !tbaa !48
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !48
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  %42 = getelementptr inbounds i8, ptr %35, i64 1
  br i1 %41, label %43, label %34, !llvm.loop !219

43:                                               ; preds = %34
  %44 = icmp eq i8 %36, 64
  br i1 %44, label %45, label %67

45:                                               ; preds = %43, %45
  %46 = phi ptr [ %47, %45 ], [ %35, %43 ]
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !48
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !48
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %45, !llvm.loop !220

54:                                               ; preds = %45
  %55 = icmp eq i8 %48, 123
  br i1 %55, label %56, label %67

56:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 22, ptr %4, align 1, !tbaa !48
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull %4, i64 noundef 1, i32 noundef 2) #10
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi ptr [ %47, %56 ], [ %59, %57 ]
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !48
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !48
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %57, !llvm.loop !221

66:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %67

67:                                               ; preds = %54, %66, %43
  %68 = phi i8 [ %36, %43 ], [ %60, %66 ], [ 64, %54 ]
  %69 = phi ptr [ %35, %43 ], [ %59, %66 ], [ %35, %54 ]
  %70 = icmp ult ptr %69, %26
  br i1 %70, label %71, label %229

71:                                               ; preds = %67
  %72 = getelementptr inbounds [2 x i8], ptr %6, i64 0, i64 1
  %73 = getelementptr inbounds %struct.p_state, ptr %1, i64 0, i32 3
  %74 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %75 = zext i8 %68 to i64
  %76 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !48
  br label %80

78:                                               ; preds = %220
  %79 = icmp ult ptr %222, %26
  br i1 %79, label %80, label %229, !llvm.loop !222

80:                                               ; preds = %71, %78
  %81 = phi i8 [ %77, %71 ], [ %226, %78 ]
  %82 = phi i8 [ %68, %71 ], [ %223, %78 ]
  %83 = phi ptr [ %69, %71 ], [ %222, %78 ]
  %84 = and i8 %81, 2
  %85 = icmp ne i8 %84, 0
  %86 = icmp eq i8 %82, 64
  %87 = or i1 %86, %85
  br i1 %87, label %88, label %145

88:                                               ; preds = %80, %88
  %89 = phi ptr [ %90, %88 ], [ %83, %80 ]
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !48
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !48
  %95 = and i8 %94, 4
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %88, !llvm.loop !223

97:                                               ; preds = %88
  %98 = ptrtoint ptr %90 to i64
  %99 = ptrtoint ptr %83 to i64
  %100 = sub i64 %98, %99
  br label %101

101:                                              ; preds = %97, %111
  %102 = phi ptr [ @argname, %97 ], [ %113, %111 ]
  %103 = phi i32 [ 1, %97 ], [ %112, %111 ]
  %104 = load ptr, ptr %102, align 8, !tbaa !43
  %105 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %104, ptr noundef nonnull dereferenceable(1) %83, i64 noundef %100) #12
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = getelementptr inbounds i8, ptr %104, i64 %100
  %109 = load i8, ptr %108, align 1, !tbaa !48
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %101, %107
  %112 = add nuw nsw i32 %103, 1
  %113 = getelementptr inbounds ptr, ptr %102, i64 1
  %114 = icmp eq i32 %112, 21
  br i1 %114, label %144, label %101, !llvm.loop !224

115:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  %116 = trunc i32 %103 to i8
  store i8 %116, ptr %5, align 1, !tbaa !48
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull %5, i64 noundef 1, i32 noundef 2) #10
  %117 = add nsw i32 %103, -17
  %118 = icmp ult i32 %117, 2
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i64, ptr %73, align 8, !tbaa !115
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %143

122:                                              ; preds = %119
  store i64 1, ptr %73, align 8, !tbaa !115
  br label %143

123:                                              ; preds = %115
  %124 = icmp eq i32 %103, 13
  br i1 %124, label %125, label %131

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.p_state, ptr %1, i64 0, i32 17
  %127 = load ptr, ptr %126, align 8, !tbaa !94
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %143

129:                                              ; preds = %125
  %130 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.47, i64 noundef 0) #10
  store ptr %130, ptr %126, align 8, !tbaa !94
  br label %143

131:                                              ; preds = %123
  %132 = add nsw i32 %103, -7
  %133 = icmp ult i32 %132, 2
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.p_state, ptr %1, i64 0, i32 35
  %136 = load i32, ptr %135, align 8, !tbaa !119
  %137 = icmp eq i32 %136, 11
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  store i32 7, ptr %135, align 8, !tbaa !119
  br label %143

139:                                              ; preds = %131
  %140 = icmp eq i32 %103, 11
  br i1 %140, label %141, label %143

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.p_state, ptr %1, i64 0, i32 35
  store i32 11, ptr %142, align 8, !tbaa !119
  br label %143

143:                                              ; preds = %125, %129, %119, %122, %139, %141, %134, %138
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %183

144:                                              ; preds = %111
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.97, i64 noundef %100, ptr noundef nonnull %83) #10
  br label %183

145:                                              ; preds = %80
  switch i8 %82, label %182 [
    i8 34, label %146
    i8 39, label %146
  ]

146:                                              ; preds = %145, %145
  %147 = getelementptr inbounds i8, ptr %83, i64 1
  %148 = icmp ult ptr %147, %26
  br i1 %148, label %149, label %158

149:                                              ; preds = %146, %155
  %150 = phi ptr [ %156, %155 ], [ %147, %146 ]
  %151 = load i8, ptr %150, align 1, !tbaa !48
  %152 = icmp eq i8 %151, %82
  %153 = icmp eq i8 %151, 92
  %154 = or i1 %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds i8, ptr %150, i64 1
  %157 = icmp ult ptr %156, %26
  br i1 %157, label %149, label %158, !llvm.loop !225

158:                                              ; preds = %155, %146
  %159 = phi ptr [ %147, %146 ], [ %156, %155 ]
  %160 = load i8, ptr %159, align 1, !tbaa !48
  br label %161

161:                                              ; preds = %149, %158
  %162 = phi ptr [ %159, %158 ], [ %150, %149 ]
  %163 = phi i8 [ %160, %158 ], [ %151, %149 ]
  %164 = icmp eq i8 %163, %82
  br i1 %164, label %165, label %178

165:                                              ; preds = %161
  %166 = ptrtoint ptr %162 to i64
  %167 = ptrtoint ptr %83 to i64
  %168 = xor i64 %167, -1
  %169 = add i64 %166, %168
  %170 = trunc i64 %169 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  %171 = icmp sgt i32 %170, 255
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.98) #10
  br label %173

173:                                              ; preds = %172, %165
  store i8 21, ptr %6, align 1, !tbaa !48
  %174 = trunc i64 %169 to i8
  store i8 %174, ptr %72, align 1, !tbaa !48
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull %6, i64 noundef 2, i32 noundef 2) #10
  %175 = shl i64 %169, 32
  %176 = ashr exact i64 %175, 32
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull %147, i64 noundef %176, i32 noundef 2) #10
  %177 = getelementptr inbounds i8, ptr %162, i64 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br label %183

178:                                              ; preds = %161
  %179 = icmp eq i8 %163, 92
  br i1 %179, label %180, label %181

180:                                              ; preds = %178
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.99) #10
  br label %183

181:                                              ; preds = %178
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.100) #10
  br label %183

182:                                              ; preds = %145
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.101, ptr noundef nonnull %83) #10
  br label %183

183:                                              ; preds = %173, %181, %180, %143, %144, %182
  %184 = phi ptr [ %162, %181 ], [ %162, %180 ], [ %177, %173 ], [ %90, %143 ], [ %90, %144 ], [ %83, %182 ]
  br label %185

185:                                              ; preds = %183, %185
  %186 = phi ptr [ %193, %185 ], [ %184, %183 ]
  %187 = load i8, ptr %186, align 1, !tbaa !48
  %188 = zext i8 %187 to i64
  %189 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !48
  %191 = and i8 %190, 1
  %192 = icmp eq i8 %191, 0
  %193 = getelementptr inbounds i8, ptr %186, i64 1
  br i1 %192, label %194, label %185, !llvm.loop !226

194:                                              ; preds = %185
  %195 = icmp eq i8 %187, 125
  br i1 %195, label %196, label %212

196:                                              ; preds = %194
  %197 = load ptr, ptr %74, align 8, !tbaa !48
  %198 = load i8, ptr %197, align 1, !tbaa !48
  %199 = icmp eq i8 %198, 22
  br i1 %199, label %200, label %212

200:                                              ; preds = %196, %200
  %201 = phi ptr [ %202, %200 ], [ %186, %196 ]
  %202 = getelementptr inbounds i8, ptr %201, i64 1
  %203 = load i8, ptr %202, align 1, !tbaa !48
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !48
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %200, !llvm.loop !227

209:                                              ; preds = %200
  %210 = icmp ult ptr %202, %26
  br i1 %210, label %211, label %212

211:                                              ; preds = %209
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.102, ptr noundef nonnull %202) #10
  br label %212

212:                                              ; preds = %209, %211, %196, %194
  %213 = phi ptr [ %202, %211 ], [ %202, %209 ], [ %186, %196 ], [ %186, %194 ]
  %214 = icmp eq ptr %213, %26
  br i1 %214, label %229, label %215

215:                                              ; preds = %212
  %216 = load i8, ptr %213, align 1, !tbaa !48
  %217 = icmp eq i8 %216, 44
  br i1 %217, label %219, label %218

218:                                              ; preds = %215
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.103) #10
  br label %219

219:                                              ; preds = %218, %215
  br label %220

220:                                              ; preds = %219, %220
  %221 = phi ptr [ %222, %220 ], [ %213, %219 ]
  %222 = getelementptr inbounds i8, ptr %221, i64 1
  %223 = load i8, ptr %222, align 1, !tbaa !48
  %224 = zext i8 %223 to i64
  %225 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !48
  %227 = and i8 %226, 1
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %78, label %220, !llvm.loop !228

229:                                              ; preds = %78, %212, %67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @check_handler(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !229 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !50
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #10
  %8 = load i32, ptr %2, align 4, !tbaa !50
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi i32 [ %3, %1 ], [ %8, %6 ]
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = trunc i32 %17 to i8
  switch i8 %18, label %23 [
    i8 13, label %19
    i8 11, label %21
  ]

19:                                               ; preds = %13
  %20 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %0) #10
  br label %37

21:                                               ; preds = %13
  %22 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %15) #9
  br label %37

23:                                               ; preds = %13
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.104) #10
  %24 = load i32, ptr %2, align 4, !tbaa !50
  br label %25

25:                                               ; preds = %23, %9
  %26 = phi i32 [ %24, %23 ], [ %10, %9 ]
  %27 = and i32 %26, 65280
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %26, 255
  %30 = icmp eq i32 %29, 8
  %31 = or i1 %28, %30
  %32 = and i32 %26, 16777471
  %33 = icmp eq i32 %32, 16777226
  %34 = or i1 %33, %31
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %0) #10
  br label %37

37:                                               ; preds = %21, %19, %35, %25
  %38 = phi ptr [ %36, %35 ], [ null, %25 ], [ %15, %21 ], [ %20, %19 ]
  ret ptr %38
}

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491971510}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523442, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 63, i32 4652}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!"Parser.c:magic_free_pstate"}
!36 = !{!37, !38, i64 40}
!37 = !{!"magic", !38, i64 0, !38, i64 8, !41, i64 16, !39, i64 18, !39, i64 19, !42, i64 24, !38, i64 32, !38, i64 40}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"short", !39, i64 0}
!42 = !{!"long", !39, i64 0}
!43 = !{!38, !38, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !39, i64 0}
!46 = !{!47, !38, i64 0}
!47 = !{!"cv", !38, i64 0, !45, i64 8, !45, i64 12, !39, i64 16}
!48 = !{!39, !39, i64 0}
!49 = !{!"Parser.c:XS_HTML__Parser__alloc_pstate"}
!50 = !{!51, !45, i64 12}
!51 = !{!"sv", !38, i64 0, !45, i64 8, !45, i64 12, !39, i64 16}
!52 = !{!53, !45, i64 0}
!53 = !{!"p_state", !45, i64 0, !38, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !54, i64 40, !54, i64 41, !54, i64 42, !38, i64 48, !54, i64 56, !54, i64 57, !38, i64 64, !38, i64 72, !54, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !38, i64 112, !45, i64 120, !38, i64 128, !54, i64 136, !54, i64 137, !54, i64 138, !54, i64 139, !54, i64 140, !54, i64 141, !54, i64 142, !54, i64 143, !54, i64 144, !54, i64 145, !54, i64 146, !54, i64 147, !54, i64 148, !38, i64 152, !39, i64 160, !45, i64 304, !38, i64 312, !38, i64 320, !38, i64 328, !38, i64 336, !45, i64 344, !38, i64 352, !38, i64 360}
!54 = !{!"_Bool", !39, i64 0}
!55 = !{!53, !38, i64 352}
!56 = !{!53, !38, i64 360}
!57 = !{!37, !38, i64 8}
!58 = !{!"Parser.c:XS_HTML__Parser_parse"}
!59 = !{!53, !54, i64 41}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!51, !38, i64 0}
!63 = !{!64, !42, i64 16}
!64 = !{!"xpv", !38, i64 0, !39, i64 8, !42, i64 16, !39, i64 24}
!65 = !{!53, !54, i64 42}
!66 = !{!42, !42, i64 0}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"Parser.c:XS_HTML__Parser_eof"}
!70 = !{!"Parser.c:XS_HTML__Parser_strict_comment"}
!71 = !{!54, !54, i64 0}
!72 = !{!"Parser.c:XS_HTML__Parser_boolean_attribute_value"}
!73 = !{!53, !38, i64 152}
!74 = !{!"Parser.c:XS_HTML__Parser_ignore_tags"}
!75 = !{!76, !39, i64 34}
!76 = !{!"op", !38, i64 0, !38, i64 8, !38, i64 16, !42, i64 24, !45, i64 32, !45, i64 33, !45, i64 33, !45, i64 33, !45, i64 33, !45, i64 33, !45, i64 33, !45, i64 33, !39, i64 34, !39, i64 35}
!77 = distinct !{!77, !68}
!78 = distinct !{!78, !68}
!79 = !{!"Parser.c:XS_HTML__Parser_handler"}
!80 = distinct !{!80, !68}
!81 = !{!82, !38, i64 0}
!82 = !{!"p_handler", !38, i64 0, !38, i64 8}
!83 = !{!82, !38, i64 8}
!84 = !{!"Parser.c:XS_HTML__Entities_decode_entities"}
!85 = distinct !{!85, !68}
!86 = !{!"Parser.c:XS_HTML__Entities__decode_entities"}
!87 = !{!"Parser.c:XS_HTML__Entities__probably_utf8_chunk"}
!88 = !{!"Parser.c:XS_HTML__Entities_UNICODE_SUPPORT"}
!89 = !{!76, !39, i64 35}
!90 = !{!76, !42, i64 24}
!91 = !{!"Parser.c:free_pstate"}
!92 = !{!53, !38, i64 8}
!93 = !{!53, !38, i64 72}
!94 = !{!53, !38, i64 112}
!95 = !{!53, !38, i64 128}
!96 = distinct !{!96, !68}
!97 = !{!53, !38, i64 312}
!98 = !{!53, !38, i64 320}
!99 = !{!53, !38, i64 328}
!100 = !{!53, !38, i64 336}
!101 = !{!"Parser.c:S_SvREFCNT_dec"}
!102 = !{!51, !45, i64 8}
!103 = !{!"Parser.c:get_pstate_hv"}
!104 = !{!"Parser.c:parse"}
!105 = !{!53, !54, i64 40}
!106 = !{!53, !38, i64 48}
!107 = !{!108, !38, i64 0}
!108 = !{!"token_pos", !38, i64 0, !38, i64 8}
!109 = !{!108, !38, i64 8}
!110 = !{!53, !38, i64 64}
!111 = distinct !{!111, !68}
!112 = !{!53, !54, i64 137}
!113 = !{!53, !54, i64 57}
!114 = !{!53, !42, i64 16}
!115 = !{!53, !42, i64 24}
!116 = !{!53, !42, i64 32}
!117 = !{!53, !54, i64 56}
!118 = !{!53, !54, i64 145}
!119 = !{!53, !45, i64 304}
!120 = !{!53, !54, i64 142}
!121 = !{!"Parser.c:get_pstate_iv"}
!122 = !{!"Parser.c:report_event"}
!123 = distinct !{!123, !68}
!124 = !{!53, !45, i64 120}
!125 = !{!53, !54, i64 140}
!126 = !{!53, !54, i64 143}
!127 = !{!53, !45, i64 344}
!128 = !{!53, !54, i64 141}
!129 = !{!53, !54, i64 80}
!130 = !{!53, !42, i64 88}
!131 = !{!53, !42, i64 96}
!132 = !{!53, !42, i64 104}
!133 = distinct !{!133, !68}
!134 = distinct !{!134, !68}
!135 = !{!53, !54, i64 148}
!136 = distinct !{!136, !68}
!137 = distinct !{!137, !68}
!138 = distinct !{!138, !68}
!139 = !{!"Parser.c:parse_buf"}
!140 = distinct !{!140, !68}
!141 = distinct !{!141, !68}
!142 = !{!53, !54, i64 144}
!143 = distinct !{!143, !68}
!144 = distinct !{!144, !68}
!145 = distinct !{!145, !68}
!146 = distinct !{!146, !68}
!147 = distinct !{!147, !68}
!148 = distinct !{!148, !68}
!149 = distinct !{!149, !68}
!150 = distinct !{!150, !68}
!151 = !{!"Parser.c:flush_pending_text"}
!152 = !{!"Parser.c:probably_utf8_chunk"}
!153 = distinct !{!153, !68}
!154 = !{!"Parser.c:sv_lower"}
!155 = distinct !{!155, !68}
!156 = !{!"Parser.c:decode_entities"}
!157 = distinct !{!157, !68}
!158 = distinct !{!158, !68}
!159 = distinct !{!159, !68}
!160 = distinct !{!160, !68}
!161 = distinct !{!161, !68}
!162 = distinct !{!162, !68}
!163 = !{!"Parser.c:S_SvREFCNT_inc"}
!164 = !{!"Parser.c:grow_gap"}
!165 = !{!"Parser.c:marked_section_update"}
!166 = distinct !{!166, !68}
!167 = distinct !{!167, !68}
!168 = !{!"Parser.c:parse_start"}
!169 = !{!53, !54, i64 138}
!170 = !{!53, !54, i64 146}
!171 = distinct !{!171, !68}
!172 = distinct !{!172, !68}
!173 = distinct !{!173, !68}
!174 = distinct !{!174, !68}
!175 = distinct !{!175, !68}
!176 = distinct !{!176, !68}
!177 = distinct !{!177, !68}
!178 = distinct !{!178, !68}
!179 = !{!180, !38, i64 8}
!180 = !{!"literal_tag", !45, i64 0, !38, i64 8, !45, i64 16}
!181 = distinct !{!181, !68}
!182 = !{!180, !45, i64 0}
!183 = distinct !{!183, !68}
!184 = !{!"Parser.c:parse_end"}
!185 = distinct !{!185, !68}
!186 = !{!53, !54, i64 139}
!187 = distinct !{!187, !68}
!188 = !{!"Parser.c:parse_decl"}
!189 = distinct !{!189, !68}
!190 = !{i32 0, i32 2}
!191 = distinct !{!191, !68}
!192 = distinct !{!192, !68}
!193 = distinct !{!193, !68}
!194 = distinct !{!194, !68}
!195 = distinct !{!195, !68}
!196 = !{!"Parser.c:parse_process"}
!197 = !{!53, !54, i64 147}
!198 = distinct !{!198, !68}
!199 = !{!"Parser.c:tokens_grow"}
!200 = !{i64 0, i64 8, !43, i64 8, i64 8, !43}
!201 = distinct !{!201, !68}
!202 = !{!"Parser.c:skip_until_gt"}
!203 = distinct !{!203, !68}
!204 = !{!"Parser.c:parse_comment"}
!205 = distinct !{!205, !68}
!206 = distinct !{!206, !68}
!207 = distinct !{!207, !68}
!208 = distinct !{!208, !68}
!209 = !{!"Parser.c:parse_marked_section"}
!210 = !{!53, !54, i64 136}
!211 = distinct !{!211, !68}
!212 = distinct !{!212, !68}
!213 = distinct !{!213, !68}
!214 = distinct !{!214, !68}
!215 = !{!"Parser.c:strnEQx"}
!216 = distinct !{!216, !68}
!217 = !{!"Parser.c:has_hibit"}
!218 = !{!"Parser.c:argspec_compile"}
!219 = distinct !{!219, !68}
!220 = distinct !{!220, !68}
!221 = distinct !{!221, !68}
!222 = distinct !{!222, !68}
!223 = distinct !{!223, !68}
!224 = distinct !{!224, !68}
!225 = distinct !{!225, !68}
!226 = distinct !{!226, !68}
!227 = distinct !{!227, !68}
!228 = distinct !{!228, !68}
!229 = !{!"Parser.c:check_handler"}
