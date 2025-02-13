; ModuleID = 'cpan/HTML-Parser/Parser.c'
source_filename = "cpan/HTML-Parser/Parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.literal_tag = type { i32, ptr, i32 }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.p_state = type { i32, ptr, i64, i64, i64, i8, i8, i8, ptr, i8, i8, ptr, ptr, i8, i64, i64, i64, ptr, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [9 x %struct.p_handler], i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.p_handler = type { ptr, ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.0, ptr, %union.anon.1, %union.anon.2, %union.anon.3, ptr, %union.anon.4, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
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

@argname = dso_local local_unnamed_addr global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 16
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
define internal noundef i32 @magic_free_pstate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  tail call fastcc void @free_pstate(ptr noundef %4) #9
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_pstate(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 33
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %11) #9
  br label %12

12:                                               ; preds = %1, %12
  %13 = phi i64 [ 0, %1 ], [ %18, %12 ]
  %14 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 34, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 34, i64 %13, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %17) #9
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, 9
  br i1 %19, label %20, label %12, !llvm.loop !24

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 36
  %22 = load ptr, ptr %21, align 8, !tbaa !26
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %22) #9
  %23 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 37
  %24 = load ptr, ptr %23, align 8, !tbaa !27
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %24) #9
  %25 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 38
  %26 = load ptr, ptr %25, align 8, !tbaa !28
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %26) #9
  %27 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 39
  %28 = load ptr, ptr %27, align 8, !tbaa !29
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %28) #9
  %29 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 42
  %30 = load ptr, ptr %29, align 8, !tbaa !30
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %30) #9
  store i32 0, ptr %0, align 8, !tbaa !31
  tail call void @Perl_safesysfree(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !32
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !32
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #10
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_HTML__Parser(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %5 = load i32, ptr %3, align 4, !tbaa !35
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
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
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = getelementptr inbounds %struct.xpvcv, ptr %20, i64 0, i32 5
  store i32 6, ptr %21, align 8, !tbaa !38
  %22 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.26, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 5
  store i32 13, ptr %24, align 8, !tbaa !38
  %25 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.27, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %26 = load ptr, ptr %25, align 8, !tbaa !36
  %27 = getelementptr inbounds %struct.xpvcv, ptr %26, i64 0, i32 5
  store i32 7, ptr %27, align 8, !tbaa !38
  %28 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.28, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %29 = load ptr, ptr %28, align 8, !tbaa !36
  %30 = getelementptr inbounds %struct.xpvcv, ptr %29, i64 0, i32 5
  store i32 9, ptr %30, align 8, !tbaa !38
  %31 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.29, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %32 = load ptr, ptr %31, align 8, !tbaa !36
  %33 = getelementptr inbounds %struct.xpvcv, ptr %32, i64 0, i32 5
  store i32 11, ptr %33, align 8, !tbaa !38
  %34 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.30, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %35 = load ptr, ptr %34, align 8, !tbaa !36
  %36 = getelementptr inbounds %struct.xpvcv, ptr %35, i64 0, i32 5
  store i32 5, ptr %36, align 8, !tbaa !38
  %37 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.31, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %38 = load ptr, ptr %37, align 8, !tbaa !36
  %39 = getelementptr inbounds %struct.xpvcv, ptr %38, i64 0, i32 5
  store i32 1, ptr %39, align 8, !tbaa !38
  %40 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.32, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %41 = load ptr, ptr %40, align 8, !tbaa !36
  %42 = getelementptr inbounds %struct.xpvcv, ptr %41, i64 0, i32 5
  store i32 8, ptr %42, align 8, !tbaa !38
  %43 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.33, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %44 = load ptr, ptr %43, align 8, !tbaa !36
  %45 = getelementptr inbounds %struct.xpvcv, ptr %44, i64 0, i32 5
  store i32 2, ptr %45, align 8, !tbaa !38
  %46 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.34, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %47 = load ptr, ptr %46, align 8, !tbaa !36
  %48 = getelementptr inbounds %struct.xpvcv, ptr %47, i64 0, i32 5
  store i32 4, ptr %48, align 8, !tbaa !38
  %49 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.35, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %50 = load ptr, ptr %49, align 8, !tbaa !36
  %51 = getelementptr inbounds %struct.xpvcv, ptr %50, i64 0, i32 5
  store i32 10, ptr %51, align 8, !tbaa !38
  %52 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.36, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %53 = load ptr, ptr %52, align 8, !tbaa !36
  %54 = getelementptr inbounds %struct.xpvcv, ptr %53, i64 0, i32 5
  store i32 3, ptr %54, align 8, !tbaa !38
  %55 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.37, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #10
  %56 = load ptr, ptr %55, align 8, !tbaa !36
  %57 = getelementptr inbounds %struct.xpvcv, ptr %56, i64 0, i32 5
  store i32 12, ptr %57, align 8, !tbaa !38
  %58 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.38, ptr noundef nonnull @XS_HTML__Parser_boolean_attribute_value, ptr noundef nonnull @.str.20) #10
  %59 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.39, ptr noundef nonnull @XS_HTML__Parser_ignore_tags, ptr noundef nonnull @.str.20) #10
  %60 = load ptr, ptr %59, align 8, !tbaa !36
  %61 = getelementptr inbounds %struct.xpvcv, ptr %60, i64 0, i32 5
  store i32 3, ptr %61, align 8, !tbaa !38
  %62 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.40, ptr noundef nonnull @XS_HTML__Parser_ignore_tags, ptr noundef nonnull @.str.20) #10
  %63 = load ptr, ptr %62, align 8, !tbaa !36
  %64 = getelementptr inbounds %struct.xpvcv, ptr %63, i64 0, i32 5
  store i32 2, ptr %64, align 8, !tbaa !38
  %65 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.41, ptr noundef nonnull @XS_HTML__Parser_ignore_tags, ptr noundef nonnull @.str.20) #10
  %66 = load ptr, ptr %65, align 8, !tbaa !36
  %67 = getelementptr inbounds %struct.xpvcv, ptr %66, i64 0, i32 5
  store i32 1, ptr %67, align 8, !tbaa !38
  %68 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.42, ptr noundef nonnull @XS_HTML__Parser_handler, ptr noundef nonnull @.str.20) #10
  %69 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.43, ptr noundef nonnull @XS_HTML__Entities_decode_entities, ptr noundef nonnull @.str.20) #10
  %70 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.44, ptr noundef nonnull @XS_HTML__Entities__decode_entities, ptr noundef nonnull @.str.20) #10
  %71 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.45, ptr noundef nonnull @XS_HTML__Entities__probably_utf8_chunk, ptr noundef nonnull @.str.20) #10
  %72 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.46, ptr noundef nonnull @XS_HTML__Entities_UNICODE_SUPPORT, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.47, i32 noundef 0) #10
  %73 = load ptr, ptr @PL_unitcheckav, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %1
  %76 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !35
  tail call void @Perl_call_list(i32 noundef %76, ptr noundef nonnull %73) #10
  br label %77

77:                                               ; preds = %1, %75
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %79 = sext i32 %7 to i64
  %80 = getelementptr inbounds ptr, ptr %78, i64 %79
  store ptr @PL_sv_yes, ptr %80, align 8, !tbaa !34
  %81 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %82 = getelementptr inbounds ptr, ptr %81, i64 %79
  store ptr %82, ptr @PL_stack_sp, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser__alloc_pstate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %5 = load i32, ptr %3, align 4, !tbaa !35
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
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
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !39
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 12
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #10
  br label %31

31:                                               ; preds = %30, %25
  %32 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 368) #10
  store i32 369695076, ptr %32, align 8, !tbaa !31
  %33 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %34 = getelementptr inbounds %struct.p_state, ptr %32, i64 0, i32 41
  store ptr %33, ptr %34, align 8, !tbaa !40
  %35 = tail call ptr @Perl_newSV(i64 noundef 20) #10
  %36 = getelementptr inbounds %struct.p_state, ptr %32, i64 0, i32 42
  store ptr %35, ptr %36, align 8, !tbaa !30
  %37 = ptrtoint ptr %32 to i64
  %38 = tail call ptr @Perl_newSViv(i64 noundef %37) #10
  tail call void @Perl_sv_magic(ptr noundef %38, ptr noundef null, i32 noundef 126, ptr noundef nonnull %32, i32 noundef 0) #10
  %39 = tail call ptr @Perl_mg_find(ptr noundef %38, i32 noundef 126) #10
  %40 = getelementptr inbounds %struct.magic, ptr %39, i64 0, i32 1
  store ptr @vtbl_pstate, ptr %40, align 8, !tbaa !41
  %41 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = or i32 %42, 134217728
  store i32 %43, ptr %41, align 4, !tbaa !39
  %44 = tail call ptr @Perl_newRV_noinc(ptr noundef %38) #10
  %45 = tail call ptr @Perl_hv_common_key_len(ptr noundef %23, ptr noundef nonnull @.str.50, i32 noundef 17, i32 noundef 36, ptr noundef %44, i32 noundef 0) #10
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %47 = getelementptr inbounds ptr, ptr %46, i64 %19
  %48 = getelementptr inbounds ptr, ptr %47, i64 -1
  store ptr %48, ptr @PL_stack_sp, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser_parse(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %6 = load i32, ptr %4, align 4, !tbaa !35
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
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
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %7, %1 ]
  %19 = shl i64 %12, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %3, i64 %21
  %23 = getelementptr ptr, ptr %18, i64 %8
  %24 = getelementptr ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %23, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = tail call fastcc ptr @get_pstate_hv(ptr noundef %25) #9
  %29 = getelementptr inbounds %struct.p_state, ptr %28, i64 0, i32 6
  %30 = load i8, ptr %29, align 1, !tbaa !42, !range !43, !noundef !44
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.52) #10
  br label %33

33:                                               ; preds = %32, %17
  store i8 1, ptr %29, align 1, !tbaa !42
  %34 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !39
  %36 = and i32 %35, 2048
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %395, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %45, label %395

45:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %46 = getelementptr inbounds %struct.p_state, ptr %28, i64 0, i32 7
  br label %47

47:                                               ; preds = %391, %45
  %48 = phi ptr [ %22, %45 ], [ %388, %391 ]
  %49 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %50 = getelementptr inbounds i32, ptr %49, i64 1
  store ptr %50, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %51 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !34
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call ptr @Perl_markstack_grow() #10
  br label %55

55:                                               ; preds = %47, %53
  %56 = phi ptr [ %54, %53 ], [ %50, %47 ]
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %58 = ptrtoint ptr %48 to i64
  %59 = ptrtoint ptr %57 to i64
  %60 = sub i64 %58, %59
  %61 = lshr exact i64 %60, 3
  %62 = trunc i64 %61 to i32
  store i32 %62, ptr %56, align 4, !tbaa !35
  %63 = call i32 @Perl_call_sv(ptr noundef %27, i32 noundef 10) #10
  %64 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = getelementptr inbounds ptr, ptr %64, i64 -1
  %68 = load ptr, ptr %64, align 8, !tbaa !34
  br label %69

69:                                               ; preds = %55, %66
  %70 = phi ptr [ %67, %66 ], [ %64, %55 ]
  %71 = phi ptr [ %68, %66 ], [ null, %55 ]
  store ptr %70, ptr @PL_stack_sp, align 8, !tbaa !34
  %72 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.gv, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !38
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %69
  %78 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %72, i32 noundef 0) #10
  %79 = getelementptr inbounds %struct.gv, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !38
  %81 = load ptr, ptr %80, align 8, !tbaa !34
  %82 = icmp eq ptr %81, null
  br i1 %82, label %357, label %83

83:                                               ; preds = %77
  %84 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %85 = getelementptr inbounds %struct.gv, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !38
  %87 = load ptr, ptr %86, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %84, i32 noundef 0) #10
  %91 = getelementptr inbounds %struct.gv, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !38
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  br label %94

94:                                               ; preds = %69, %83, %89
  %95 = phi ptr [ %93, %89 ], [ %87, %83 ], [ %75, %69 ]
  %96 = getelementptr inbounds %struct.sv, ptr %95, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !39
  %98 = and i32 %97, 2097152
  %99 = icmp eq i32 %98, 0
  %100 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %101 = getelementptr inbounds %struct.gv, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !38
  %103 = load ptr, ptr %102, align 8, !tbaa !34
  %104 = icmp eq ptr %103, null
  br i1 %99, label %114, label %105

105:                                              ; preds = %94
  br i1 %104, label %106, label %111

106:                                              ; preds = %105
  %107 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %100, i32 noundef 0) #10
  %108 = getelementptr inbounds %struct.gv, ptr %107, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !38
  %110 = load ptr, ptr %109, align 8, !tbaa !34
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
  %118 = load ptr, ptr %117, align 8, !tbaa !38
  %119 = load ptr, ptr %118, align 8, !tbaa !34
  %120 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  br label %121

121:                                              ; preds = %114, %115
  %122 = phi ptr [ %120, %115 ], [ %100, %114 ]
  %123 = phi ptr [ %119, %115 ], [ %103, %114 ]
  %124 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !39
  %126 = and i32 %125, 65280
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %164

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.gv, ptr %122, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !38
  %131 = load ptr, ptr %130, align 8, !tbaa !34
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %122, i32 noundef 0) #10
  %135 = getelementptr inbounds %struct.gv, ptr %134, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !38
  %137 = load ptr, ptr %136, align 8, !tbaa !34
  %138 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  br label %139

139:                                              ; preds = %128, %133
  %140 = phi ptr [ %138, %133 ], [ %122, %128 ]
  %141 = phi ptr [ %137, %133 ], [ %131, %128 ]
  %142 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 2
  %143 = load i32, ptr %142, align 4, !tbaa !39
  %144 = and i32 %143, 255
  %145 = icmp eq i32 %144, 8
  br i1 %145, label %164, label %146

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.gv, ptr %140, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !38
  %149 = load ptr, ptr %148, align 8, !tbaa !34
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %140, i32 noundef 0) #10
  %153 = getelementptr inbounds %struct.gv, ptr %152, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !38
  %155 = load ptr, ptr %154, align 8, !tbaa !34
  br label %156

156:                                              ; preds = %146, %151
  %157 = phi ptr [ %155, %151 ], [ %149, %146 ]
  %158 = getelementptr inbounds %struct.sv, ptr %157, i64 0, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !39
  %160 = and i32 %159, 16826623
  %161 = icmp eq i32 %160, 16777226
  br i1 %161, label %162, label %357

162:                                              ; preds = %156
  %163 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  br label %164

164:                                              ; preds = %162, %139, %121
  %165 = phi ptr [ %163, %162 ], [ %140, %139 ], [ %122, %121 ]
  %166 = getelementptr inbounds %struct.gv, ptr %165, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !38
  %168 = load ptr, ptr %167, align 8, !tbaa !34
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %175

170:                                              ; preds = %164
  %171 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %165, i32 noundef 0) #10
  %172 = getelementptr inbounds %struct.gv, ptr %171, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !38
  %174 = load ptr, ptr %173, align 8, !tbaa !34
  br label %175

175:                                              ; preds = %164, %170
  %176 = phi ptr [ %174, %170 ], [ %168, %164 ]
  %177 = getelementptr inbounds %struct.sv, ptr %176, i64 0, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !39
  %179 = and i32 %178, 1024
  %180 = icmp eq i32 %179, 0
  %181 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %182 = getelementptr inbounds %struct.gv, ptr %181, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !38
  %184 = load ptr, ptr %183, align 8, !tbaa !34
  %185 = icmp eq ptr %184, null
  br i1 %180, label %247, label %186

186:                                              ; preds = %175
  br i1 %185, label %187, label %192

187:                                              ; preds = %186
  %188 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %181, i32 noundef 0) #10
  %189 = getelementptr inbounds %struct.gv, ptr %188, i64 0, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !38
  %191 = load ptr, ptr %190, align 8, !tbaa !34
  br label %192

192:                                              ; preds = %186, %187
  %193 = phi ptr [ %191, %187 ], [ %184, %186 ]
  %194 = load ptr, ptr %193, align 8, !tbaa !45
  %195 = icmp eq ptr %194, null
  br i1 %195, label %357, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %198 = getelementptr inbounds %struct.gv, ptr %197, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !38
  %200 = load ptr, ptr %199, align 8, !tbaa !34
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %197, i32 noundef 0) #10
  %204 = getelementptr inbounds %struct.gv, ptr %203, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !38
  %206 = load ptr, ptr %205, align 8, !tbaa !34
  br label %207

207:                                              ; preds = %196, %202
  %208 = phi ptr [ %206, %202 ], [ %200, %196 ]
  %209 = load ptr, ptr %208, align 8, !tbaa !45
  %210 = getelementptr inbounds %struct.xpv, ptr %209, i64 0, i32 2
  %211 = load i64, ptr %210, align 8, !tbaa !46
  %212 = icmp ugt i64 %211, 1
  br i1 %212, label %356, label %213

213:                                              ; preds = %207
  %214 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %215 = getelementptr inbounds %struct.gv, ptr %214, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !38
  %217 = load ptr, ptr %216, align 8, !tbaa !34
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %224

219:                                              ; preds = %213
  %220 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %214, i32 noundef 0) #10
  %221 = getelementptr inbounds %struct.gv, ptr %220, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !38
  %223 = load ptr, ptr %222, align 8, !tbaa !34
  br label %224

224:                                              ; preds = %213, %219
  %225 = phi ptr [ %223, %219 ], [ %217, %213 ]
  %226 = load ptr, ptr %225, align 8, !tbaa !45
  %227 = getelementptr inbounds %struct.xpv, ptr %226, i64 0, i32 2
  %228 = load i64, ptr %227, align 8, !tbaa !46
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %357, label %230

230:                                              ; preds = %224
  %231 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %232 = getelementptr inbounds %struct.gv, ptr %231, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !38
  %234 = load ptr, ptr %233, align 8, !tbaa !34
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %231, i32 noundef 0) #10
  %238 = getelementptr inbounds %struct.gv, ptr %237, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !38
  %240 = load ptr, ptr %239, align 8, !tbaa !34
  br label %241

241:                                              ; preds = %230, %236
  %242 = phi ptr [ %240, %236 ], [ %234, %230 ]
  %243 = getelementptr inbounds %struct.sv, ptr %242, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !38
  %245 = load i8, ptr %244, align 1, !tbaa !38
  %246 = icmp eq i8 %245, 48
  br i1 %246, label %357, label %356

247:                                              ; preds = %175
  br i1 %185, label %248, label %253

248:                                              ; preds = %247
  %249 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %181, i32 noundef 0) #10
  %250 = getelementptr inbounds %struct.gv, ptr %249, i64 0, i32 3
  %251 = load ptr, ptr %250, align 8, !tbaa !38
  %252 = load ptr, ptr %251, align 8, !tbaa !34
  br label %253

253:                                              ; preds = %247, %248
  %254 = phi ptr [ %252, %248 ], [ %184, %247 ]
  %255 = getelementptr inbounds %struct.sv, ptr %254, i64 0, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !39
  %257 = and i32 %256, 768
  %258 = icmp eq i32 %257, 0
  %259 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %260 = getelementptr inbounds %struct.gv, ptr %259, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !38
  %262 = load ptr, ptr %261, align 8, !tbaa !34
  %263 = icmp eq ptr %262, null
  br i1 %258, label %347, label %264

264:                                              ; preds = %253
  br i1 %263, label %265, label %271

265:                                              ; preds = %264
  %266 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %259, i32 noundef 0) #10
  %267 = getelementptr inbounds %struct.gv, ptr %266, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !38
  %269 = load ptr, ptr %268, align 8, !tbaa !34
  %270 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  br label %271

271:                                              ; preds = %264, %265
  %272 = phi ptr [ %270, %265 ], [ %259, %264 ]
  %273 = phi ptr [ %269, %265 ], [ %262, %264 ]
  %274 = getelementptr inbounds %struct.sv, ptr %273, i64 0, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !39
  %276 = and i32 %275, 256
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %296, label %278

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.gv, ptr %272, i64 0, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !38
  %281 = load ptr, ptr %280, align 8, !tbaa !34
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %272, i32 noundef 0) #10
  %285 = getelementptr inbounds %struct.gv, ptr %284, i64 0, i32 3
  %286 = load ptr, ptr %285, align 8, !tbaa !38
  %287 = load ptr, ptr %286, align 8, !tbaa !34
  br label %288

288:                                              ; preds = %278, %283
  %289 = phi ptr [ %287, %283 ], [ %281, %278 ]
  %290 = load ptr, ptr %289, align 8, !tbaa !45
  %291 = getelementptr inbounds %struct.xpviv, ptr %290, i64 0, i32 4
  %292 = load i64, ptr %291, align 8, !tbaa !38
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %356

294:                                              ; preds = %288
  %295 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  br label %296

296:                                              ; preds = %294, %271
  %297 = phi ptr [ %295, %294 ], [ %272, %271 ]
  %298 = getelementptr inbounds %struct.gv, ptr %297, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !38
  %300 = load ptr, ptr %299, align 8, !tbaa !34
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %307

302:                                              ; preds = %296
  %303 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %297, i32 noundef 0) #10
  %304 = getelementptr inbounds %struct.gv, ptr %303, i64 0, i32 3
  %305 = load ptr, ptr %304, align 8, !tbaa !38
  %306 = load ptr, ptr %305, align 8, !tbaa !34
  br label %307

307:                                              ; preds = %296, %302
  %308 = phi ptr [ %306, %302 ], [ %300, %296 ]
  %309 = getelementptr inbounds %struct.sv, ptr %308, i64 0, i32 2
  %310 = load i32, ptr %309, align 4, !tbaa !39
  %311 = and i32 %310, 512
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %357, label %313

313:                                              ; preds = %307
  %314 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %315 = getelementptr inbounds %struct.gv, ptr %314, i64 0, i32 3
  %316 = load ptr, ptr %315, align 8, !tbaa !38
  %317 = load ptr, ptr %316, align 8, !tbaa !34
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %324

319:                                              ; preds = %313
  %320 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %314, i32 noundef 0) #10
  %321 = getelementptr inbounds %struct.gv, ptr %320, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !38
  %323 = load ptr, ptr %322, align 8, !tbaa !34
  br label %324

324:                                              ; preds = %313, %319
  %325 = phi ptr [ %323, %319 ], [ %317, %313 ]
  %326 = load ptr, ptr %325, align 8, !tbaa !45
  %327 = getelementptr inbounds %struct.xpvnv, ptr %326, i64 0, i32 5
  %328 = load double, ptr %327, align 8, !tbaa !38
  %329 = fcmp uno double %328, 0.000000e+00
  br i1 %329, label %356, label %330

330:                                              ; preds = %324
  %331 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %332 = getelementptr inbounds %struct.gv, ptr %331, i64 0, i32 3
  %333 = load ptr, ptr %332, align 8, !tbaa !38
  %334 = load ptr, ptr %333, align 8, !tbaa !34
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %330
  %337 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %331, i32 noundef 0) #10
  %338 = getelementptr inbounds %struct.gv, ptr %337, i64 0, i32 3
  %339 = load ptr, ptr %338, align 8, !tbaa !38
  %340 = load ptr, ptr %339, align 8, !tbaa !34
  br label %341

341:                                              ; preds = %330, %336
  %342 = phi ptr [ %340, %336 ], [ %334, %330 ]
  %343 = load ptr, ptr %342, align 8, !tbaa !45
  %344 = getelementptr inbounds %struct.xpvnv, ptr %343, i64 0, i32 5
  %345 = load double, ptr %344, align 8, !tbaa !38
  %346 = fcmp une double %345, 0.000000e+00
  br i1 %346, label %356, label %357

347:                                              ; preds = %253
  br i1 %263, label %348, label %353

348:                                              ; preds = %347
  %349 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %259, i32 noundef 0) #10
  %350 = getelementptr inbounds %struct.gv, ptr %349, i64 0, i32 3
  %351 = load ptr, ptr %350, align 8, !tbaa !38
  %352 = load ptr, ptr %351, align 8, !tbaa !34
  br label %353

353:                                              ; preds = %347, %348
  %354 = phi ptr [ %352, %348 ], [ %262, %347 ]
  %355 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %354, i32 noundef 0) #10
  br i1 %355, label %356, label %357

356:                                              ; preds = %353, %341, %324, %288, %241, %207, %111
  store i8 0, ptr %29, align 1, !tbaa !42
  store i8 0, ptr %46, align 2, !tbaa !48
  call void (ptr, ...) @Perl_croak(ptr noundef null) #10
  br label %357

357:                                              ; preds = %156, %77, %356, %353, %341, %307, %241, %224, %192, %111
  %358 = icmp eq ptr %71, null
  br i1 %358, label %380, label %359

359:                                              ; preds = %357
  %360 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %361 = load i32, ptr %360, align 4, !tbaa !39
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
  %374 = load ptr, ptr %71, align 8, !tbaa !45
  %375 = getelementptr inbounds %struct.xpv, ptr %374, i64 0, i32 2
  %376 = load i64, ptr %375, align 8, !tbaa !46
  store i64 %376, ptr %2, align 8, !tbaa !49
  br label %381

377:                                              ; preds = %370
  %378 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %71, ptr noundef nonnull %2, i32 noundef 2) #10
  %379 = load i64, ptr %2, align 8, !tbaa !49
  br label %381

380:                                              ; preds = %357, %359
  store i64 0, ptr %2, align 8, !tbaa !49
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
  %388 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %389 = load i64, ptr %2, align 8, !tbaa !49
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %394, label %391

391:                                              ; preds = %386
  %392 = load i8, ptr %46, align 2, !tbaa !48, !range !43, !noundef !44
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %47, label %394, !llvm.loop !50

394:                                              ; preds = %386, %391
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %397

395:                                              ; preds = %38, %33
  tail call fastcc void @parse(ptr noundef nonnull %28, ptr noundef nonnull %27, ptr noundef %25) #9
  %396 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  br label %397

397:                                              ; preds = %395, %394
  %398 = phi ptr [ %388, %394 ], [ %396, %395 ]
  store i8 0, ptr %29, align 1, !tbaa !42
  %399 = getelementptr inbounds %struct.p_state, ptr %28, i64 0, i32 7
  %400 = load i8, ptr %399, align 2, !tbaa !48, !range !43, !noundef !44
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %405, label %402

402:                                              ; preds = %397
  store i8 0, ptr %399, align 2, !tbaa !48
  %403 = call ptr @Perl_sv_newmortal() #10
  %404 = getelementptr inbounds ptr, ptr %398, i64 1
  store ptr %403, ptr %404, align 8, !tbaa !34
  br label %407

405:                                              ; preds = %397
  %406 = getelementptr inbounds ptr, ptr %398, i64 1
  store ptr %25, ptr %406, align 8, !tbaa !34
  br label %407

407:                                              ; preds = %405, %402
  %408 = phi ptr [ %404, %402 ], [ %406, %405 ]
  store ptr %408, ptr @PL_stack_sp, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser_eof(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %5 = load i32, ptr %3, align 4, !tbaa !35
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
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
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = getelementptr ptr, ptr %17, i64 %7
  %19 = getelementptr ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = tail call fastcc ptr @get_pstate_hv(ptr noundef %20) #9
  %22 = getelementptr inbounds %struct.p_state, ptr %21, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !42, !range !43, !noundef !44
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.p_state, ptr %21, i64 0, i32 7
  store i8 1, ptr %26, align 2, !tbaa !48
  br label %28

27:                                               ; preds = %16
  store i8 1, ptr %22, align 1, !tbaa !42
  tail call fastcc void @parse(ptr noundef nonnull %21, ptr noundef null, ptr noundef %20) #9
  store i8 0, ptr %22, align 1, !tbaa !42
  br label %28

28:                                               ; preds = %27, %25
  %29 = shl i64 %11, 29
  %30 = ashr i64 %29, 32
  %31 = sub nsw i64 0, %30
  %32 = getelementptr inbounds ptr, ptr %2, i64 %31
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  store ptr %20, ptr %33, align 8, !tbaa !34
  store ptr %33, ptr @PL_stack_sp, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser_strict_comment(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %5 = load i32, ptr %3, align 4, !tbaa !35
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !38
  %18 = icmp slt i32 %14, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.90) #10
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi ptr [ %20, %19 ], [ %6, %1 ]
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !34
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
  %56 = load i8, ptr %55, align 1, !tbaa !51, !range !43, !noundef !44
  %57 = icmp sgt i32 %14, 1
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  br i1 %57, label %59, label %127

59:                                               ; preds = %54
  %60 = getelementptr ptr, ptr %58, i64 %8
  %61 = getelementptr ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %124, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !39
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
  %84 = load ptr, ptr %62, align 8, !tbaa !45
  %85 = icmp eq ptr %84, null
  br i1 %85, label %120, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.xpv, ptr %84, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !46
  %89 = icmp ugt i64 %88, 1
  br i1 %89, label %120, label %90

90:                                               ; preds = %86
  %91 = icmp eq i64 %88, 0
  br i1 %91, label %120, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !38
  %95 = load i8, ptr %94, align 1, !tbaa !38
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
  %104 = load ptr, ptr %62, align 8, !tbaa !45
  %105 = getelementptr inbounds %struct.xpviv, ptr %104, i64 0, i32 4
  %106 = load i64, ptr %105, align 8, !tbaa !38
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %103, %100
  %109 = and i32 %66, 512
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %62, align 8, !tbaa !45
  %113 = getelementptr inbounds %struct.xpvnv, ptr %112, i64 0, i32 5
  %114 = load double, ptr %113, align 8, !tbaa !38
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
  %123 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  br label %124

124:                                              ; preds = %59, %120
  %125 = phi ptr [ %123, %120 ], [ %58, %59 ]
  %126 = phi i8 [ %122, %120 ], [ 0, %59 ]
  store i8 %126, ptr %55, align 1, !tbaa !51
  br label %127

127:                                              ; preds = %124, %54
  %128 = phi ptr [ %125, %124 ], [ %58, %54 ]
  %129 = icmp eq i8 %56, 0
  %130 = select i1 %129, ptr @PL_sv_no, ptr @PL_sv_yes
  %131 = getelementptr inbounds ptr, ptr %128, i64 %23
  store ptr %130, ptr %131, align 8, !tbaa !34
  %132 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %133 = getelementptr inbounds ptr, ptr %132, i64 %23
  %134 = load ptr, ptr %133, align 8, !tbaa !34
  %135 = tail call ptr @Perl_sv_2mortal(ptr noundef %134) #10
  %136 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %137 = getelementptr inbounds ptr, ptr %136, i64 %23
  store ptr %137, ptr @PL_stack_sp, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser_boolean_attribute_value(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %5 = load i32, ptr %3, align 4, !tbaa !35
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
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
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = tail call fastcc ptr @get_pstate_hv(ptr noundef %22) #9
  %24 = getelementptr inbounds %struct.p_state, ptr %23, i64 0, i32 33
  %25 = load ptr, ptr %24, align 8, !tbaa !20
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
  %33 = load ptr, ptr %24, align 8, !tbaa !20
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %33) #9
  %34 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %35 = getelementptr ptr, ptr %34, i64 %8
  %36 = getelementptr ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = tail call ptr @Perl_newSVsv(ptr noundef %37) #10
  store ptr %38, ptr %24, align 8, !tbaa !20
  br label %39

39:                                               ; preds = %32, %29
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %41 = getelementptr inbounds ptr, ptr %40, i64 %20
  store ptr %30, ptr %41, align 8, !tbaa !34
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %43 = getelementptr inbounds ptr, ptr %42, i64 %20
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = tail call ptr @Perl_sv_2mortal(ptr noundef %44) #10
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %47 = getelementptr inbounds ptr, ptr %46, i64 %20
  store ptr %47, ptr @PL_stack_sp, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser_ignore_tags(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %5 = load i32, ptr %3, align 4, !tbaa !35
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !38
  %18 = icmp slt i32 %14, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.90) #10
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi ptr [ %20, %19 ], [ %6, %1 ]
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !34
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
  %36 = load ptr, ptr @PL_op, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.op, ptr %36, i64 0, i32 5
  %38 = load i8, ptr %37, align 2, !tbaa !52
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
  %52 = load ptr, ptr %35, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %51, label %102, label %54

54:                                               ; preds = %49
  br i1 %53, label %56, label %55

55:                                               ; preds = %54
  tail call void @Perl_hv_clear(ptr noundef nonnull %52) #10
  br label %58

56:                                               ; preds = %54
  %57 = tail call ptr @Perl_newSV_type(i32 noundef 12) #10
  store ptr %57, ptr %35, align 8, !tbaa !34
  br label %58

58:                                               ; preds = %56, %55
  %59 = icmp sgt i32 %14, 1
  br i1 %59, label %60, label %104

60:                                               ; preds = %58
  %61 = zext nneg i32 %50 to i64
  br label %62

62:                                               ; preds = %60, %100
  %63 = phi i64 [ 0, %60 ], [ %65, %100 ]
  %64 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %65 = add nuw nsw i64 %63, 1
  %66 = getelementptr ptr, ptr %64, i64 %65
  %67 = getelementptr ptr, ptr %66, i64 %23
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !39
  %71 = and i32 %70, 2048
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !38
  %76 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !39
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
  %88 = load ptr, ptr %35, align 8, !tbaa !34
  %89 = load ptr, ptr %85, align 8, !tbaa !34
  %90 = tail call ptr @Perl_newSViv(i64 noundef 0) #10
  %91 = tail call ptr @Perl_hv_common(ptr noundef %88, ptr noundef %89, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %90, i32 noundef 0) #10
  br label %92

92:                                               ; preds = %87, %83
  %93 = add nuw i64 %84, 1
  %94 = icmp eq i64 %84, %81
  br i1 %94, label %100, label %83, !llvm.loop !54

95:                                               ; preds = %73
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.94) #10
  br label %100

96:                                               ; preds = %62
  %97 = load ptr, ptr %35, align 8, !tbaa !34
  %98 = tail call ptr @Perl_newSViv(i64 noundef 0) #10
  %99 = tail call ptr @Perl_hv_common(ptr noundef %97, ptr noundef nonnull %68, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %98, i32 noundef 0) #10
  br label %100

100:                                              ; preds = %92, %80, %95, %96
  %101 = icmp eq i64 %65, %61
  br i1 %101, label %104, label %62, !llvm.loop !55

102:                                              ; preds = %49
  br i1 %53, label %104, label %103

103:                                              ; preds = %102
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %52) #9
  store ptr null, ptr %35, align 8, !tbaa !34
  br label %104

104:                                              ; preds = %100, %58, %102, %103
  %105 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %106 = getelementptr inbounds ptr, ptr %105, i64 %23
  %107 = getelementptr inbounds ptr, ptr %106, i64 -1
  store ptr %107, ptr @PL_stack_sp, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Parser_handler(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %6 = load i32, ptr %4, align 4, !tbaa !35
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
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
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %20 = shl i64 %12, 29
  %21 = ashr i64 %20, 32
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds ptr, ptr %3, i64 %22
  %24 = getelementptr ptr, ptr %19, i64 %8
  %25 = getelementptr ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = tail call fastcc ptr @get_pstate_hv(ptr noundef %26) #9
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %29 = getelementptr ptr, ptr %28, i64 %8
  %30 = getelementptr ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !39
  %34 = and i32 %33, 2098176
  %35 = icmp eq i32 %34, 1024
  br i1 %35, label %36, label %42

36:                                               ; preds = %18
  %37 = load ptr, ptr %31, align 8, !tbaa !45
  %38 = getelementptr inbounds %struct.xpv, ptr %37, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !46
  store i64 %39, ptr %2, align 8, !tbaa !49
  %40 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !38
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
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  %50 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) %49) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = add nuw nsw i64 %47, 1
  %54 = icmp eq i64 %53, 9
  br i1 %54, label %55, label %46, !llvm.loop !56

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
  %62 = load ptr, ptr %61, align 8, !tbaa !21
  %63 = icmp eq ptr %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !39
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
  store ptr %75, ptr %76, align 8, !tbaa !34
  br label %79

77:                                               ; preds = %59
  %78 = getelementptr inbounds ptr, ptr %23, i64 1
  store ptr @PL_sv_undef, ptr %78, align 8, !tbaa !34
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi ptr [ %76, %73 ], [ %78, %77 ]
  %81 = icmp sgt i32 %14, 3
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.p_state, ptr %27, i64 0, i32 34, i64 %60, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !23
  call fastcc void @S_SvREFCNT_dec(ptr noundef %84) #9
  store ptr null, ptr %83, align 8, !tbaa !23
  %85 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %86 = getelementptr ptr, ptr %85, i64 %8
  %87 = getelementptr ptr, ptr %86, i64 4
  %88 = load ptr, ptr %87, align 8, !tbaa !34
  %89 = call fastcc ptr @argspec_compile(ptr noundef %88, ptr noundef nonnull %27) #9
  store ptr %89, ptr %83, align 8, !tbaa !23
  br label %92

90:                                               ; preds = %79
  %91 = icmp eq i32 %14, 3
  br i1 %91, label %92, label %99

92:                                               ; preds = %82, %90
  %93 = load ptr, ptr %61, align 8, !tbaa !21
  call fastcc void @S_SvREFCNT_dec(ptr noundef %93) #9
  store ptr null, ptr %61, align 8, !tbaa !21
  %94 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %95 = getelementptr ptr, ptr %94, i64 %8
  %96 = getelementptr ptr, ptr %95, i64 3
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = call fastcc ptr @check_handler(ptr noundef %97) #9
  store ptr %98, ptr %61, align 8, !tbaa !21
  br label %99

99:                                               ; preds = %92, %90
  store ptr %80, ptr @PL_stack_sp, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Entities_decode_entities(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %5 = load i32, ptr %3, align 4, !tbaa !35
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.49, i32 noundef 0) #10
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 5
  %18 = load i8, ptr %17, align 2, !tbaa !52
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
  %36 = load ptr, ptr @PL_op, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.op, ptr %36, i64 0, i32 5
  %38 = load i8, ptr %37, align 2, !tbaa !52
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
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %49 = add nsw i64 %35, %32
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  br i1 %47, label %57, label %52

52:                                               ; preds = %45
  %53 = tail call ptr @Perl_newSVsv(ptr noundef %51) #10
  %54 = tail call ptr @Perl_sv_2mortal(ptr noundef %53) #10
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %56 = getelementptr inbounds ptr, ptr %55, i64 %49
  store ptr %54, ptr %56, align 8, !tbaa !34
  br label %73

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !39
  %60 = and i32 %59, 427886592
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %51, i32 noundef 0) #10
  %63 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %64 = getelementptr inbounds ptr, ptr %63, i64 %49
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.sv, ptr %65, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !39
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
  %74 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %75 = getelementptr inbounds ptr, ptr %74, i64 %49
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = tail call fastcc ptr @decode_entities(ptr noundef %76, ptr noundef %15, i1 noundef zeroext false) #9
  %78 = add nuw nsw i64 %35, 1
  %79 = icmp eq i64 %78, %33
  br i1 %79, label %80, label %34, !llvm.loop !57

80:                                               ; preds = %73, %25
  %81 = shl i64 %12, 29
  %82 = ashr i64 %81, 32
  %83 = sub nsw i64 0, %82
  %84 = getelementptr inbounds ptr, ptr %2, i64 %83
  %85 = sext i32 %29 to i64
  %86 = getelementptr inbounds ptr, ptr %84, i64 %85
  store ptr %86, ptr @PL_stack_sp, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Entities__decode_entities(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %5 = load i32, ptr %3, align 4, !tbaa !35
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
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
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr ptr, ptr %17, i64 %8
  %22 = getelementptr ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  br label %91

24:                                               ; preds = %1
  %25 = sext i32 %7 to i64
  %26 = getelementptr inbounds ptr, ptr %6, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr ptr, ptr %9, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq i32 %14, 2
  br i1 %30, label %91, label %31

31:                                               ; preds = %24
  %32 = getelementptr ptr, ptr %9, i64 3
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %91, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !39
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
  %55 = load ptr, ptr %33, align 8, !tbaa !45
  %56 = icmp eq ptr %55, null
  br i1 %56, label %91, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.xpv, ptr %55, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !46
  %60 = icmp ugt i64 %59, 1
  br i1 %60, label %91, label %61

61:                                               ; preds = %57
  %62 = icmp eq i64 %59, 0
  br i1 %62, label %91, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !38
  %66 = load i8, ptr %65, align 1, !tbaa !38
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
  %75 = load ptr, ptr %33, align 8, !tbaa !45
  %76 = getelementptr inbounds %struct.xpviv, ptr %75, i64 0, i32 4
  %77 = load i64, ptr %76, align 8, !tbaa !38
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74, %71
  %80 = and i32 %37, 512
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %33, align 8, !tbaa !45
  %84 = getelementptr inbounds %struct.xpvnv, ptr %83, i64 0, i32 5
  %85 = load double, ptr %84, align 8, !tbaa !38
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
  %97 = load i32, ptr %96, align 4, !tbaa !39
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
  %111 = load ptr, ptr %110, align 8, !tbaa !38
  %112 = getelementptr inbounds %struct.sv, ptr %111, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !39
  %114 = and i32 %113, 255
  %115 = icmp eq i32 %114, 12
  br i1 %115, label %117, label %116

116:                                              ; preds = %109, %106
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.107) #10
  br label %117

117:                                              ; preds = %91, %109, %116
  %118 = phi ptr [ null, %116 ], [ %111, %109 ], [ null, %91 ]
  %119 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !39
  %121 = and i32 %120, 427886592
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %93, i32 noundef 0) #10
  %124 = load i32, ptr %119, align 4, !tbaa !39
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
  %132 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %133 = getelementptr inbounds ptr, ptr %132, i64 %94
  %134 = getelementptr inbounds ptr, ptr %133, i64 -1
  store ptr %134, ptr @PL_stack_sp, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Entities__probably_utf8_chunk(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %6 = load i32, ptr %4, align 4, !tbaa !35
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
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
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %23 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %22, i1 noundef zeroext false) #10
  %24 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !39
  %26 = and i32 %25, 2098176
  %27 = icmp eq i32 %26, 1024
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load ptr, ptr %22, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !46
  store i64 %31, ptr %2, align 8, !tbaa !49
  %32 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !38
  br label %37

34:                                               ; preds = %18
  %35 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %22, ptr noundef nonnull %2, i32 noundef 2) #10
  %36 = load i64, ptr %2, align 8, !tbaa !49
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i64 [ %31, %28 ], [ %36, %34 ]
  %39 = phi ptr [ %33, %28 ], [ %35, %34 ]
  %40 = call fastcc zeroext i1 @probably_utf8_chunk(ptr noundef %39, i64 noundef %38) #9
  %41 = select i1 %40, ptr @PL_sv_yes, ptr @PL_sv_no
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %43 = getelementptr inbounds ptr, ptr %42, i64 %20
  store ptr %41, ptr %43, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %45 = getelementptr inbounds ptr, ptr %44, i64 %20
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_HTML__Entities_UNICODE_SUPPORT(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %5 = load i32, ptr %3, align 4, !tbaa !35
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
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
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 6
  %18 = load i8, ptr %17, align 1, !tbaa !58
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @PL_curpad, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !59
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  br label %29

27:                                               ; preds = %15
  %28 = tail call ptr @Perl_sv_newmortal() #10
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %26, %21 ], [ %28, %27 ]
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  tail call void @Perl_sv_setiv(ptr noundef %30, i64 noundef 1) #10
  %32 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !39
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
  store ptr %30, ptr %41, align 8, !tbaa !34
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %43 = getelementptr inbounds ptr, ptr %42, i64 %40
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @Perl_call_list(i32 noundef, ptr noundef) local_unnamed_addr #2

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
define internal fastcc ptr @get_pstate_hv(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !39
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
  %15 = load ptr, ptr %12, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !39
  %18 = and i32 %17, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !38
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
define internal fastcc void @parse(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca %struct.token_pos, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.token_pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %10 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !60, !range !43, !noundef !44
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 6, ptr noundef nonnull %5, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %2) #9
  store i8 1, ptr %10, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %14

14:                                               ; preds = %13, %3
  %15 = icmp eq ptr %1, null
  br i1 %15, label %16, label %153

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  %17 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %122, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !39
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
  %35 = load ptr, ptr %18, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct.xpv, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !46
  store i64 %37, ptr %4, align 8, !tbaa !49
  %38 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !38
  br label %46

40:                                               ; preds = %31
  %41 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %18, ptr noundef nonnull %4, i32 noundef 2) #10
  %42 = load i64, ptr %4, align 8, !tbaa !49
  %43 = load ptr, ptr %17, align 8, !tbaa !13
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !39
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
  %61 = load ptr, ptr %54, align 8, !tbaa !61
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
  store ptr %61, ptr %7, align 8, !tbaa !62
  %82 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %61) #12
  %83 = getelementptr inbounds i8, ptr %61, i64 %82
  store ptr %83, ptr %56, align 8, !tbaa !64
  call fastcc void @report_event(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %8, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %7, i32 noundef 1, ptr noundef %2) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %85

84:                                               ; preds = %78
  store ptr %61, ptr %55, align 8, !tbaa !65
  br label %85

85:                                               ; preds = %84, %81
  store ptr null, ptr %54, align 8, !tbaa !61
  %86 = call fastcc ptr @parse_buf(ptr noundef %0, ptr noundef %60, ptr noundef nonnull %50, i32 noundef %51, ptr noundef %2) #9
  br label %87

87:                                               ; preds = %85, %99
  %88 = phi ptr [ %86, %85 ], [ %100, %99 ]
  %89 = icmp ult ptr %88, %50
  br i1 %89, label %59, label %116, !llvm.loop !66

90:                                               ; preds = %59
  %91 = load i8, ptr %57, align 1, !tbaa !67, !range !43, !noundef !44
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = load i8, ptr %58, align 1, !tbaa !68, !range !43, !noundef !44
  %95 = icmp eq i8 %94, 0
  %96 = load i8, ptr %60, align 1, !tbaa !38
  %97 = icmp eq i8 %96, 60
  br i1 %95, label %98, label %101

98:                                               ; preds = %93
  br i1 %97, label %99, label %116

99:                                               ; preds = %98
  store i8 1, ptr %58, align 1, !tbaa !68
  %100 = call fastcc ptr @parse_buf(ptr noundef nonnull %0, ptr noundef nonnull %60, ptr noundef nonnull %50, i32 noundef %51, ptr noundef %2) #9
  br label %87

101:                                              ; preds = %93
  br i1 %97, label %102, label %116

102:                                              ; preds = %101
  %103 = getelementptr inbounds i8, ptr %60, i64 1
  %104 = icmp eq ptr %103, %50
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = load i8, ptr %103, align 1, !tbaa !38
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !38
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
  store ptr %103, ptr %9, align 8, !tbaa !62
  %115 = getelementptr inbounds %struct.token_pos, ptr %9, i64 0, i32 1
  store ptr %50, ptr %115, align 8, !tbaa !64
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
  %121 = load ptr, ptr %17, align 8, !tbaa !13
  call fastcc void @S_SvREFCNT_dec(ptr noundef %121) #9
  store ptr null, ptr %17, align 8, !tbaa !13
  br label %122

122:                                              ; preds = %20, %120, %16
  %123 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %124 = load ptr, ptr %123, align 8, !tbaa !17
  %125 = icmp eq ptr %124, null
  br i1 %125, label %138, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !39
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
  %140 = load ptr, ptr %139, align 8, !tbaa !29
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %140) #9
  store ptr null, ptr %139, align 8, !tbaa !29
  br label %143

143:                                              ; preds = %142, %138
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 7, ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %2) #9
  %144 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 2
  store i64 0, ptr %144, align 8, !tbaa !69
  %145 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 3
  %146 = load i64, ptr %145, align 8, !tbaa !70
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %143
  store i64 1, ptr %145, align 8, !tbaa !70
  br label %149

149:                                              ; preds = %148, %143
  %150 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 4
  store i64 0, ptr %150, align 8, !tbaa !71
  store i8 0, ptr %10, align 8, !tbaa !60
  %151 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 8
  store ptr null, ptr %151, align 8, !tbaa !61
  %152 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  store i8 0, ptr %152, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  br label %347

153:                                              ; preds = %14
  %154 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 29
  %155 = load i8, ptr %154, align 1, !tbaa !73, !range !43, !noundef !44
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %1, i1 noundef zeroext false) #10
  br label %159

159:                                              ; preds = %157, %153
  %160 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !13
  %162 = icmp eq ptr %161, null
  br i1 %162, label %195, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.sv, ptr %161, i64 0, i32 2
  %165 = load i32, ptr %164, align 4, !tbaa !39
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
  %175 = load ptr, ptr %160, align 8, !tbaa !13
  %176 = getelementptr inbounds %struct.sv, ptr %175, i64 0, i32 2
  %177 = load i32, ptr %176, align 4, !tbaa !39
  %178 = and i32 %177, 2098176
  %179 = icmp eq i32 %178, 1024
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = load ptr, ptr %175, align 8, !tbaa !45
  %182 = getelementptr inbounds %struct.xpv, ptr %181, i64 0, i32 2
  %183 = load i64, ptr %182, align 8, !tbaa !46
  store i64 %183, ptr %4, align 8, !tbaa !49
  %184 = getelementptr inbounds %struct.sv, ptr %175, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !38
  br label %191

186:                                              ; preds = %174
  %187 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %175, ptr noundef nonnull %4, i32 noundef 2) #10
  %188 = load ptr, ptr %160, align 8, !tbaa !13
  %189 = getelementptr inbounds %struct.sv, ptr %188, i64 0, i32 2
  %190 = load i32, ptr %189, align 4, !tbaa !39
  br label %191

191:                                              ; preds = %186, %180
  %192 = phi i32 [ %177, %180 ], [ %190, %186 ]
  %193 = phi ptr [ %185, %180 ], [ %187, %186 ]
  %194 = and i32 %192, 536870912
  br label %286

195:                                              ; preds = %163, %159
  %196 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %197 = load i32, ptr %196, align 4, !tbaa !39
  %198 = and i32 %197, 2098176
  %199 = icmp eq i32 %198, 1024
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load ptr, ptr %1, align 8, !tbaa !45
  %202 = getelementptr inbounds %struct.xpv, ptr %201, i64 0, i32 2
  %203 = load i64, ptr %202, align 8, !tbaa !46
  store i64 %203, ptr %4, align 8, !tbaa !49
  %204 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !38
  br label %209

206:                                              ; preds = %195
  %207 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 2) #10
  %208 = load i32, ptr %196, align 4, !tbaa !39
  br label %209

209:                                              ; preds = %206, %200
  %210 = phi i32 [ %197, %200 ], [ %208, %206 ]
  %211 = phi ptr [ %205, %200 ], [ %207, %206 ]
  %212 = and i32 %210, 536870912
  %213 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 2
  %214 = load i64, ptr %213, align 8, !tbaa !69
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %286

216:                                              ; preds = %209
  %217 = load i8, ptr @PL_dowarn, align 1, !tbaa !38
  %218 = and i8 %217, 1
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %286, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 35
  %222 = load i32, ptr %221, align 8, !tbaa !74
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %254, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 26
  %226 = load i8, ptr %225, align 2, !tbaa !75, !range !43, !noundef !44
  %227 = icmp ne i8 %226, 0
  %228 = icmp eq i32 %222, 7
  %229 = and i1 %228, %227
  br i1 %229, label %254, label %230

230:                                              ; preds = %224
  %231 = load i8, ptr %154, align 1, !tbaa !73, !range !43, !noundef !44
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
  %289 = load i64, ptr %4, align 8, !tbaa !49
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %347, label %291

291:                                              ; preds = %286
  %292 = getelementptr inbounds i8, ptr %287, i64 %289
  %293 = call fastcc ptr @parse_buf(ptr noundef nonnull %0, ptr noundef %287, ptr noundef nonnull %292, i32 noundef %288, ptr noundef %2) #9
  %294 = icmp eq ptr %293, %292
  br i1 %294, label %299, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 7
  %297 = load i8, ptr %296, align 2, !tbaa !48, !range !43, !noundef !44
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %310, label %299

299:                                              ; preds = %295, %291
  %300 = load ptr, ptr %160, align 8, !tbaa !13
  %301 = icmp eq ptr %300, null
  br i1 %301, label %347, label %302

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.sv, ptr %300, i64 0, i32 2
  %304 = load i32, ptr %303, align 4, !tbaa !39
  %305 = and i32 %304, 1610547455
  store i32 %305, ptr %303, align 4, !tbaa !39
  %306 = and i32 %304, 33554432
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %347, label %308

308:                                              ; preds = %302
  %309 = call i32 @Perl_sv_backoff(ptr noundef nonnull %300) #10
  br label %347

310:                                              ; preds = %295
  %311 = load ptr, ptr %160, align 8, !tbaa !13
  %312 = icmp eq ptr %311, null
  br i1 %312, label %337, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.sv, ptr %311, i64 0, i32 2
  %315 = load i32, ptr %314, align 4, !tbaa !39
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
  %330 = load ptr, ptr %160, align 8, !tbaa !13
  %331 = getelementptr inbounds %struct.sv, ptr %330, i64 0, i32 2
  %332 = load i32, ptr %331, align 4, !tbaa !39
  br i1 %329, label %335, label %333

333:                                              ; preds = %325
  %334 = or i32 %332, 536870912
  store i32 %334, ptr %331, align 4, !tbaa !39
  br label %347

335:                                              ; preds = %325
  %336 = and i32 %332, -536870913
  store i32 %336, ptr %331, align 4, !tbaa !39
  br label %347

337:                                              ; preds = %310
  %338 = ptrtoint ptr %292 to i64
  %339 = ptrtoint ptr %293 to i64
  %340 = sub i64 %338, %339
  %341 = call ptr @Perl_newSVpv(ptr noundef %293, i64 noundef %340) #10
  store ptr %341, ptr %160, align 8, !tbaa !13
  %342 = icmp eq i32 %288, 0
  br i1 %342, label %347, label %343

343:                                              ; preds = %337
  %344 = getelementptr inbounds %struct.sv, ptr %341, i64 0, i32 2
  %345 = load i32, ptr %344, align 4, !tbaa !39
  %346 = or i32 %345, 536870912
  store i32 %346, ptr %344, align 4, !tbaa !39
  br label %347

347:                                              ; preds = %299, %337, %343, %324, %335, %333, %308, %302, %286, %149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_pstate_iv(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !39
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
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #10
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i32, ptr %12, align 8, !tbaa !31
  %17 = icmp eq i32 %16, 369695076
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56, ptr noundef nonnull %12) #10
  br label %19

19:                                               ; preds = %18, %15
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @report_event(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %3 to i64
  %11 = alloca i64, align 8
  %12 = alloca %struct.token_pos, align 8
  %13 = alloca i8, align 1
  %14 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  %15 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 7
  %16 = load i8, ptr %15, align 2, !tbaa !48, !range !43, !noundef !44
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %1153

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !71
  %25 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !65
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
  store ptr %27, ptr %12, align 8, !tbaa !62
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #12
  %33 = getelementptr inbounds i8, ptr %27, i64 %32
  %34 = getelementptr inbounds %struct.token_pos, ptr %12, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !64
  store ptr null, ptr %25, align 8, !tbaa !65
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %13, ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %12, i32 noundef 1, ptr noundef %7) #9
  %35 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
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
  %45 = load i64, ptr %19, align 8, !tbaa !69
  %46 = add i64 %45, %44
  store i64 %46, ptr %19, align 8, !tbaa !69
  %47 = icmp eq i64 %22, 0
  br i1 %47, label %84, label %48

48:                                               ; preds = %43
  %49 = icmp ult ptr %2, %3
  br i1 %49, label %50, label %73

50:                                               ; preds = %48, %58
  %51 = phi ptr [ %60, %58 ], [ %2, %48 ]
  %52 = phi ptr [ %59, %58 ], [ null, %48 ]
  %53 = load i8, ptr %51, align 1, !tbaa !38
  %54 = icmp eq i8 %53, 10
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i64, ptr %21, align 8, !tbaa !70
  %57 = add i64 %56, 1
  store i64 %57, ptr %21, align 8, !tbaa !70
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi ptr [ %51, %55 ], [ %52, %50 ]
  %60 = getelementptr inbounds i8, ptr %51, i64 1
  %61 = icmp eq ptr %60, %3
  br i1 %61, label %62, label %50, !llvm.loop !76

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
  %80 = load i64, ptr %23, align 8, !tbaa !71
  %81 = add i64 %80, %79
  br label %82

82:                                               ; preds = %78, %70
  %83 = phi i64 [ %81, %78 ], [ %72, %70 ]
  store i64 %83, ptr %23, align 8, !tbaa !71
  br label %84

84:                                               ; preds = %82, %43
  %85 = icmp eq i32 %1, 10
  br i1 %85, label %1113, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 18
  %88 = load i32, ptr %87, align 8, !tbaa !77
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %1113, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 37
  %92 = load ptr, ptr %91, align 8, !tbaa !27
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 36
  %96 = load ptr, ptr %95, align 8, !tbaa !26
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 38
  %100 = load ptr, ptr %99, align 8, !tbaa !28
  %101 = icmp eq ptr %100, null
  br i1 %101, label %174, label %102

102:                                              ; preds = %98, %94, %90
  %103 = icmp eq i32 %1, 2
  %104 = and i32 %1, -2
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %170

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 42
  %108 = load ptr, ptr %107, align 8, !tbaa !30
  %109 = load ptr, ptr %5, align 8, !tbaa !62
  %110 = getelementptr inbounds %struct.token_pos, ptr %5, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !64
  %112 = ptrtoint ptr %111 to i64
  %113 = ptrtoint ptr %109 to i64
  %114 = sub i64 %112, %113
  call void @Perl_sv_setpvn(ptr noundef %108, ptr noundef %109, i64 noundef %114) #10
  %115 = getelementptr inbounds %struct.sv, ptr %108, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !39
  %117 = and i32 %116, -536870913
  %118 = select i1 %38, i32 0, i32 536870912
  %119 = or disjoint i32 %117, %118
  store i32 %119, ptr %115, align 4, !tbaa !39
  %120 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %121 = load i8, ptr %120, align 4, !tbaa !78, !range !43, !noundef !44
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %106
  %124 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %125 = load i8, ptr %124, align 1, !tbaa !79, !range !43, !noundef !44
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call fastcc ptr @sv_lower(ptr noundef nonnull %108) #9
  br label %129

129:                                              ; preds = %127, %123, %106
  %130 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 39
  %131 = load ptr, ptr %130, align 8, !tbaa !29
  %132 = icmp eq ptr %131, null
  br i1 %132, label %146, label %133

133:                                              ; preds = %129
  %134 = call i32 @Perl_sv_eq_flags(ptr noundef nonnull %131, ptr noundef nonnull %108, i32 noundef 2) #10
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %1113, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 40
  %138 = load i32, ptr %137, align 8, !tbaa !80
  br i1 %103, label %139, label %141

139:                                              ; preds = %136
  %140 = add nsw i32 %138, 1
  store i32 %140, ptr %137, align 8, !tbaa !80
  br label %1113

141:                                              ; preds = %136
  %142 = add nsw i32 %138, -1
  store i32 %142, ptr %137, align 8, !tbaa !80
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %1113

144:                                              ; preds = %141
  %145 = load ptr, ptr %130, align 8, !tbaa !29
  call fastcc void @S_SvREFCNT_dec(ptr noundef %145) #9
  store ptr null, ptr %130, align 8, !tbaa !29
  br label %1113

146:                                              ; preds = %129
  %147 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 38
  %148 = load ptr, ptr %147, align 8, !tbaa !28
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
  store ptr %155, ptr %130, align 8, !tbaa !29
  %156 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 40
  store i32 1, ptr %156, align 8, !tbaa !80
  br label %1113

157:                                              ; preds = %150, %146
  %158 = load ptr, ptr %91, align 8, !tbaa !27
  %159 = icmp eq ptr %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = call ptr @Perl_hv_common(ptr noundef nonnull %158, ptr noundef nonnull %108, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %1113

163:                                              ; preds = %160, %157
  %164 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 36
  %165 = load ptr, ptr %164, align 8, !tbaa !26
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167

167:                                              ; preds = %163
  %168 = call ptr @Perl_hv_common(ptr noundef nonnull %165, ptr noundef nonnull %108, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %169 = icmp eq ptr %168, null
  br i1 %169, label %1113, label %174

170:                                              ; preds = %102
  %171 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 39
  %172 = load ptr, ptr %171, align 8, !tbaa !29
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %1113

174:                                              ; preds = %167, %163, %170, %98
  %175 = zext nneg i32 %1 to i64
  %176 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 34, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !21
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 34, i64 8
  %181 = load ptr, ptr %180, align 8, !tbaa !21
  %182 = icmp eq ptr %181, null
  br i1 %182, label %1113, label %183

183:                                              ; preds = %179, %174
  %184 = phi ptr [ %177, %174 ], [ %181, %179 ]
  %185 = phi ptr [ %176, %174 ], [ %180, %179 ]
  %186 = getelementptr inbounds %struct.sv, ptr %184, i64 0, i32 2
  %187 = load i32, ptr %186, align 4, !tbaa !39
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
  %207 = load ptr, ptr %184, align 8, !tbaa !45
  %208 = icmp eq ptr %207, null
  br i1 %208, label %1153, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.xpv, ptr %207, i64 0, i32 2
  %211 = load i64, ptr %210, align 8, !tbaa !46
  %212 = icmp ugt i64 %211, 1
  br i1 %212, label %241, label %213

213:                                              ; preds = %209
  %214 = icmp eq i64 %211, 0
  br i1 %214, label %1153, label %215

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.sv, ptr %184, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !38
  %218 = load i8, ptr %217, align 1, !tbaa !38
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
  %227 = load ptr, ptr %184, align 8, !tbaa !45
  %228 = getelementptr inbounds %struct.xpviv, ptr %227, i64 0, i32 4
  %229 = load i64, ptr %228, align 8, !tbaa !38
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %226, %223
  %232 = and i32 %187, 512
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %1153, label %234

234:                                              ; preds = %231
  %235 = load ptr, ptr %184, align 8, !tbaa !45
  %236 = getelementptr inbounds %struct.xpvnv, ptr %235, i64 0, i32 5
  %237 = load double, ptr %236, align 8, !tbaa !38
  %238 = fcmp une double %237, 0.000000e+00
  br i1 %238, label %241, label %1153

239:                                              ; preds = %220
  %240 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %184, i32 noundef 0) #10
  br i1 %240, label %241, label %1153

241:                                              ; preds = %239, %234, %226, %215, %209, %193, %183
  %242 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 25
  %243 = load i8, ptr %242, align 1, !tbaa !81, !range !43, !noundef !44
  %244 = icmp ne i8 %243, 0
  %245 = and i1 %29, %244
  %246 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %247 = load ptr, ptr %246, align 8, !tbaa !17
  %248 = icmp eq ptr %247, null
  br i1 %245, label %249, label %307

249:                                              ; preds = %241
  br i1 %248, label %250, label %252

250:                                              ; preds = %249
  %251 = call ptr @Perl_newSV(i64 noundef 256) #10
  store ptr %251, ptr %246, align 8, !tbaa !17
  br label %252

252:                                              ; preds = %250, %249
  %253 = phi ptr [ %251, %250 ], [ %247, %249 ]
  %254 = getelementptr inbounds %struct.sv, ptr %253, i64 0, i32 2
  %255 = load i32, ptr %254, align 4, !tbaa !39
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
  %266 = load i8, ptr %265, align 8, !tbaa !72, !range !43, !noundef !44
  %267 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 13
  %268 = load i8, ptr %267, align 8, !tbaa !82, !range !43, !noundef !44
  %269 = icmp eq i8 %266, %268
  br i1 %269, label %285, label %270

270:                                              ; preds = %264
  call fastcc void @flush_pending_text(ptr noundef nonnull %0, ptr noundef %7) #9
  %271 = load ptr, ptr %246, align 8, !tbaa !17
  br label %272

272:                                              ; preds = %252, %270
  %273 = phi ptr [ %253, %252 ], [ %271, %270 ]
  %274 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 14
  store i64 %20, ptr %274, align 8, !tbaa !83
  %275 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 15
  store i64 %22, ptr %275, align 8, !tbaa !84
  %276 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 16
  store i64 %24, ptr %276, align 8, !tbaa !85
  %277 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %278 = load i8, ptr %277, align 8, !tbaa !72, !range !43, !noundef !44
  %279 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 13
  store i8 %278, ptr %279, align 8, !tbaa !82
  call void @Perl_sv_setpvn(ptr noundef %273, ptr noundef nonnull @.str.47, i64 noundef 0) #10
  %280 = load ptr, ptr %246, align 8, !tbaa !17
  %281 = getelementptr inbounds %struct.sv, ptr %280, i64 0, i32 2
  %282 = load i32, ptr %281, align 4, !tbaa !39
  br i1 %38, label %283, label %286

283:                                              ; preds = %272
  %284 = and i32 %282, -536870913
  store i32 %284, ptr %281, align 4, !tbaa !39
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
  %293 = load ptr, ptr %246, align 8, !tbaa !17
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
  %306 = load ptr, ptr %246, align 8, !tbaa !17
  call void @Perl_sv_catsv_flags(ptr noundef %306, ptr noundef %304, i32 noundef 2) #10
  call fastcc void @S_SvREFCNT_dec(ptr noundef %304) #9
  br label %1153

307:                                              ; preds = %241
  br i1 %248, label %321, label %308

308:                                              ; preds = %307
  %309 = getelementptr inbounds %struct.sv, ptr %247, i64 0, i32 2
  %310 = load i32, ptr %309, align 4, !tbaa !39
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
  %320 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !34
  br label %321

321:                                              ; preds = %308, %307, %319
  %322 = phi ptr [ %320, %319 ], [ %37, %307 ], [ %37, %308 ]
  %323 = getelementptr inbounds %struct.p_handler, ptr %185, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !23
  %325 = icmp eq ptr %324, null
  br i1 %325, label %339, label %326

326:                                              ; preds = %321
  %327 = getelementptr inbounds %struct.sv, ptr %324, i64 0, i32 2
  %328 = load i32, ptr %327, align 4, !tbaa !39
  %329 = and i32 %328, 2098176
  %330 = icmp eq i32 %329, 1024
  br i1 %330, label %331, label %337

331:                                              ; preds = %326
  %332 = load ptr, ptr %324, align 8, !tbaa !45
  %333 = getelementptr inbounds %struct.xpv, ptr %332, i64 0, i32 2
  %334 = load i64, ptr %333, align 8, !tbaa !46
  store i64 %334, ptr %11, align 8, !tbaa !49
  %335 = getelementptr inbounds %struct.sv, ptr %324, i64 0, i32 3
  %336 = load ptr, ptr %335, align 8, !tbaa !38
  br label %339

337:                                              ; preds = %326
  %338 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %324, ptr noundef nonnull %11, i32 noundef 2) #10
  br label %339

339:                                              ; preds = %321, %331, %337
  %340 = phi ptr [ %336, %331 ], [ %338, %337 ], [ @.str.47, %321 ]
  %341 = load ptr, ptr %185, align 8, !tbaa !21
  %342 = getelementptr inbounds %struct.sv, ptr %341, i64 0, i32 2
  %343 = load i32, ptr %342, align 4, !tbaa !39
  %344 = and i32 %343, 255
  %345 = icmp eq i32 %344, 11
  %346 = load i8, ptr %340, align 1, !tbaa !38
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
  %356 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !49
  store i64 %356, ptr @PL_tmps_floor, align 8, !tbaa !49
  %357 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %358 = getelementptr inbounds i32, ptr %357, i64 1
  store ptr %358, ptr @PL_markstack_ptr, align 8, !tbaa !34
  %359 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !34
  %360 = icmp eq ptr %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %353
  %362 = call ptr @Perl_markstack_grow() #10
  br label %363

363:                                              ; preds = %353, %361
  %364 = phi ptr [ %362, %361 ], [ %358, %353 ]
  %365 = load ptr, ptr @PL_stack_base, align 8, !tbaa !34
  %366 = ptrtoint ptr %322 to i64
  %367 = ptrtoint ptr %365 to i64
  %368 = sub i64 %366, %367
  %369 = lshr exact i64 %368, 3
  %370 = trunc i64 %369 to i32
  store i32 %370, ptr %364, align 4, !tbaa !35
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
  %398 = load i8, ptr %396, align 1, !tbaa !38
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
  %408 = load ptr, ptr %407, align 8, !tbaa !62
  %409 = icmp eq ptr %408, null
  br i1 %409, label %421, label %410

410:                                              ; preds = %404
  %411 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %405, i32 1
  %412 = load ptr, ptr %411, align 8, !tbaa !64
  %413 = ptrtoint ptr %412 to i64
  %414 = ptrtoint ptr %408 to i64
  %415 = sub i64 %413, %414
  %416 = call ptr @Perl_newSVpvn(ptr noundef nonnull %408, i64 noundef %415) #10
  br i1 %38, label %428, label %417

417:                                              ; preds = %410
  %418 = getelementptr inbounds %struct.sv, ptr %416, i64 0, i32 2
  %419 = load i32, ptr %418, align 4, !tbaa !39
  %420 = or i32 %419, 536870912
  store i32 %420, ptr %418, align 4, !tbaa !39
  br label %428

421:                                              ; preds = %404
  %422 = load ptr, ptr %386, align 8, !tbaa !20
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
  br i1 %432, label %433, label %404, !llvm.loop !86

433:                                              ; preds = %428
  %434 = call ptr @Perl_newRV_noinc(ptr noundef %403) #10
  %435 = call ptr @Perl_sv_2mortal(ptr noundef %434) #10
  br label %754

436:                                              ; preds = %395
  br i1 %388, label %437, label %759

437:                                              ; preds = %436
  %438 = load ptr, ptr %5, align 8, !tbaa !62
  %439 = icmp ult ptr %438, %2
  br i1 %439, label %759, label %440

440:                                              ; preds = %437
  %441 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  call void @Perl_av_extend(ptr noundef %441, i64 noundef %393) #10
  br label %442

442:                                              ; preds = %440, %467
  %443 = phi i64 [ 0, %440 ], [ %470, %467 ]
  %444 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %443
  %445 = load ptr, ptr %444, align 8, !tbaa !62
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
  %457 = load ptr, ptr %456, align 8, !tbaa !64
  %458 = load ptr, ptr %444, align 8, !tbaa !62
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
  br i1 %471, label %472, label %442, !llvm.loop !87

472:                                              ; preds = %467
  %473 = call ptr @Perl_newRV_noinc(ptr noundef %441) #10
  %474 = call ptr @Perl_sv_2mortal(ptr noundef %473) #10
  br label %754

475:                                              ; preds = %395, %395, %395
  br i1 %388, label %476, label %759

476:                                              ; preds = %475
  %477 = load ptr, ptr %5, align 8, !tbaa !62
  %478 = load ptr, ptr %389, align 8, !tbaa !64
  %479 = ptrtoint ptr %478 to i64
  %480 = ptrtoint ptr %477 to i64
  %481 = sub i64 %479, %480
  %482 = call ptr @Perl_newSVpvn(ptr noundef %477, i64 noundef %481) #10
  %483 = call ptr @Perl_sv_2mortal(ptr noundef %482) #10
  br i1 %38, label %488, label %484

484:                                              ; preds = %476
  %485 = getelementptr inbounds %struct.sv, ptr %483, i64 0, i32 2
  %486 = load i32, ptr %485, align 4, !tbaa !39
  %487 = or i32 %486, 536870912
  store i32 %487, ptr %485, align 4, !tbaa !39
  br label %488

488:                                              ; preds = %484, %476
  %489 = load i8, ptr %382, align 4, !tbaa !78, !range !43, !noundef !44
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %491, label %498

491:                                              ; preds = %488
  %492 = load i8, ptr %383, align 1, !tbaa !79, !range !43, !noundef !44
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
  %516 = load ptr, ptr %515, align 8, !tbaa !62
  %517 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %513, i32 1
  %518 = load ptr, ptr %517, align 8, !tbaa !64
  %519 = ptrtoint ptr %518 to i64
  %520 = ptrtoint ptr %516 to i64
  %521 = sub i64 %519, %520
  %522 = call ptr @Perl_newSVpvn(ptr noundef %516, i64 noundef %521) #10
  br i1 %38, label %527, label %523

523:                                              ; preds = %512
  %524 = getelementptr inbounds %struct.sv, ptr %522, i64 0, i32 2
  %525 = load i32, ptr %524, align 4, !tbaa !39
  %526 = or i32 %525, 536870912
  store i32 %526, ptr %524, align 4, !tbaa !39
  br label %527

527:                                              ; preds = %523, %512
  %528 = getelementptr %struct.token_pos, ptr %515, i64 1
  %529 = load ptr, ptr %528, align 8, !tbaa !62
  %530 = icmp eq ptr %529, null
  br i1 %530, label %569, label %531

531:                                              ; preds = %527
  %532 = getelementptr %struct.token_pos, ptr %515, i64 1, i32 1
  %533 = load ptr, ptr %532, align 8, !tbaa !64
  %534 = ptrtoint ptr %533 to i64
  %535 = ptrtoint ptr %529 to i64
  %536 = sub i64 %534, %535
  %537 = load i8, ptr %529, align 1, !tbaa !38
  switch i8 %537, label %544 [
    i8 34, label %541
    i8 39, label %541
    i8 96, label %538
  ]

538:                                              ; preds = %531
  %539 = load i8, ptr %384, align 4, !tbaa !88, !range !43, !noundef !44
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
  %550 = load i32, ptr %549, align 4, !tbaa !39
  %551 = or i32 %550, 536870912
  store i32 %551, ptr %549, align 4, !tbaa !39
  br label %552

552:                                              ; preds = %548, %544
  %553 = load i8, ptr %385, align 2, !tbaa !75, !range !43, !noundef !44
  %554 = icmp eq i8 %553, 0
  br i1 %554, label %555, label %576

555:                                              ; preds = %552
  %556 = load i8, ptr %378, align 1, !tbaa !73, !range !43, !noundef !44
  %557 = icmp eq i8 %556, 0
  br i1 %557, label %560, label %558

558:                                              ; preds = %555
  %559 = call zeroext i1 @Perl_sv_utf8_decode(ptr noundef %547) #10
  br label %560

560:                                              ; preds = %558, %555
  %561 = load ptr, ptr %379, align 8, !tbaa !40
  %562 = call fastcc ptr @decode_entities(ptr noundef %547, ptr noundef %561, i1 noundef zeroext false) #9
  %563 = load i8, ptr %378, align 1, !tbaa !73, !range !43, !noundef !44
  %564 = icmp eq i8 %563, 0
  br i1 %564, label %576, label %565

565:                                              ; preds = %560
  %566 = getelementptr inbounds %struct.sv, ptr %547, i64 0, i32 2
  %567 = load i32, ptr %566, align 4, !tbaa !39
  %568 = and i32 %567, -536870913
  store i32 %568, ptr %566, align 4, !tbaa !39
  br label %576

569:                                              ; preds = %527
  %570 = load ptr, ptr %386, align 8, !tbaa !20
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
  %578 = load i8, ptr %382, align 4, !tbaa !78, !range !43, !noundef !44
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %580, label %585

580:                                              ; preds = %576
  %581 = load i8, ptr %383, align 1, !tbaa !79, !range !43, !noundef !44
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
  %597 = load ptr, ptr @PL_stack_max, align 8, !tbaa !34
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
  store ptr %606, ptr %607, align 8, !tbaa !34
  %608 = load ptr, ptr @PL_stack_max, align 8, !tbaa !34
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
  store ptr %617, ptr %618, align 8, !tbaa !34
  br label %619

619:                                              ; preds = %595, %615, %593
  %620 = phi ptr [ %514, %593 ], [ %514, %595 ], [ %618, %615 ]
  %621 = add nuw i64 %513, 2
  %622 = trunc i64 %621 to i32
  %623 = icmp slt i32 %622, %6
  br i1 %623, label %512, label %752, !llvm.loop !89

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
  %632 = load ptr, ptr %631, align 8, !tbaa !62
  %633 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %630, i32 1
  %634 = load ptr, ptr %633, align 8, !tbaa !64
  %635 = ptrtoint ptr %634 to i64
  %636 = ptrtoint ptr %632 to i64
  %637 = sub i64 %635, %636
  %638 = call ptr @Perl_newSVpvn(ptr noundef %632, i64 noundef %637) #10
  br i1 %38, label %643, label %639

639:                                              ; preds = %629
  %640 = getelementptr inbounds %struct.sv, ptr %638, i64 0, i32 2
  %641 = load i32, ptr %640, align 4, !tbaa !39
  %642 = or i32 %641, 536870912
  store i32 %642, ptr %640, align 4, !tbaa !39
  br label %643

643:                                              ; preds = %639, %629
  %644 = load i8, ptr %382, align 4, !tbaa !78, !range !43, !noundef !44
  %645 = icmp eq i8 %644, 0
  br i1 %645, label %646, label %651

646:                                              ; preds = %643
  %647 = load i8, ptr %383, align 1, !tbaa !79, !range !43, !noundef !44
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
  br i1 %654, label %629, label %655, !llvm.loop !90

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
  %663 = load i32, ptr %662, align 4, !tbaa !39
  %664 = or i32 %663, 536870912
  store i32 %664, ptr %662, align 4, !tbaa !39
  br label %763

665:                                              ; preds = %395
  br i1 %29, label %666, label %759

666:                                              ; preds = %665
  %667 = call ptr @Perl_newSVpvn(ptr noundef %2, i64 noundef %375) #10
  %668 = call ptr @Perl_sv_2mortal(ptr noundef %667) #10
  br i1 %38, label %673, label %669

669:                                              ; preds = %666
  %670 = getelementptr inbounds %struct.sv, ptr %668, i64 0, i32 2
  %671 = load i32, ptr %670, align 4, !tbaa !39
  %672 = or i32 %671, 536870912
  store i32 %672, ptr %670, align 4, !tbaa !39
  br label %673

673:                                              ; preds = %669, %666
  %674 = load i8, ptr %377, align 8, !tbaa !72, !range !43, !noundef !44
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %676, label %754

676:                                              ; preds = %673
  %677 = load i8, ptr %378, align 1, !tbaa !73, !range !43, !noundef !44
  %678 = icmp eq i8 %677, 0
  br i1 %678, label %681, label %679

679:                                              ; preds = %676
  %680 = call zeroext i1 @Perl_sv_utf8_decode(ptr noundef %668) #10
  br label %681

681:                                              ; preds = %679, %676
  %682 = load ptr, ptr %379, align 8, !tbaa !40
  %683 = call fastcc ptr @decode_entities(ptr noundef %668, ptr noundef %682, i1 noundef zeroext true) #9
  %684 = load i8, ptr %378, align 1, !tbaa !73, !range !43, !noundef !44
  %685 = icmp eq i8 %684, 0
  br i1 %685, label %754, label %686

686:                                              ; preds = %681
  %687 = getelementptr inbounds %struct.sv, ptr %668, i64 0, i32 2
  %688 = load i32, ptr %687, align 4, !tbaa !39
  %689 = and i32 %688, -536870913
  store i32 %689, ptr %687, align 4, !tbaa !39
  br label %763

690:                                              ; preds = %395
  br i1 %29, label %691, label %759

691:                                              ; preds = %690
  %692 = load i8, ptr %377, align 8, !tbaa !72, !range !43, !noundef !44
  %693 = icmp eq i8 %692, 0
  %694 = select i1 %693, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %763

695:                                              ; preds = %395
  %696 = load ptr, ptr %376, align 8, !tbaa !18
  %697 = call ptr @Perl_sv_2mortal(ptr noundef %696) #10
  %698 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.47, i64 noundef 0) #10
  store ptr %698, ptr %376, align 8, !tbaa !18
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
  %724 = load ptr, ptr %374, align 8, !tbaa !34
  %725 = call ptr @Perl_newSVpv(ptr noundef %724, i64 noundef 0) #10
  %726 = call ptr @Perl_sv_2mortal(ptr noundef %725) #10
  br label %754

727:                                              ; preds = %395
  %728 = getelementptr inbounds i8, ptr %396, i64 1
  %729 = load i8, ptr %728, align 1, !tbaa !38
  %730 = zext i8 %729 to i64
  %731 = getelementptr inbounds i8, ptr %396, i64 2
  %732 = call ptr @Perl_newSVpvn(ptr noundef nonnull %731, i64 noundef %730) #10
  %733 = call ptr @Perl_sv_2mortal(ptr noundef %732) #10
  %734 = load ptr, ptr %323, align 8, !tbaa !23
  %735 = getelementptr inbounds %struct.sv, ptr %734, i64 0, i32 2
  %736 = load i32, ptr %735, align 4, !tbaa !39
  %737 = and i32 %736, 536870912
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %743, label %739

739:                                              ; preds = %727
  %740 = getelementptr inbounds %struct.sv, ptr %733, i64 0, i32 2
  %741 = load i32, ptr %740, align 4, !tbaa !39
  %742 = or i32 %741, 536870912
  store i32 %742, ptr %740, align 4, !tbaa !39
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
  %770 = load ptr, ptr @PL_stack_max, align 8, !tbaa !34
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
  store ptr %766, ptr %779, align 8, !tbaa !34
  br label %780

780:                                              ; preds = %624, %767, %777, %752
  %781 = phi ptr [ %764, %767 ], [ %764, %777 ], [ %396, %752 ], [ %396, %624 ]
  %782 = phi ptr [ %765, %767 ], [ %779, %777 ], [ %753, %752 ], [ %397, %624 ]
  %783 = getelementptr inbounds i8, ptr %781, i64 1
  br label %395, !llvm.loop !91

784:                                              ; preds = %395
  br i1 %387, label %790, label %785

785:                                              ; preds = %784
  %786 = load ptr, ptr %185, align 8, !tbaa !21
  %787 = icmp eq ptr %373, %786
  br i1 %787, label %1107, label %788

788:                                              ; preds = %785
  %789 = call ptr @Perl_newRV_noinc(ptr noundef nonnull %373) #10
  call void @Perl_av_push(ptr noundef %786, ptr noundef %789) #10
  br label %1107

790:                                              ; preds = %784
  store ptr %397, ptr @PL_stack_sp, align 8, !tbaa !34
  %791 = load i8, ptr %372, align 1, !tbaa !38
  %792 = icmp eq i8 %791, 1
  %793 = load ptr, ptr %185, align 8, !tbaa !21
  br i1 %792, label %794, label %813

794:                                              ; preds = %790
  %795 = getelementptr inbounds %struct.sv, ptr %793, i64 0, i32 2
  %796 = load i32, ptr %795, align 4, !tbaa !39
  %797 = and i32 %796, 2048
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %799, label %813

799:                                              ; preds = %794
  %800 = and i32 %796, 2098176
  %801 = icmp eq i32 %800, 1024
  br i1 %801, label %802, label %808

802:                                              ; preds = %799
  %803 = load ptr, ptr %793, align 8, !tbaa !45
  %804 = getelementptr inbounds %struct.xpv, ptr %803, i64 0, i32 2
  %805 = load i64, ptr %804, align 8, !tbaa !46
  store i64 %805, ptr %11, align 8, !tbaa !49
  %806 = getelementptr inbounds %struct.sv, ptr %793, i64 0, i32 3
  %807 = load ptr, ptr %806, align 8, !tbaa !38
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
  %816 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %817 = getelementptr inbounds %struct.gv, ptr %816, i64 0, i32 3
  %818 = load ptr, ptr %817, align 8, !tbaa !38
  %819 = load ptr, ptr %818, align 8, !tbaa !34
  %820 = icmp eq ptr %819, null
  br i1 %820, label %821, label %838

821:                                              ; preds = %815
  %822 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %816, i32 noundef 0) #10
  %823 = getelementptr inbounds %struct.gv, ptr %822, i64 0, i32 3
  %824 = load ptr, ptr %823, align 8, !tbaa !38
  %825 = load ptr, ptr %824, align 8, !tbaa !34
  %826 = icmp eq ptr %825, null
  br i1 %826, label %1101, label %827

827:                                              ; preds = %821
  %828 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %829 = getelementptr inbounds %struct.gv, ptr %828, i64 0, i32 3
  %830 = load ptr, ptr %829, align 8, !tbaa !38
  %831 = load ptr, ptr %830, align 8, !tbaa !34
  %832 = icmp eq ptr %831, null
  br i1 %832, label %833, label %838

833:                                              ; preds = %827
  %834 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %828, i32 noundef 0) #10
  %835 = getelementptr inbounds %struct.gv, ptr %834, i64 0, i32 3
  %836 = load ptr, ptr %835, align 8, !tbaa !38
  %837 = load ptr, ptr %836, align 8, !tbaa !34
  br label %838

838:                                              ; preds = %815, %827, %833
  %839 = phi ptr [ %837, %833 ], [ %831, %827 ], [ %819, %815 ]
  %840 = getelementptr inbounds %struct.sv, ptr %839, i64 0, i32 2
  %841 = load i32, ptr %840, align 4, !tbaa !39
  %842 = and i32 %841, 2097152
  %843 = icmp eq i32 %842, 0
  %844 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %845 = getelementptr inbounds %struct.gv, ptr %844, i64 0, i32 3
  %846 = load ptr, ptr %845, align 8, !tbaa !38
  %847 = load ptr, ptr %846, align 8, !tbaa !34
  %848 = icmp eq ptr %847, null
  br i1 %843, label %858, label %849

849:                                              ; preds = %838
  br i1 %848, label %850, label %855

850:                                              ; preds = %849
  %851 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %844, i32 noundef 0) #10
  %852 = getelementptr inbounds %struct.gv, ptr %851, i64 0, i32 3
  %853 = load ptr, ptr %852, align 8, !tbaa !38
  %854 = load ptr, ptr %853, align 8, !tbaa !34
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
  %862 = load ptr, ptr %861, align 8, !tbaa !38
  %863 = load ptr, ptr %862, align 8, !tbaa !34
  %864 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  br label %865

865:                                              ; preds = %858, %859
  %866 = phi ptr [ %864, %859 ], [ %844, %858 ]
  %867 = phi ptr [ %863, %859 ], [ %847, %858 ]
  %868 = getelementptr inbounds %struct.sv, ptr %867, i64 0, i32 2
  %869 = load i32, ptr %868, align 4, !tbaa !39
  %870 = and i32 %869, 65280
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %908

872:                                              ; preds = %865
  %873 = getelementptr inbounds %struct.gv, ptr %866, i64 0, i32 3
  %874 = load ptr, ptr %873, align 8, !tbaa !38
  %875 = load ptr, ptr %874, align 8, !tbaa !34
  %876 = icmp eq ptr %875, null
  br i1 %876, label %877, label %883

877:                                              ; preds = %872
  %878 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %866, i32 noundef 0) #10
  %879 = getelementptr inbounds %struct.gv, ptr %878, i64 0, i32 3
  %880 = load ptr, ptr %879, align 8, !tbaa !38
  %881 = load ptr, ptr %880, align 8, !tbaa !34
  %882 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  br label %883

883:                                              ; preds = %872, %877
  %884 = phi ptr [ %882, %877 ], [ %866, %872 ]
  %885 = phi ptr [ %881, %877 ], [ %875, %872 ]
  %886 = getelementptr inbounds %struct.sv, ptr %885, i64 0, i32 2
  %887 = load i32, ptr %886, align 4, !tbaa !39
  %888 = and i32 %887, 255
  %889 = icmp eq i32 %888, 8
  br i1 %889, label %908, label %890

890:                                              ; preds = %883
  %891 = getelementptr inbounds %struct.gv, ptr %884, i64 0, i32 3
  %892 = load ptr, ptr %891, align 8, !tbaa !38
  %893 = load ptr, ptr %892, align 8, !tbaa !34
  %894 = icmp eq ptr %893, null
  br i1 %894, label %895, label %900

895:                                              ; preds = %890
  %896 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %884, i32 noundef 0) #10
  %897 = getelementptr inbounds %struct.gv, ptr %896, i64 0, i32 3
  %898 = load ptr, ptr %897, align 8, !tbaa !38
  %899 = load ptr, ptr %898, align 8, !tbaa !34
  br label %900

900:                                              ; preds = %890, %895
  %901 = phi ptr [ %899, %895 ], [ %893, %890 ]
  %902 = getelementptr inbounds %struct.sv, ptr %901, i64 0, i32 2
  %903 = load i32, ptr %902, align 4, !tbaa !39
  %904 = and i32 %903, 16826623
  %905 = icmp eq i32 %904, 16777226
  br i1 %905, label %906, label %1101

906:                                              ; preds = %900
  %907 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  br label %908

908:                                              ; preds = %906, %883, %865
  %909 = phi ptr [ %907, %906 ], [ %884, %883 ], [ %866, %865 ]
  %910 = getelementptr inbounds %struct.gv, ptr %909, i64 0, i32 3
  %911 = load ptr, ptr %910, align 8, !tbaa !38
  %912 = load ptr, ptr %911, align 8, !tbaa !34
  %913 = icmp eq ptr %912, null
  br i1 %913, label %914, label %919

914:                                              ; preds = %908
  %915 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %909, i32 noundef 0) #10
  %916 = getelementptr inbounds %struct.gv, ptr %915, i64 0, i32 3
  %917 = load ptr, ptr %916, align 8, !tbaa !38
  %918 = load ptr, ptr %917, align 8, !tbaa !34
  br label %919

919:                                              ; preds = %908, %914
  %920 = phi ptr [ %918, %914 ], [ %912, %908 ]
  %921 = getelementptr inbounds %struct.sv, ptr %920, i64 0, i32 2
  %922 = load i32, ptr %921, align 4, !tbaa !39
  %923 = and i32 %922, 1024
  %924 = icmp eq i32 %923, 0
  %925 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %926 = getelementptr inbounds %struct.gv, ptr %925, i64 0, i32 3
  %927 = load ptr, ptr %926, align 8, !tbaa !38
  %928 = load ptr, ptr %927, align 8, !tbaa !34
  %929 = icmp eq ptr %928, null
  br i1 %924, label %991, label %930

930:                                              ; preds = %919
  br i1 %929, label %931, label %936

931:                                              ; preds = %930
  %932 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %925, i32 noundef 0) #10
  %933 = getelementptr inbounds %struct.gv, ptr %932, i64 0, i32 3
  %934 = load ptr, ptr %933, align 8, !tbaa !38
  %935 = load ptr, ptr %934, align 8, !tbaa !34
  br label %936

936:                                              ; preds = %930, %931
  %937 = phi ptr [ %935, %931 ], [ %928, %930 ]
  %938 = load ptr, ptr %937, align 8, !tbaa !45
  %939 = icmp eq ptr %938, null
  br i1 %939, label %1101, label %940

940:                                              ; preds = %936
  %941 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %942 = getelementptr inbounds %struct.gv, ptr %941, i64 0, i32 3
  %943 = load ptr, ptr %942, align 8, !tbaa !38
  %944 = load ptr, ptr %943, align 8, !tbaa !34
  %945 = icmp eq ptr %944, null
  br i1 %945, label %946, label %951

946:                                              ; preds = %940
  %947 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %941, i32 noundef 0) #10
  %948 = getelementptr inbounds %struct.gv, ptr %947, i64 0, i32 3
  %949 = load ptr, ptr %948, align 8, !tbaa !38
  %950 = load ptr, ptr %949, align 8, !tbaa !34
  br label %951

951:                                              ; preds = %940, %946
  %952 = phi ptr [ %950, %946 ], [ %944, %940 ]
  %953 = load ptr, ptr %952, align 8, !tbaa !45
  %954 = getelementptr inbounds %struct.xpv, ptr %953, i64 0, i32 2
  %955 = load i64, ptr %954, align 8, !tbaa !46
  %956 = icmp ugt i64 %955, 1
  br i1 %956, label %1100, label %957

957:                                              ; preds = %951
  %958 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %959 = getelementptr inbounds %struct.gv, ptr %958, i64 0, i32 3
  %960 = load ptr, ptr %959, align 8, !tbaa !38
  %961 = load ptr, ptr %960, align 8, !tbaa !34
  %962 = icmp eq ptr %961, null
  br i1 %962, label %963, label %968

963:                                              ; preds = %957
  %964 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %958, i32 noundef 0) #10
  %965 = getelementptr inbounds %struct.gv, ptr %964, i64 0, i32 3
  %966 = load ptr, ptr %965, align 8, !tbaa !38
  %967 = load ptr, ptr %966, align 8, !tbaa !34
  br label %968

968:                                              ; preds = %957, %963
  %969 = phi ptr [ %967, %963 ], [ %961, %957 ]
  %970 = load ptr, ptr %969, align 8, !tbaa !45
  %971 = getelementptr inbounds %struct.xpv, ptr %970, i64 0, i32 2
  %972 = load i64, ptr %971, align 8, !tbaa !46
  %973 = icmp eq i64 %972, 0
  br i1 %973, label %1101, label %974

974:                                              ; preds = %968
  %975 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %976 = getelementptr inbounds %struct.gv, ptr %975, i64 0, i32 3
  %977 = load ptr, ptr %976, align 8, !tbaa !38
  %978 = load ptr, ptr %977, align 8, !tbaa !34
  %979 = icmp eq ptr %978, null
  br i1 %979, label %980, label %985

980:                                              ; preds = %974
  %981 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %975, i32 noundef 0) #10
  %982 = getelementptr inbounds %struct.gv, ptr %981, i64 0, i32 3
  %983 = load ptr, ptr %982, align 8, !tbaa !38
  %984 = load ptr, ptr %983, align 8, !tbaa !34
  br label %985

985:                                              ; preds = %974, %980
  %986 = phi ptr [ %984, %980 ], [ %978, %974 ]
  %987 = getelementptr inbounds %struct.sv, ptr %986, i64 0, i32 3
  %988 = load ptr, ptr %987, align 8, !tbaa !38
  %989 = load i8, ptr %988, align 1, !tbaa !38
  %990 = icmp eq i8 %989, 48
  br i1 %990, label %1101, label %1100

991:                                              ; preds = %919
  br i1 %929, label %992, label %997

992:                                              ; preds = %991
  %993 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %925, i32 noundef 0) #10
  %994 = getelementptr inbounds %struct.gv, ptr %993, i64 0, i32 3
  %995 = load ptr, ptr %994, align 8, !tbaa !38
  %996 = load ptr, ptr %995, align 8, !tbaa !34
  br label %997

997:                                              ; preds = %991, %992
  %998 = phi ptr [ %996, %992 ], [ %928, %991 ]
  %999 = getelementptr inbounds %struct.sv, ptr %998, i64 0, i32 2
  %1000 = load i32, ptr %999, align 4, !tbaa !39
  %1001 = and i32 %1000, 768
  %1002 = icmp eq i32 %1001, 0
  %1003 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %1004 = getelementptr inbounds %struct.gv, ptr %1003, i64 0, i32 3
  %1005 = load ptr, ptr %1004, align 8, !tbaa !38
  %1006 = load ptr, ptr %1005, align 8, !tbaa !34
  %1007 = icmp eq ptr %1006, null
  br i1 %1002, label %1091, label %1008

1008:                                             ; preds = %997
  br i1 %1007, label %1009, label %1015

1009:                                             ; preds = %1008
  %1010 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %1003, i32 noundef 0) #10
  %1011 = getelementptr inbounds %struct.gv, ptr %1010, i64 0, i32 3
  %1012 = load ptr, ptr %1011, align 8, !tbaa !38
  %1013 = load ptr, ptr %1012, align 8, !tbaa !34
  %1014 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  br label %1015

1015:                                             ; preds = %1008, %1009
  %1016 = phi ptr [ %1014, %1009 ], [ %1003, %1008 ]
  %1017 = phi ptr [ %1013, %1009 ], [ %1006, %1008 ]
  %1018 = getelementptr inbounds %struct.sv, ptr %1017, i64 0, i32 2
  %1019 = load i32, ptr %1018, align 4, !tbaa !39
  %1020 = and i32 %1019, 256
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1040, label %1022

1022:                                             ; preds = %1015
  %1023 = getelementptr inbounds %struct.gv, ptr %1016, i64 0, i32 3
  %1024 = load ptr, ptr %1023, align 8, !tbaa !38
  %1025 = load ptr, ptr %1024, align 8, !tbaa !34
  %1026 = icmp eq ptr %1025, null
  br i1 %1026, label %1027, label %1032

1027:                                             ; preds = %1022
  %1028 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %1016, i32 noundef 0) #10
  %1029 = getelementptr inbounds %struct.gv, ptr %1028, i64 0, i32 3
  %1030 = load ptr, ptr %1029, align 8, !tbaa !38
  %1031 = load ptr, ptr %1030, align 8, !tbaa !34
  br label %1032

1032:                                             ; preds = %1022, %1027
  %1033 = phi ptr [ %1031, %1027 ], [ %1025, %1022 ]
  %1034 = load ptr, ptr %1033, align 8, !tbaa !45
  %1035 = getelementptr inbounds %struct.xpviv, ptr %1034, i64 0, i32 4
  %1036 = load i64, ptr %1035, align 8, !tbaa !38
  %1037 = icmp eq i64 %1036, 0
  br i1 %1037, label %1038, label %1100

1038:                                             ; preds = %1032
  %1039 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  br label %1040

1040:                                             ; preds = %1038, %1015
  %1041 = phi ptr [ %1039, %1038 ], [ %1016, %1015 ]
  %1042 = getelementptr inbounds %struct.gv, ptr %1041, i64 0, i32 3
  %1043 = load ptr, ptr %1042, align 8, !tbaa !38
  %1044 = load ptr, ptr %1043, align 8, !tbaa !34
  %1045 = icmp eq ptr %1044, null
  br i1 %1045, label %1046, label %1051

1046:                                             ; preds = %1040
  %1047 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %1041, i32 noundef 0) #10
  %1048 = getelementptr inbounds %struct.gv, ptr %1047, i64 0, i32 3
  %1049 = load ptr, ptr %1048, align 8, !tbaa !38
  %1050 = load ptr, ptr %1049, align 8, !tbaa !34
  br label %1051

1051:                                             ; preds = %1040, %1046
  %1052 = phi ptr [ %1050, %1046 ], [ %1044, %1040 ]
  %1053 = getelementptr inbounds %struct.sv, ptr %1052, i64 0, i32 2
  %1054 = load i32, ptr %1053, align 4, !tbaa !39
  %1055 = and i32 %1054, 512
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1101, label %1057

1057:                                             ; preds = %1051
  %1058 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %1059 = getelementptr inbounds %struct.gv, ptr %1058, i64 0, i32 3
  %1060 = load ptr, ptr %1059, align 8, !tbaa !38
  %1061 = load ptr, ptr %1060, align 8, !tbaa !34
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1063, label %1068

1063:                                             ; preds = %1057
  %1064 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %1058, i32 noundef 0) #10
  %1065 = getelementptr inbounds %struct.gv, ptr %1064, i64 0, i32 3
  %1066 = load ptr, ptr %1065, align 8, !tbaa !38
  %1067 = load ptr, ptr %1066, align 8, !tbaa !34
  br label %1068

1068:                                             ; preds = %1057, %1063
  %1069 = phi ptr [ %1067, %1063 ], [ %1061, %1057 ]
  %1070 = load ptr, ptr %1069, align 8, !tbaa !45
  %1071 = getelementptr inbounds %struct.xpvnv, ptr %1070, i64 0, i32 5
  %1072 = load double, ptr %1071, align 8, !tbaa !38
  %1073 = fcmp uno double %1072, 0.000000e+00
  br i1 %1073, label %1100, label %1074

1074:                                             ; preds = %1068
  %1075 = load ptr, ptr @PL_errgv, align 8, !tbaa !34
  %1076 = getelementptr inbounds %struct.gv, ptr %1075, i64 0, i32 3
  %1077 = load ptr, ptr %1076, align 8, !tbaa !38
  %1078 = load ptr, ptr %1077, align 8, !tbaa !34
  %1079 = icmp eq ptr %1078, null
  br i1 %1079, label %1080, label %1085

1080:                                             ; preds = %1074
  %1081 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %1075, i32 noundef 0) #10
  %1082 = getelementptr inbounds %struct.gv, ptr %1081, i64 0, i32 3
  %1083 = load ptr, ptr %1082, align 8, !tbaa !38
  %1084 = load ptr, ptr %1083, align 8, !tbaa !34
  br label %1085

1085:                                             ; preds = %1074, %1080
  %1086 = phi ptr [ %1084, %1080 ], [ %1078, %1074 ]
  %1087 = load ptr, ptr %1086, align 8, !tbaa !45
  %1088 = getelementptr inbounds %struct.xpvnv, ptr %1087, i64 0, i32 5
  %1089 = load double, ptr %1088, align 8, !tbaa !38
  %1090 = fcmp une double %1089, 0.000000e+00
  br i1 %1090, label %1100, label %1101

1091:                                             ; preds = %997
  br i1 %1007, label %1092, label %1097

1092:                                             ; preds = %1091
  %1093 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %1003, i32 noundef 0) #10
  %1094 = getelementptr inbounds %struct.gv, ptr %1093, i64 0, i32 3
  %1095 = load ptr, ptr %1094, align 8, !tbaa !38
  %1096 = load ptr, ptr %1095, align 8, !tbaa !34
  br label %1097

1097:                                             ; preds = %1091, %1092
  %1098 = phi ptr [ %1096, %1092 ], [ %1006, %1091 ]
  %1099 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %1098, i32 noundef 0) #10
  br i1 %1099, label %1100, label %1101

1100:                                             ; preds = %1097, %1085, %1068, %1032, %985, %951, %855
  call void (ptr, ...) @Perl_croak(ptr noundef null) #10
  br label %1101

1101:                                             ; preds = %900, %821, %1100, %1097, %1085, %1051, %985, %968, %936, %855
  %1102 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !49
  %1103 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !49
  %1104 = icmp sgt i64 %1102, %1103
  br i1 %1104, label %1105, label %1106

1105:                                             ; preds = %1101
  call void @Perl_free_tmps() #10
  br label %1106

1106:                                             ; preds = %1105, %1101
  call void @Perl_pop_scope() #10
  br label %1107

1107:                                             ; preds = %785, %788, %1106
  %1108 = load ptr, ptr %376, align 8, !tbaa !18
  %1109 = icmp eq ptr %1108, null
  br i1 %1109, label %1153, label %1110

1110:                                             ; preds = %1107
  %1111 = load ptr, ptr %1108, align 8, !tbaa !45
  %1112 = getelementptr inbounds %struct.xpv, ptr %1111, i64 0, i32 2
  store i64 0, ptr %1112, align 8, !tbaa !46
  br label %1153

1113:                                             ; preds = %167, %160, %153, %154, %133, %141, %144, %139, %179, %170, %86, %84
  %1114 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 17
  %1115 = load ptr, ptr %1114, align 8, !tbaa !18
  %1116 = icmp eq ptr %1115, null
  br i1 %1116, label %1153, label %1117

1117:                                             ; preds = %1113
  br i1 %29, label %1134, label %1118

1118:                                             ; preds = %1117
  %1119 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %1120 = load ptr, ptr %1119, align 8, !tbaa !17
  %1121 = icmp eq ptr %1120, null
  br i1 %1121, label %1134, label %1122

1122:                                             ; preds = %1118
  %1123 = getelementptr inbounds %struct.sv, ptr %1120, i64 0, i32 2
  %1124 = load i32, ptr %1123, align 4, !tbaa !39
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
  %1135 = load ptr, ptr %1114, align 8, !tbaa !18
  %1136 = getelementptr inbounds %struct.sv, ptr %1135, i64 0, i32 2
  %1137 = load i32, ptr %1136, align 4, !tbaa !39
  %1138 = and i32 %1137, 536870912
  %1139 = icmp eq i32 %1138, 0
  br i1 %38, label %1144, label %1140

1140:                                             ; preds = %1134
  br i1 %1139, label %1141, label %1145

1141:                                             ; preds = %1140
  %1142 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef nonnull %1135, i32 noundef 2, i64 noundef 0) #10
  %1143 = load ptr, ptr %1114, align 8, !tbaa !18
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
  %1152 = load ptr, ptr %1114, align 8, !tbaa !18
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
define internal fastcc ptr @parse_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = ptrtoint ptr %2 to i64
  %7 = alloca %struct.token_pos, align 8
  %8 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 7
  %9 = load i8, ptr %8, align 2, !tbaa !48, !range !43, !noundef !44
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %276

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 8
  %13 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 28
  %14 = getelementptr inbounds %struct.token_pos, ptr %7, i64 0, i32 1
  %15 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 18
  %17 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  br label %18

18:                                               ; preds = %11, %271
  %19 = phi ptr [ %1, %11 ], [ %273, %271 ]
  %20 = phi ptr [ %1, %11 ], [ %272, %271 ]
  %21 = load ptr, ptr %12, align 8, !tbaa !61
  %22 = icmp eq ptr %21, null
  br i1 %22, label %104, label %23

23:                                               ; preds = %18, %99
  %24 = phi ptr [ %100, %99 ], [ %21, %18 ]
  %25 = phi ptr [ %102, %99 ], [ %19, %18 ]
  %26 = phi ptr [ %101, %99 ], [ %20, %18 ]
  %27 = icmp ult ptr %25, %2
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = ptrtoint ptr %25 to i64
  %30 = getelementptr i8, ptr %25, i64 %6
  %31 = sub i64 0, %29
  %32 = getelementptr i8, ptr %30, i64 %31
  br label %33

33:                                               ; preds = %28, %37
  %34 = phi ptr [ %38, %37 ], [ %25, %28 ]
  %35 = load i8, ptr %34, align 1, !tbaa !38
  %36 = icmp eq i8 %35, 60
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %34, i64 1
  %39 = icmp eq ptr %38, %32
  br i1 %39, label %40, label %33, !llvm.loop !92

40:                                               ; preds = %33, %37, %23
  %41 = phi ptr [ %25, %23 ], [ %32, %37 ], [ %34, %33 ]
  %42 = icmp eq ptr %41, %2
  br i1 %42, label %276, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds i8, ptr %41, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !38
  %46 = icmp eq i8 %45, 47
  br i1 %46, label %47, label %99

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %41, i64 2
  %49 = load i8, ptr %24, align 1, !tbaa !38
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %47, %67
  %52 = phi i8 [ %70, %67 ], [ %49, %47 ]
  %53 = phi ptr [ %68, %67 ], [ %48, %47 ]
  %54 = phi ptr [ %69, %67 ], [ %24, %47 ]
  %55 = load i8, ptr %53, align 1, !tbaa !38
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !35
  %59 = and i32 %58, 16400
  %60 = icmp eq i32 %59, 16400
  %61 = add i8 %55, 32
  %62 = zext i8 %61 to i32
  %63 = sext i8 %55 to i32
  %64 = select i1 %60, i32 %62, i32 %63
  %65 = sext i8 %52 to i32
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %99

67:                                               ; preds = %51
  %68 = getelementptr inbounds i8, ptr %53, i64 1
  %69 = getelementptr inbounds i8, ptr %54, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !38
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %51, !llvm.loop !93

72:                                               ; preds = %67, %47
  %73 = phi ptr [ %48, %47 ], [ %68, %67 ]
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(10) @.str.57) #12
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i8, ptr %13, align 8, !tbaa !94, !range !43, !noundef !44
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %76, %72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  store ptr %48, ptr %7, align 8, !tbaa !62
  store ptr %73, ptr %14, align 8, !tbaa !64
  br label %80

80:                                               ; preds = %80, %79
  %81 = phi ptr [ %73, %79 ], [ %88, %80 ]
  %82 = load i8, ptr %81, align 1, !tbaa !38
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !38
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  %88 = getelementptr inbounds i8, ptr %81, i64 1
  br i1 %87, label %89, label %80, !llvm.loop !95

89:                                               ; preds = %80
  %90 = icmp eq i8 %82, 62
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  %92 = icmp eq ptr %26, %41
  br i1 %92, label %94, label %93

93:                                               ; preds = %91
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %26, ptr noundef %41, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  br label %94

94:                                               ; preds = %93, %91
  call fastcc void @report_event(ptr noundef %0, i32 noundef 3, ptr noundef %41, ptr noundef nonnull %88, i32 noundef %3, ptr noundef nonnull %7, i32 noundef 1, ptr noundef %4) #9
  store ptr null, ptr %12, align 8, !tbaa !61
  store i8 0, ptr %15, align 8, !tbaa !72
  br label %95

95:                                               ; preds = %94, %89
  %96 = phi ptr [ null, %94 ], [ %24, %89 ]
  %97 = phi ptr [ %88, %94 ], [ %26, %89 ]
  %98 = phi ptr [ %88, %94 ], [ %81, %89 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %99

99:                                               ; preds = %51, %43, %95, %76
  %100 = phi ptr [ %96, %95 ], [ %24, %76 ], [ %24, %43 ], [ %24, %51 ]
  %101 = phi ptr [ %97, %95 ], [ %26, %76 ], [ %26, %43 ], [ %26, %51 ]
  %102 = phi ptr [ %98, %95 ], [ %73, %76 ], [ %44, %43 ], [ %53, %51 ]
  %103 = icmp eq ptr %100, null
  br i1 %103, label %104, label %23

104:                                              ; preds = %99, %18
  %105 = phi ptr [ %20, %18 ], [ %101, %99 ]
  %106 = phi ptr [ %19, %18 ], [ %102, %99 ]
  br label %145

107:                                              ; preds = %145, %151
  %108 = phi ptr [ %152, %151 ], [ %147, %145 ]
  %109 = ptrtoint ptr %108 to i64
  br i1 %150, label %112, label %110

110:                                              ; preds = %107
  %111 = icmp ult ptr %147, %2
  br i1 %111, label %176, label %183

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
  %120 = load i8, ptr %119, align 1, !tbaa !38
  %121 = icmp eq i8 %120, 93
  br i1 %121, label %129, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds i8, ptr %119, i64 1
  %124 = icmp eq ptr %123, %117
  br i1 %124, label %125, label %118, !llvm.loop !96

125:                                              ; preds = %122, %112
  %126 = phi ptr [ %108, %112 ], [ %117, %122 ]
  %127 = load i8, ptr %126, align 1, !tbaa !38
  %128 = icmp eq i8 %127, 93
  br i1 %128, label %129, label %151

129:                                              ; preds = %118, %125
  %130 = phi ptr [ %126, %125 ], [ %119, %118 ]
  %131 = getelementptr inbounds i8, ptr %130, i64 1
  %132 = load i8, ptr %131, align 1, !tbaa !38
  %133 = icmp eq i8 %132, 93
  br i1 %133, label %134, label %151

134:                                              ; preds = %129
  %135 = getelementptr inbounds i8, ptr %130, i64 2
  %136 = load i8, ptr %135, align 1, !tbaa !38
  %137 = icmp eq i8 %136, 62
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = getelementptr inbounds i8, ptr %130, i64 3
  %140 = icmp eq ptr %146, %130
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %146, ptr noundef nonnull %130, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  br label %142

142:                                              ; preds = %138, %141
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %130, ptr noundef nonnull %139, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  %143 = load ptr, ptr %17, align 8, !tbaa !19
  %144 = tail call ptr @Perl_av_pop(ptr noundef %143) #10
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %144) #9
  tail call fastcc void @marked_section_update(ptr noundef %0) #9
  br label %145

145:                                              ; preds = %104, %142
  %146 = phi ptr [ %139, %142 ], [ %105, %104 ]
  %147 = phi ptr [ %139, %142 ], [ %106, %104 ]
  %148 = load i32, ptr %16, align 8, !tbaa !77
  %149 = and i32 %148, -2
  %150 = icmp eq i32 %149, 2
  br label %107

151:                                              ; preds = %129, %134, %125
  %152 = phi ptr [ %126, %125 ], [ %131, %134 ], [ %131, %129 ]
  %153 = icmp eq ptr %152, %2
  br i1 %153, label %276, label %107, !llvm.loop !97

154:                                              ; preds = %176, %179
  %155 = phi ptr [ %177, %176 ], [ %181, %179 ]
  %156 = load i8, ptr %155, align 1, !tbaa !38
  %157 = icmp eq i8 %156, 60
  br i1 %157, label %183, label %158

158:                                              ; preds = %154
  %159 = load i32, ptr %16, align 8, !tbaa !77
  %160 = icmp ne i32 %159, 0
  %161 = icmp eq i8 %156, 93
  %162 = and i1 %161, %160
  br i1 %162, label %163, label %179

163:                                              ; preds = %158
  %164 = getelementptr inbounds i8, ptr %155, i64 1
  %165 = load i8, ptr %164, align 1, !tbaa !38
  %166 = icmp eq i8 %165, 93
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = getelementptr inbounds i8, ptr %155, i64 2
  %169 = load i8, ptr %168, align 1, !tbaa !38
  %170 = icmp eq i8 %169, 62
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = getelementptr inbounds i8, ptr %155, i64 3
  tail call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 4, ptr noundef %178, ptr noundef nonnull %155, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  tail call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 10, ptr noundef nonnull %155, ptr noundef nonnull %172, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  %173 = load ptr, ptr %17, align 8, !tbaa !19
  %174 = tail call ptr @Perl_av_pop(ptr noundef %173) #10
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %174) #9
  tail call fastcc void @marked_section_update(ptr noundef nonnull %0) #9
  %175 = icmp ult ptr %172, %2
  br i1 %175, label %176, label %243

176:                                              ; preds = %110, %171
  %177 = phi ptr [ %172, %171 ], [ %147, %110 ]
  %178 = phi ptr [ %172, %171 ], [ %146, %110 ]
  br label %154

179:                                              ; preds = %163, %167, %158
  %180 = phi ptr [ %155, %158 ], [ %164, %163 ], [ %168, %167 ]
  %181 = getelementptr inbounds i8, ptr %180, i64 1
  %182 = icmp ult ptr %181, %2
  br i1 %182, label %154, label %183, !llvm.loop !98

183:                                              ; preds = %154, %179, %110
  %184 = phi ptr [ %146, %110 ], [ %178, %179 ], [ %178, %154 ]
  %185 = phi ptr [ %147, %110 ], [ %155, %154 ], [ %181, %179 ]
  %186 = icmp eq ptr %185, %184
  br i1 %186, label %243, label %187

187:                                              ; preds = %183
  %188 = load i8, ptr %185, align 1, !tbaa !38
  %189 = icmp eq i8 %188, 60
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %184, ptr noundef nonnull %185, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  br label %243

191:                                              ; preds = %187
  %192 = getelementptr inbounds i8, ptr %185, i64 -1
  %193 = load i8, ptr %192, align 1, !tbaa !38
  %194 = zext i8 %193 to i64
  %195 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !38
  %197 = and i8 %196, 1
  %198 = icmp eq i8 %197, 0
  %199 = icmp ult ptr %192, %184
  br i1 %198, label %201, label %200

200:                                              ; preds = %191
  br i1 %199, label %238, label %202

201:                                              ; preds = %191
  br i1 %199, label %224, label %213

202:                                              ; preds = %200, %210
  %203 = phi ptr [ %211, %210 ], [ %192, %200 ]
  %204 = load i8, ptr %203, align 1, !tbaa !38
  %205 = zext i8 %204 to i64
  %206 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !38
  %208 = and i8 %207, 1
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %238, label %210

210:                                              ; preds = %202
  %211 = getelementptr inbounds i8, ptr %203, i64 -1
  %212 = icmp ult ptr %211, %184
  br i1 %212, label %238, label %202, !llvm.loop !99

213:                                              ; preds = %201, %221
  %214 = phi ptr [ %222, %221 ], [ %192, %201 ]
  %215 = load i8, ptr %214, align 1, !tbaa !38
  %216 = zext i8 %215 to i64
  %217 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !38
  %219 = and i8 %218, 1
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %213
  %222 = getelementptr inbounds i8, ptr %214, i64 -1
  %223 = icmp ult ptr %222, %184
  br i1 %223, label %224, label %213, !llvm.loop !100

224:                                              ; preds = %213, %221, %201
  %225 = phi ptr [ %192, %201 ], [ %222, %221 ], [ %214, %213 ]
  %226 = icmp ult ptr %225, %184
  br i1 %226, label %238, label %227

227:                                              ; preds = %224, %235
  %228 = phi ptr [ %236, %235 ], [ %225, %224 ]
  %229 = load i8, ptr %228, align 1, !tbaa !38
  %230 = zext i8 %229 to i64
  %231 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !38
  %233 = and i8 %232, 1
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %227
  %236 = getelementptr inbounds i8, ptr %228, i64 -1
  %237 = icmp ult ptr %236, %184
  br i1 %237, label %238, label %227, !llvm.loop !101

238:                                              ; preds = %210, %202, %235, %227, %200, %224
  %239 = phi ptr [ %225, %224 ], [ %192, %200 ], [ %236, %235 ], [ %228, %227 ], [ %211, %210 ], [ %203, %202 ]
  %240 = getelementptr inbounds i8, ptr %239, i64 1
  %241 = icmp eq ptr %240, %184
  br i1 %241, label %276, label %242

242:                                              ; preds = %238
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %184, ptr noundef nonnull %240, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  br label %276

243:                                              ; preds = %171, %190, %183
  %244 = phi ptr [ %185, %190 ], [ %185, %183 ], [ %172, %171 ]
  %245 = phi ptr [ %185, %190 ], [ %184, %183 ], [ %172, %171 ]
  %246 = ptrtoint ptr %244 to i64
  %247 = sub i64 %6, %246
  %248 = icmp slt i64 %247, 3
  br i1 %248, label %276, label %249

249:                                              ; preds = %243
  %250 = getelementptr inbounds i8, ptr %244, i64 1
  %251 = load i8, ptr %250, align 1, !tbaa !38
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !38
  %255 = and i8 %254, 2
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %249
  %258 = tail call fastcc ptr @parse_start(ptr noundef %0, ptr noundef %245, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
  br label %266

259:                                              ; preds = %249
  switch i8 %251, label %271 [
    i8 47, label %260
    i8 33, label %262
    i8 63, label %264
  ]

260:                                              ; preds = %259
  %261 = tail call fastcc ptr @parse_end(ptr noundef %0, ptr noundef %245, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
  br label %266

262:                                              ; preds = %259
  %263 = tail call fastcc ptr @parse_decl(ptr noundef %0, ptr noundef %245, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
  br label %266

264:                                              ; preds = %259
  %265 = tail call fastcc ptr @parse_process(ptr noundef %0, ptr noundef %245, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
  br label %266

266:                                              ; preds = %260, %264, %262, %257
  %267 = phi ptr [ %258, %257 ], [ %261, %260 ], [ %263, %262 ], [ %265, %264 ]
  %268 = icmp eq ptr %267, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %266
  %270 = icmp eq ptr %267, %245
  br i1 %270, label %276, label %271

271:                                              ; preds = %259, %269, %266
  %272 = phi ptr [ %245, %266 ], [ %267, %269 ], [ %245, %259 ]
  %273 = phi ptr [ %250, %266 ], [ %267, %269 ], [ %250, %259 ]
  %274 = load i8, ptr %8, align 2, !tbaa !48, !range !43, !noundef !44
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %18, label %276, !llvm.loop !102

276:                                              ; preds = %269, %271, %243, %40, %151, %5, %238, %242
  %277 = phi ptr [ %240, %242 ], [ %184, %238 ], [ %1, %5 ], [ %146, %151 ], [ %26, %40 ], [ %245, %269 ], [ %273, %271 ], [ %244, %243 ]
  ret ptr %277
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flush_pending_text(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 25
  %4 = load i8, ptr %3, align 1, !tbaa !81, !range !43, !noundef !44
  %5 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %8 = load i8, ptr %7, align 8, !tbaa !72, !range !43, !noundef !44
  %9 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 2
  %10 = load <2 x i64>, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !71
  store i8 0, ptr %3, align 1, !tbaa !81
  store ptr null, ptr %5, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 13
  %14 = load i8, ptr %13, align 8, !tbaa !82, !range !43, !noundef !44
  store i8 %14, ptr %7, align 8, !tbaa !72
  %15 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 14
  %16 = load <2 x i64>, ptr %15, align 8, !tbaa !49
  store <2 x i64> %16, ptr %9, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 16
  %18 = load i64, ptr %17, align 8, !tbaa !85
  store i64 %18, ptr %11, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = load ptr, ptr %6, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.xpv, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  %25 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !39
  %27 = and i32 %26, 536870912
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %20, ptr noundef %24, i32 noundef %27, ptr noundef null, i32 noundef 0, ptr noundef %1) #9
  %28 = load i32, ptr %25, align 4, !tbaa !39
  %29 = and i32 %28, 1610547455
  store i32 %29, ptr %25, align 4, !tbaa !39
  %30 = and i32 %28, 33554432
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %6) #10
  br label %34

34:                                               ; preds = %32, %2
  store i8 %4, ptr %3, align 1, !tbaa !81
  store ptr %6, ptr %5, align 8, !tbaa !17
  store i8 %8, ptr %7, align 8, !tbaa !72
  store <2 x i64> %10, ptr %9, align 8, !tbaa !49
  store i64 %12, ptr %11, align 8, !tbaa !71
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i1 @probably_utf8_chunk(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  br label %4

4:                                                ; preds = %7, %2
  %5 = phi ptr [ %3, %2 ], [ %8, %7 ]
  %6 = icmp ugt ptr %5, %0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %5, i64 -1
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = and i8 %9, -64
  %11 = icmp eq i8 %10, -128
  br i1 %11, label %4, label %12, !llvm.loop !103

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
  %23 = load i8, ptr %16, align 1, !tbaa !38
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !38
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
define internal fastcc noundef ptr @sv_lower(ptr noundef returned %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !39
  %5 = and i32 %4, 430018304
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  br label %14

12:                                               ; preds = %1
  %13 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2) #10
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %12 ]
  %16 = phi ptr [ %11, %7 ], [ %13, %12 ]
  %17 = load i64, ptr %15, align 8, !tbaa !49
  %18 = add i64 %17, -1
  store i64 %18, ptr %2, align 8, !tbaa !49
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %14, %20
  %21 = phi ptr [ %30, %20 ], [ %16, %14 ]
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !35
  %26 = and i32 %25, 16400
  %27 = icmp eq i32 %26, 16400
  %28 = add i8 %22, 32
  %29 = select i1 %27, i8 %28, i8 %22
  store i8 %29, ptr %21, align 1, !tbaa !38
  %30 = getelementptr inbounds i8, ptr %21, i64 1
  %31 = load i64, ptr %2, align 8, !tbaa !49
  %32 = add i64 %31, -1
  store i64 %32, ptr %2, align 8, !tbaa !49
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %34, label %20, !llvm.loop !104

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
define internal fastcc noundef ptr @decode_entities(ptr noundef returned %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
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
  %13 = load i32, ptr %12, align 4, !tbaa !39
  %14 = and i32 %13, 430018304
  %15 = icmp eq i32 %14, 1024
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load ptr, ptr %0, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !46
  store i64 %19, ptr %4, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  br label %25

22:                                               ; preds = %3
  %23 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 2) #10
  %24 = load i64, ptr %4, align 8, !tbaa !49
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i64 [ %19, %16 ], [ %24, %22 ]
  %27 = phi ptr [ %21, %16 ], [ %23, %22 ]
  store ptr %27, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store ptr %27, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %28 = getelementptr inbounds i8, ptr %27, i64 %26
  store ptr %28, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %9) #11
  %29 = icmp ne ptr %1, null
  %30 = ptrtoint ptr %9 to i64
  %31 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  br label %32

32:                                               ; preds = %342, %25
  %33 = phi ptr [ %343, %342 ], [ %27, %25 ]
  %34 = phi ptr [ %346, %342 ], [ %27, %25 ]
  %35 = phi ptr [ %345, %342 ], [ %28, %25 ]
  %36 = phi i32 [ %344, %342 ], [ 0, %25 ]
  %37 = ptrtoint ptr %35 to i64
  br label %38

38:                                               ; preds = %32, %42
  %39 = phi ptr [ %33, %32 ], [ %45, %42 ]
  %40 = phi ptr [ %34, %32 ], [ %43, %42 ]
  %41 = icmp ult ptr %40, %35
  br i1 %41, label %42, label %347

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %40, i64 1
  %44 = load i8, ptr %40, align 1, !tbaa !38
  %45 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 %44, ptr %39, align 1, !tbaa !38
  %46 = icmp eq i8 %44, 38
  br i1 %46, label %47, label %38, !llvm.loop !105

47:                                               ; preds = %42
  store ptr %43, ptr %5, align 8, !tbaa !34
  store ptr %45, ptr %6, align 8, !tbaa !34
  %48 = icmp ult ptr %43, %35
  br i1 %48, label %49, label %241

49:                                               ; preds = %47
  %50 = load i8, ptr %43, align 1, !tbaa !38
  %51 = icmp eq i8 %50, 35
  br i1 %51, label %52, label %159

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, ptr %40, i64 2
  store ptr %53, ptr %5, align 8, !tbaa !34
  %54 = icmp ult ptr %53, %35
  br i1 %54, label %55, label %112

55:                                               ; preds = %52
  %56 = load i8, ptr %53, align 1, !tbaa !38
  switch i8 %56, label %83 [
    i8 120, label %57
    i8 88, label %57
  ]

57:                                               ; preds = %55, %55
  %58 = getelementptr inbounds i8, ptr %40, i64 3
  store ptr %58, ptr %5, align 8, !tbaa !34
  %59 = icmp ult ptr %58, %35
  br i1 %59, label %60, label %241

60:                                               ; preds = %57
  %61 = load i8, ptr %58, align 1, !tbaa !38
  %62 = sext i8 %61 to i32
  %63 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) @PL_hexdigit, i32 noundef %62) #12
  %64 = icmp eq ptr %63, null
  br i1 %64, label %116, label %73

65:                                               ; preds = %73
  %66 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %66, ptr %5, align 8, !tbaa !34
  %67 = icmp ult ptr %66, %35
  br i1 %67, label %68, label %116

68:                                               ; preds = %65
  %69 = load i8, ptr %66, align 1, !tbaa !38
  %70 = sext i8 %69 to i32
  %71 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) @PL_hexdigit, i32 noundef %70) #12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %116, label %73

73:                                               ; preds = %60, %68
  %74 = phi ptr [ %71, %68 ], [ %63, %60 ]
  %75 = phi ptr [ %66, %68 ], [ %58, %60 ]
  %76 = phi i64 [ %81, %68 ], [ 0, %60 ]
  %77 = shl i64 %76, 4
  %78 = ptrtoint ptr %74 to i64
  %79 = sub i64 %78, ptrtoint (ptr @PL_hexdigit to i64)
  %80 = and i64 %79, 15
  %81 = or disjoint i64 %80, %77
  %82 = icmp ugt i64 %81, 1114111
  br i1 %82, label %241, label %65

83:                                               ; preds = %55
  %84 = ptrtoint ptr %53 to i64
  %85 = sub i64 %37, %84
  %86 = getelementptr i8, ptr %53, i64 %85
  %87 = load i8, ptr %53, align 1, !tbaa !38
  %88 = zext i8 %87 to i64
  %89 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !35
  %91 = and i32 %90, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %112, label %100

93:                                               ; preds = %109
  %94 = load i8, ptr %110, align 1, !tbaa !38
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !35
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %112, label %100, !llvm.loop !106

100:                                              ; preds = %83, %93
  %101 = phi i8 [ %94, %93 ], [ %87, %83 ]
  %102 = phi ptr [ %110, %93 ], [ %53, %83 ]
  %103 = phi i64 [ %107, %93 ], [ 0, %83 ]
  %104 = mul i64 %103, 10
  %105 = sext i8 %101 to i64
  %106 = add i64 %104, -48
  %107 = add nsw i64 %106, %105
  %108 = icmp ugt i64 %107, 1114111
  br i1 %108, label %240, label %109

109:                                              ; preds = %100
  %110 = getelementptr inbounds i8, ptr %102, i64 1
  %111 = icmp eq ptr %110, %35
  br i1 %111, label %112, label %93, !llvm.loop !106

112:                                              ; preds = %109, %93, %83, %52
  %113 = phi ptr [ %53, %52 ], [ %53, %83 ], [ %110, %93 ], [ %86, %109 ]
  %114 = phi i32 [ 0, %52 ], [ 0, %83 ], [ 1, %93 ], [ 1, %109 ]
  %115 = phi i64 [ 0, %52 ], [ 0, %83 ], [ %107, %93 ], [ %107, %109 ]
  store ptr %113, ptr %5, align 8, !tbaa !34
  br label %116

116:                                              ; preds = %68, %65, %60, %112
  %117 = phi ptr [ %113, %112 ], [ %58, %60 ], [ %66, %65 ], [ %66, %68 ]
  %118 = phi i32 [ %114, %112 ], [ 0, %60 ], [ 1, %65 ], [ 1, %68 ]
  %119 = phi i64 [ %115, %112 ], [ 0, %60 ], [ %81, %65 ], [ %81, %68 ]
  %120 = icmp ne i64 %119, 0
  %121 = icmp ne i32 %118, 0
  %122 = and i1 %121, %120
  br i1 %122, label %123, label %241

123:                                              ; preds = %116
  %124 = load i32, ptr %12, align 4, !tbaa !39
  %125 = and i32 %124, 536870912
  %126 = icmp eq i32 %125, 0
  %127 = icmp ult i64 %119, 256
  %128 = and i1 %127, %126
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = trunc i64 %119 to i8
  store i8 %130, ptr %9, align 1, !tbaa !38
  store i64 1, ptr %8, align 8, !tbaa !49
  br label %255

131:                                              ; preds = %123
  %132 = and i64 %119, -2
  %133 = icmp eq i64 %132, 65534
  br i1 %133, label %241, label %134

134:                                              ; preds = %131
  %135 = trunc i64 %119 to i32
  %136 = and i32 %135, -1024
  switch i32 %136, label %146 [
    i32 56320, label %137
    i32 55296, label %153
  ]

137:                                              ; preds = %134
  %138 = icmp eq i32 %36, 0
  br i1 %138, label %153, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds i8, ptr %39, i64 -2
  store ptr %140, ptr %6, align 8, !tbaa !34
  %141 = shl i32 %36, 10
  %142 = add i32 %141, -56623104
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, 9216
  %145 = add nsw i64 %144, %119
  br label %153

146:                                              ; preds = %134
  %147 = add nsw i64 %119, -64976
  %148 = icmp ult i64 %147, 32
  %149 = and i64 %119, 65534
  %150 = icmp eq i64 %149, 65534
  %151 = or i1 %148, %150
  %152 = select i1 %151, i64 65533, i64 %119
  br label %153

153:                                              ; preds = %134, %146, %137, %139
  %154 = phi i64 [ %145, %139 ], [ 65533, %137 ], [ %152, %146 ], [ 65533, %134 ]
  %155 = phi i32 [ 0, %139 ], [ 0, %137 ], [ 0, %146 ], [ %135, %134 ]
  %156 = call ptr @Perl_uvuni_to_utf8(ptr noundef nonnull %9, i64 noundef %154) #10
  %157 = ptrtoint ptr %156 to i64
  %158 = sub i64 %157, %30
  store i64 %158, ptr %8, align 8, !tbaa !49
  br label %255

159:                                              ; preds = %49
  %160 = ptrtoint ptr %43 to i64
  %161 = sub i64 %37, %160
  %162 = getelementptr i8, ptr %43, i64 %161
  br label %163

163:                                              ; preds = %159, %171
  %164 = phi ptr [ %172, %171 ], [ %43, %159 ]
  %165 = load i8, ptr %164, align 1, !tbaa !38
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !35
  %169 = and i32 %168, 16385
  %170 = icmp eq i32 %169, 16385
  br i1 %170, label %171, label %174

171:                                              ; preds = %163
  %172 = getelementptr inbounds i8, ptr %164, i64 1
  %173 = icmp eq ptr %172, %35
  br i1 %173, label %174, label %163, !llvm.loop !107

174:                                              ; preds = %163, %171
  %175 = phi ptr [ %164, %163 ], [ %162, %171 ]
  store ptr %175, ptr %5, align 8, !tbaa !34
  %176 = icmp ne ptr %43, %175
  %177 = and i1 %29, %176
  br i1 %177, label %178, label %241

178:                                              ; preds = %174
  %179 = ptrtoint ptr %175 to i64
  %180 = sub i64 %179, %160
  %181 = trunc i64 %180 to i32
  %182 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %1, ptr noundef nonnull %43, i32 noundef %181, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %178
  %185 = load i8, ptr %175, align 1, !tbaa !38
  %186 = icmp eq i8 %185, 59
  br i1 %186, label %187, label %209

187:                                              ; preds = %184
  %188 = add i32 %181, 1
  %189 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %1, ptr noundef nonnull %43, i32 noundef %188, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %190 = icmp eq ptr %189, null
  br i1 %190, label %209, label %191

191:                                              ; preds = %187, %178
  %192 = phi ptr [ %182, %178 ], [ %189, %187 ]
  %193 = load ptr, ptr %192, align 8, !tbaa !34
  %194 = getelementptr inbounds %struct.sv, ptr %193, i64 0, i32 2
  %195 = load i32, ptr %194, align 4, !tbaa !39
  %196 = and i32 %195, 2098176
  %197 = icmp eq i32 %196, 1024
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load ptr, ptr %193, align 8, !tbaa !45
  %200 = getelementptr inbounds %struct.xpv, ptr %199, i64 0, i32 2
  %201 = load i64, ptr %200, align 8, !tbaa !46
  store i64 %201, ptr %8, align 8, !tbaa !49
  %202 = getelementptr inbounds %struct.sv, ptr %193, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !38
  br label %244

204:                                              ; preds = %191
  %205 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %193, ptr noundef nonnull %8, i32 noundef 2) #10
  %206 = load ptr, ptr %192, align 8, !tbaa !34
  %207 = getelementptr inbounds %struct.sv, ptr %206, i64 0, i32 2
  %208 = load i32, ptr %207, align 4, !tbaa !39
  br label %244

209:                                              ; preds = %187, %184
  br i1 %2, label %210, label %241

210:                                              ; preds = %209, %214
  %211 = phi ptr [ %212, %214 ], [ %175, %209 ]
  %212 = getelementptr inbounds i8, ptr %211, i64 -1
  %213 = icmp ugt ptr %212, %43
  br i1 %213, label %214, label %241

214:                                              ; preds = %210
  %215 = ptrtoint ptr %212 to i64
  %216 = sub i64 %215, %160
  %217 = trunc i64 %216 to i32
  %218 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %1, ptr noundef nonnull %43, i32 noundef %217, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %219 = icmp eq ptr %218, null
  br i1 %219, label %210, label %220, !llvm.loop !108

220:                                              ; preds = %214
  %221 = load ptr, ptr %218, align 8, !tbaa !34
  %222 = getelementptr inbounds %struct.sv, ptr %221, i64 0, i32 2
  %223 = load i32, ptr %222, align 4, !tbaa !39
  %224 = and i32 %223, 2098176
  %225 = icmp eq i32 %224, 1024
  br i1 %225, label %226, label %232

226:                                              ; preds = %220
  %227 = load ptr, ptr %221, align 8, !tbaa !45
  %228 = getelementptr inbounds %struct.xpv, ptr %227, i64 0, i32 2
  %229 = load i64, ptr %228, align 8, !tbaa !46
  store i64 %229, ptr %8, align 8, !tbaa !49
  %230 = getelementptr inbounds %struct.sv, ptr %221, i64 0, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !38
  br label %237

232:                                              ; preds = %220
  %233 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %221, ptr noundef nonnull %8, i32 noundef 2) #10
  %234 = load ptr, ptr %218, align 8, !tbaa !34
  %235 = getelementptr inbounds %struct.sv, ptr %234, i64 0, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !39
  br label %237

237:                                              ; preds = %232, %226
  %238 = phi i32 [ %223, %226 ], [ %236, %232 ]
  %239 = phi ptr [ %231, %226 ], [ %233, %232 ]
  store ptr %212, ptr %5, align 8, !tbaa !34
  br label %244

240:                                              ; preds = %100
  store ptr %102, ptr %5, align 8, !tbaa !34
  br label %241

241:                                              ; preds = %210, %73, %47, %131, %116, %209, %174, %240, %57
  %242 = phi i32 [ %36, %240 ], [ 0, %174 ], [ 0, %209 ], [ %36, %116 ], [ %36, %131 ], [ %36, %57 ], [ 0, %47 ], [ %36, %73 ], [ 0, %210 ]
  %243 = load ptr, ptr %5, align 8, !tbaa !34
  br label %250

244:                                              ; preds = %198, %204, %237
  %245 = phi i32 [ %238, %237 ], [ %195, %198 ], [ %208, %204 ]
  %246 = phi ptr [ %239, %237 ], [ %203, %198 ], [ %205, %204 ]
  %247 = and i32 %245, 536870912
  %248 = icmp eq ptr %246, null
  %249 = load ptr, ptr %5, align 8, !tbaa !34
  br i1 %248, label %250, label %255

250:                                              ; preds = %241, %244
  %251 = phi ptr [ %243, %241 ], [ %249, %244 ]
  %252 = phi i32 [ %242, %241 ], [ 0, %244 ]
  %253 = load ptr, ptr %6, align 8, !tbaa !34
  %254 = icmp ult ptr %43, %251
  br i1 %254, label %335, label %342

255:                                              ; preds = %153, %129, %244
  %256 = phi ptr [ %249, %244 ], [ %117, %129 ], [ %117, %153 ]
  %257 = phi ptr [ %246, %244 ], [ %9, %129 ], [ %9, %153 ]
  %258 = phi i32 [ %247, %244 ], [ 0, %129 ], [ 1, %153 ]
  %259 = phi i32 [ 0, %244 ], [ %36, %129 ], [ %155, %153 ]
  %260 = icmp ult ptr %256, %35
  br i1 %260, label %261, label %266

261:                                              ; preds = %255
  %262 = load i8, ptr %256, align 1, !tbaa !38
  %263 = icmp eq i8 %262, 59
  br i1 %263, label %264, label %266

264:                                              ; preds = %261
  %265 = getelementptr inbounds i8, ptr %256, i64 1
  store ptr %265, ptr %5, align 8, !tbaa !34
  br label %266

266:                                              ; preds = %264, %261, %255
  %267 = phi ptr [ %265, %264 ], [ %256, %261 ], [ %256, %255 ]
  %268 = load ptr, ptr %6, align 8, !tbaa !34
  %269 = getelementptr inbounds i8, ptr %268, i64 -1
  store ptr %269, ptr %6, align 8, !tbaa !34
  %270 = load i8, ptr %267, align 1, !tbaa !38
  %271 = icmp eq i8 %270, 38
  %272 = select i1 %271, i32 %259, i32 0
  %273 = load i32, ptr %12, align 4, !tbaa !39
  %274 = and i32 %273, 536870912
  %275 = icmp eq i32 %274, 0
  %276 = icmp ne i32 %258, 0
  %277 = select i1 %275, i1 %276, i1 false
  br i1 %277, label %278, label %296

278:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %279 = load ptr, ptr %31, align 8, !tbaa !38
  %280 = ptrtoint ptr %269 to i64
  %281 = ptrtoint ptr %279 to i64
  %282 = sub i64 %280, %281
  store i64 %282, ptr %10, align 8, !tbaa !49
  %283 = call ptr @Perl_bytes_to_utf8(ptr noundef %279, ptr noundef nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  %284 = ptrtoint ptr %267 to i64
  %285 = sub i64 %37, %284
  store i64 %285, ptr %11, align 8, !tbaa !49
  %286 = call ptr @Perl_bytes_to_utf8(ptr noundef nonnull %267, ptr noundef nonnull %11) #10
  %287 = load i64, ptr %10, align 8, !tbaa !49
  call void @Perl_sv_setpvn(ptr noundef nonnull %0, ptr noundef %283, i64 noundef %287) #10
  %288 = load i64, ptr %11, align 8, !tbaa !49
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef %286, i64 noundef %288, i32 noundef 2) #10
  %289 = load i32, ptr %12, align 4, !tbaa !39
  %290 = or i32 %289, 536870912
  store i32 %290, ptr %12, align 4, !tbaa !39
  call void @Perl_safesysfree(ptr noundef %283) #10
  call void @Perl_safesysfree(ptr noundef %286) #10
  %291 = load ptr, ptr %31, align 8, !tbaa !38
  %292 = load i64, ptr %10, align 8, !tbaa !49
  %293 = getelementptr inbounds i8, ptr %291, i64 %292
  store ptr %293, ptr %6, align 8, !tbaa !34
  store ptr %293, ptr %5, align 8, !tbaa !34
  %294 = load i64, ptr %11, align 8, !tbaa !49
  %295 = getelementptr inbounds i8, ptr %293, i64 %294
  store ptr %295, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %302

296:                                              ; preds = %266
  %297 = select i1 %275, i1 true, i1 %276
  br i1 %297, label %302, label %298

298:                                              ; preds = %296
  %299 = call ptr @Perl_bytes_to_utf8(ptr noundef nonnull %257, ptr noundef nonnull %8) #10
  %300 = load ptr, ptr %6, align 8, !tbaa !34
  %301 = load ptr, ptr %5, align 8, !tbaa !34
  br label %302

302:                                              ; preds = %296, %298, %278
  %303 = phi ptr [ %293, %278 ], [ %267, %296 ], [ %301, %298 ]
  %304 = phi ptr [ %293, %278 ], [ %269, %296 ], [ %300, %298 ]
  %305 = phi ptr [ null, %278 ], [ null, %296 ], [ %299, %298 ]
  %306 = phi ptr [ %257, %278 ], [ %257, %296 ], [ %299, %298 ]
  %307 = load i64, ptr %8, align 8, !tbaa !49
  %308 = getelementptr inbounds i8, ptr %304, i64 %307
  %309 = icmp ugt ptr %308, %303
  br i1 %309, label %310, label %317

310:                                              ; preds = %302
  %311 = ptrtoint ptr %303 to i64
  %312 = ptrtoint ptr %304 to i64
  %313 = add i64 %307, %312
  %314 = sub i64 %313, %311
  call fastcc void @grow_gap(ptr noundef nonnull %0, i64 noundef %314, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #9
  %315 = load ptr, ptr %6, align 8, !tbaa !34
  %316 = load i64, ptr %8, align 8, !tbaa !49
  br label %317

317:                                              ; preds = %310, %302
  %318 = phi i64 [ %316, %310 ], [ %307, %302 ]
  %319 = phi ptr [ %315, %310 ], [ %304, %302 ]
  %320 = add i64 %318, -1
  store i64 %320, ptr %8, align 8, !tbaa !49
  %321 = icmp eq i64 %318, 0
  br i1 %321, label %331, label %322

322:                                              ; preds = %317, %322
  %323 = phi ptr [ %325, %322 ], [ %306, %317 ]
  %324 = phi ptr [ %327, %322 ], [ %319, %317 ]
  %325 = getelementptr inbounds i8, ptr %323, i64 1
  %326 = load i8, ptr %323, align 1, !tbaa !38
  %327 = getelementptr inbounds i8, ptr %324, i64 1
  store ptr %327, ptr %6, align 8, !tbaa !34
  store i8 %326, ptr %324, align 1, !tbaa !38
  %328 = load i64, ptr %8, align 8, !tbaa !49
  %329 = add i64 %328, -1
  store i64 %329, ptr %8, align 8, !tbaa !49
  %330 = icmp eq i64 %328, 0
  br i1 %330, label %331, label %322, !llvm.loop !109

331:                                              ; preds = %322, %317
  %332 = phi ptr [ %319, %317 ], [ %327, %322 ]
  %333 = icmp eq ptr %305, null
  br i1 %333, label %342, label %334

334:                                              ; preds = %331
  call void @Perl_safesysfree(ptr noundef nonnull %305) #10
  br label %342

335:                                              ; preds = %250, %335
  %336 = phi ptr [ %338, %335 ], [ %43, %250 ]
  %337 = phi ptr [ %340, %335 ], [ %253, %250 ]
  %338 = getelementptr inbounds i8, ptr %336, i64 1
  %339 = load i8, ptr %336, align 1, !tbaa !38
  %340 = getelementptr inbounds i8, ptr %337, i64 1
  store ptr %340, ptr %6, align 8, !tbaa !34
  store i8 %339, ptr %337, align 1, !tbaa !38
  %341 = icmp ult ptr %338, %251
  br i1 %341, label %335, label %342, !llvm.loop !110

342:                                              ; preds = %335, %250, %331, %334
  %343 = phi ptr [ %332, %334 ], [ %332, %331 ], [ %253, %250 ], [ %340, %335 ]
  %344 = phi i32 [ %272, %334 ], [ %272, %331 ], [ %252, %250 ], [ %252, %335 ]
  %345 = load ptr, ptr %7, align 8, !tbaa !34
  %346 = load ptr, ptr %5, align 8, !tbaa !34
  br label %32, !llvm.loop !105

347:                                              ; preds = %38
  store i8 0, ptr %39, align 1, !tbaa !38
  %348 = load ptr, ptr %31, align 8, !tbaa !38
  %349 = ptrtoint ptr %39 to i64
  %350 = ptrtoint ptr %348 to i64
  %351 = sub i64 %349, %350
  %352 = load ptr, ptr %0, align 8, !tbaa !45
  %353 = getelementptr inbounds %struct.xpv, ptr %352, i64 0, i32 2
  store i64 %351, ptr %353, align 8, !tbaa !46
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
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !32
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !32
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
define internal fastcc void @grow_gap(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %2, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = ptrtoint ptr %8 to i64
  %10 = load ptr, ptr %3, align 8, !tbaa !34
  %11 = load ptr, ptr %4, align 8, !tbaa !34
  %12 = ptrtoint ptr %11 to i64
  %13 = sub i64 %12, %9
  %14 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !39
  %16 = and i32 %15, 268435456
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = add i64 %1, 1
  %20 = add i64 %19, %13
  br label %28

21:                                               ; preds = %5
  %22 = load ptr, ptr %0, align 8, !tbaa !45
  %23 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !38
  %25 = add i64 %1, 1
  %26 = add i64 %25, %13
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18, %21
  %29 = phi i64 [ %20, %18 ], [ %26, %21 ]
  %30 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %0, i64 noundef %29) #10
  %31 = load ptr, ptr %7, align 8, !tbaa !38
  br label %32

32:                                               ; preds = %21, %28
  %33 = phi ptr [ %8, %21 ], [ %31, %28 ]
  %34 = ptrtoint ptr %10 to i64
  %35 = sub i64 %34, %9
  %36 = ptrtoint ptr %6 to i64
  %37 = sub i64 %36, %9
  %38 = getelementptr inbounds i8, ptr %33, i64 %37
  store ptr %38, ptr %2, align 8, !tbaa !34
  %39 = load ptr, ptr %7, align 8, !tbaa !38
  %40 = getelementptr inbounds i8, ptr %39, i64 %35
  store ptr %40, ptr %3, align 8, !tbaa !34
  %41 = load ptr, ptr %7, align 8, !tbaa !38
  %42 = getelementptr inbounds i8, ptr %41, i64 %13
  store ptr %42, ptr %4, align 8, !tbaa !34
  %43 = load ptr, ptr %3, align 8, !tbaa !34
  %44 = getelementptr inbounds i8, ptr %43, i64 %1
  %45 = ptrtoint ptr %42 to i64
  %46 = ptrtoint ptr %43 to i64
  %47 = sub i64 %45, %46
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %44, ptr align 1 %43, i64 %47, i1 false)
  %48 = load ptr, ptr %3, align 8, !tbaa !34
  %49 = getelementptr inbounds i8, ptr %48, i64 %1
  store ptr %49, ptr %3, align 8, !tbaa !34
  %50 = load ptr, ptr %4, align 8, !tbaa !34
  %51 = getelementptr inbounds i8, ptr %50, i64 %1
  store ptr %51, ptr %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @Perl_av_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @marked_section_update(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 18
  store i32 0, ptr %5, align 8, !tbaa !77
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
  %19 = load ptr, ptr %16, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !38
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
  %33 = load ptr, ptr %30, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !39
  %36 = and i32 %35, 2098176
  %37 = icmp eq i32 %36, 1024
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct.xpv, ptr %39, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !46
  store i64 %41, ptr %2, align 8, !tbaa !49
  %42 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !38
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
  %62 = load i32, ptr %5, align 8, !tbaa !77
  %63 = icmp ult i32 %62, %61
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 %61, ptr %5, align 8, !tbaa !77
  br label %65

65:                                               ; preds = %64, %60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %66

66:                                               ; preds = %65, %28
  %67 = add nuw nsw i64 %29, 1
  %68 = icmp eq i64 %67, %27
  br i1 %68, label %69, label %28, !llvm.loop !111

69:                                               ; preds = %66, %18, %14
  %70 = add nuw nsw i64 %15, 1
  %71 = icmp eq i64 %70, %13
  br i1 %71, label %72, label %14, !llvm.loop !112

72:                                               ; preds = %69, %7, %1
  %73 = load i32, ptr %5, align 8, !tbaa !77
  %74 = icmp eq i32 %73, 3
  %75 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %76 = zext i1 %74 to i8
  store i8 %76, ptr %75, align 8, !tbaa !72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @parse_start(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = ptrtoint ptr %2 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = alloca [16 x %struct.token_pos], align 16
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 16, ptr %9, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  store ptr %8, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %12 = load i8, ptr %11, align 4, !tbaa !78, !range !43, !noundef !44
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 22
  %16 = load i8, ptr %15, align 2, !tbaa !113, !range !43, !noundef !44
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
  %31 = load i8, ptr %30, align 1, !tbaa !38
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !38
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
  %42 = load i8, ptr %26, align 2, !tbaa !114, !range !43, !noundef !44
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41, %40
  %45 = getelementptr inbounds i8, ptr %30, i64 1
  %46 = icmp eq ptr %45, %2
  br i1 %46, label %372, label %47

47:                                               ; preds = %44
  %48 = load i8, ptr %45, align 1, !tbaa !38
  %49 = icmp eq i8 %48, 62
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %41, %38
  %51 = getelementptr inbounds i8, ptr %30, i64 1
  %52 = icmp eq ptr %51, %2
  br i1 %52, label %53, label %29, !llvm.loop !115

53:                                               ; preds = %29, %47, %50, %19
  %54 = phi ptr [ %23, %19 ], [ %28, %50 ], [ %30, %47 ], [ %30, %29 ]
  %55 = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %55, ptr %8, align 16, !tbaa !62
  %56 = getelementptr inbounds %struct.token_pos, ptr %8, i64 0, i32 1
  store ptr %54, ptr %56, align 8, !tbaa !64
  br label %57

57:                                               ; preds = %57, %53
  %58 = phi ptr [ %54, %53 ], [ %65, %57 ]
  %59 = load i8, ptr %58, align 1, !tbaa !38
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !38
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  %65 = getelementptr inbounds i8, ptr %58, i64 1
  br i1 %64, label %66, label %57, !llvm.loop !116

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
  %74 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 32
  br label %75

75:                                               ; preds = %72, %279
  %76 = phi ptr [ %8, %72 ], [ %282, %279 ]
  %77 = phi i8 [ %59, %72 ], [ %281, %279 ]
  %78 = phi ptr [ %58, %72 ], [ %284, %279 ]
  %79 = phi i32 [ 1, %72 ], [ %283, %279 ]
  %80 = ptrtoint ptr %78 to i64
  %81 = icmp eq i8 %77, 47
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load i8, ptr %11, align 4, !tbaa !78, !range !43, !noundef !44
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i8, ptr %73, align 2, !tbaa !114, !range !43, !noundef !44
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85, %82
  %89 = getelementptr inbounds i8, ptr %78, i64 1
  %90 = icmp eq ptr %89, %2
  br i1 %90, label %372, label %91

91:                                               ; preds = %88
  %92 = load i8, ptr %89, align 1, !tbaa !38
  %93 = icmp eq i8 %92, 62
  br i1 %93, label %288, label %94

94:                                               ; preds = %91, %85, %75
  %95 = getelementptr inbounds i8, ptr %78, i64 1
  %96 = icmp ult ptr %95, %2
  br i1 %96, label %97, label %128

97:                                               ; preds = %94
  %98 = getelementptr i8, ptr %78, i64 %6
  %99 = sub i64 0, %80
  %100 = getelementptr i8, ptr %98, i64 %99
  br label %101

101:                                              ; preds = %97, %125
  %102 = phi ptr [ %126, %125 ], [ %95, %97 ]
  %103 = phi ptr [ %102, %125 ], [ %78, %97 ]
  %104 = load i8, ptr %102, align 1, !tbaa !38
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !38
  %108 = zext i8 %107 to i32
  %109 = and i32 %22, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %101
  %112 = icmp eq i8 %104, 47
  br i1 %112, label %113, label %125

113:                                              ; preds = %111
  %114 = load i8, ptr %11, align 4, !tbaa !78, !range !43, !noundef !44
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i8, ptr %73, align 2, !tbaa !114, !range !43, !noundef !44
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %116, %113
  %120 = getelementptr inbounds i8, ptr %103, i64 2
  %121 = icmp eq ptr %120, %2
  br i1 %121, label %372, label %122

122:                                              ; preds = %119
  %123 = load i8, ptr %120, align 1, !tbaa !38
  %124 = icmp eq i8 %123, 62
  br i1 %124, label %128, label %125

125:                                              ; preds = %122, %116, %111
  %126 = getelementptr inbounds i8, ptr %102, i64 1
  %127 = icmp eq ptr %126, %100
  br i1 %127, label %128, label %101, !llvm.loop !117

128:                                              ; preds = %101, %122, %125, %94
  %129 = phi ptr [ %95, %94 ], [ %100, %125 ], [ %102, %122 ], [ %102, %101 ]
  %130 = ptrtoint ptr %129 to i64
  %131 = icmp eq ptr %129, %2
  br i1 %131, label %372, label %132

132:                                              ; preds = %128
  %133 = add nsw i32 %79, 1
  %134 = load i32, ptr %9, align 4, !tbaa !35
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = icmp ne ptr %76, %8
  call fastcc void @tokens_grow(ptr noundef nonnull %10, ptr noundef nonnull %9, i1 noundef zeroext %137) #9
  %138 = load ptr, ptr %10, align 8, !tbaa !34
  br label %139

139:                                              ; preds = %136, %132
  %140 = phi ptr [ %138, %136 ], [ %76, %132 ]
  %141 = sext i32 %79 to i64
  %142 = getelementptr inbounds %struct.token_pos, ptr %140, i64 %141
  store ptr %78, ptr %142, align 8, !tbaa !62
  %143 = getelementptr inbounds %struct.token_pos, ptr %140, i64 %141, i32 1
  store ptr %129, ptr %143, align 8, !tbaa !64
  br label %144

144:                                              ; preds = %144, %139
  %145 = phi ptr [ %129, %139 ], [ %152, %144 ]
  %146 = load i8, ptr %145, align 1, !tbaa !38
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !38
  %150 = and i8 %149, 1
  %151 = icmp eq i8 %150, 0
  %152 = getelementptr inbounds i8, ptr %145, i64 1
  br i1 %151, label %153, label %144, !llvm.loop !118

153:                                              ; preds = %144
  %154 = icmp eq ptr %145, %2
  br i1 %154, label %372, label %155

155:                                              ; preds = %153
  %156 = icmp eq i8 %146, 61
  br i1 %156, label %157, label %265

157:                                              ; preds = %155, %157
  %158 = phi ptr [ %159, %157 ], [ %145, %155 ]
  %159 = getelementptr inbounds i8, ptr %158, i64 1
  %160 = load i8, ptr %159, align 1, !tbaa !38
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !38
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %157, !llvm.loop !119

166:                                              ; preds = %157
  %167 = icmp eq ptr %159, %2
  br i1 %167, label %372, label %168

168:                                              ; preds = %166
  switch i8 %160, label %205 [
    i8 62, label %169
    i8 34, label %183
    i8 39, label %183
    i8 96, label %180
  ]

169:                                              ; preds = %168
  %170 = add nsw i32 %79, 2
  %171 = load i32, ptr %9, align 4, !tbaa !35
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = icmp ne ptr %140, %8
  call fastcc void @tokens_grow(ptr noundef nonnull %10, ptr noundef nonnull %9, i1 noundef zeroext %174) #9
  br label %175

175:                                              ; preds = %173, %169
  %176 = load ptr, ptr %10, align 8, !tbaa !34
  %177 = sext i32 %133 to i64
  %178 = getelementptr inbounds %struct.token_pos, ptr %176, i64 %177
  store ptr %159, ptr %178, align 8, !tbaa !62
  %179 = getelementptr inbounds %struct.token_pos, ptr %176, i64 %177, i32 1
  store ptr %159, ptr %179, align 8, !tbaa !64
  br label %288

180:                                              ; preds = %168
  %181 = load i8, ptr %74, align 4, !tbaa !88, !range !43, !noundef !44
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %205, label %183

183:                                              ; preds = %168, %168, %180
  br label %184

184:                                              ; preds = %183, %188
  %185 = phi ptr [ %186, %188 ], [ %159, %183 ]
  %186 = getelementptr inbounds i8, ptr %185, i64 1
  %187 = icmp ult ptr %186, %2
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i8, ptr %186, align 1, !tbaa !38
  %190 = icmp eq i8 %189, %160
  br i1 %190, label %191, label %184, !llvm.loop !120

191:                                              ; preds = %184, %188
  %192 = icmp eq ptr %186, %2
  br i1 %192, label %372, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds i8, ptr %185, i64 2
  %195 = add nsw i32 %79, 2
  %196 = load i32, ptr %9, align 4, !tbaa !35
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = icmp ne ptr %140, %8
  call fastcc void @tokens_grow(ptr noundef nonnull %10, ptr noundef nonnull %9, i1 noundef zeroext %199) #9
  br label %200

200:                                              ; preds = %193, %198
  %201 = load ptr, ptr %10, align 8, !tbaa !34
  %202 = sext i32 %133 to i64
  %203 = getelementptr inbounds %struct.token_pos, ptr %201, i64 %202
  store ptr %159, ptr %203, align 8, !tbaa !62
  %204 = getelementptr inbounds %struct.token_pos, ptr %201, i64 %202, i32 1
  store ptr %194, ptr %204, align 8, !tbaa !64
  br label %250

205:                                              ; preds = %168, %180
  %206 = icmp ult ptr %159, %2
  br i1 %206, label %207, label %236

207:                                              ; preds = %205
  %208 = getelementptr i8, ptr %129, i64 %6
  %209 = sub i64 0, %130
  %210 = getelementptr i8, ptr %208, i64 %209
  br label %211

211:                                              ; preds = %207, %233
  %212 = phi ptr [ %234, %233 ], [ %159, %207 ]
  %213 = load i8, ptr %212, align 1, !tbaa !38
  %214 = zext i8 %213 to i64
  %215 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !38
  %217 = and i8 %216, 8
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %236, label %219

219:                                              ; preds = %211
  %220 = icmp eq i8 %213, 47
  br i1 %220, label %221, label %233

221:                                              ; preds = %219
  %222 = load i8, ptr %11, align 4, !tbaa !78, !range !43, !noundef !44
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i8, ptr %73, align 2, !tbaa !114, !range !43, !noundef !44
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %224, %221
  %228 = getelementptr inbounds i8, ptr %212, i64 1
  %229 = icmp eq ptr %228, %2
  br i1 %229, label %372, label %230

230:                                              ; preds = %227
  %231 = load i8, ptr %228, align 1, !tbaa !38
  %232 = icmp eq i8 %231, 62
  br i1 %232, label %236, label %233

233:                                              ; preds = %230, %224, %219
  %234 = getelementptr inbounds i8, ptr %212, i64 1
  %235 = icmp ult ptr %234, %2
  br i1 %235, label %211, label %236, !llvm.loop !121

236:                                              ; preds = %211, %230, %233, %205
  %237 = phi ptr [ %159, %205 ], [ %210, %233 ], [ %212, %230 ], [ %212, %211 ]
  %238 = icmp eq ptr %237, %2
  br i1 %238, label %372, label %239

239:                                              ; preds = %236
  %240 = add nsw i32 %79, 2
  %241 = load i32, ptr %9, align 4, !tbaa !35
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = icmp ne ptr %140, %8
  call fastcc void @tokens_grow(ptr noundef nonnull %10, ptr noundef nonnull %9, i1 noundef zeroext %244) #9
  br label %245

245:                                              ; preds = %239, %243
  %246 = load ptr, ptr %10, align 8, !tbaa !34
  %247 = sext i32 %133 to i64
  %248 = getelementptr inbounds %struct.token_pos, ptr %246, i64 %247
  store ptr %159, ptr %248, align 8, !tbaa !62
  %249 = getelementptr inbounds %struct.token_pos, ptr %246, i64 %247, i32 1
  store ptr %237, ptr %249, align 8, !tbaa !64
  br label %250

250:                                              ; preds = %245, %200
  %251 = phi ptr [ %201, %200 ], [ %246, %245 ]
  %252 = phi i32 [ %195, %200 ], [ %240, %245 ]
  %253 = phi ptr [ %194, %200 ], [ %237, %245 ]
  br label %254

254:                                              ; preds = %254, %250
  %255 = phi ptr [ %253, %250 ], [ %262, %254 ]
  %256 = load i8, ptr %255, align 1, !tbaa !38
  %257 = zext i8 %256 to i64
  %258 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !38
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  %262 = getelementptr inbounds i8, ptr %255, i64 1
  br i1 %261, label %263, label %254, !llvm.loop !122

263:                                              ; preds = %254
  %264 = icmp eq ptr %255, %2
  br i1 %264, label %372, label %279

265:                                              ; preds = %155
  %266 = add nsw i32 %79, 2
  %267 = load i32, ptr %9, align 4, !tbaa !35
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = icmp ne ptr %140, %8
  call fastcc void @tokens_grow(ptr noundef nonnull %10, ptr noundef nonnull %9, i1 noundef zeroext %270) #9
  br label %271

271:                                              ; preds = %269, %265
  %272 = load ptr, ptr %10, align 8, !tbaa !34
  %273 = sext i32 %133 to i64
  %274 = getelementptr inbounds %struct.token_pos, ptr %272, i64 %273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %274, i8 0, i64 16, i1 false)
  %275 = load i8, ptr %145, align 1, !tbaa !38
  %276 = zext i8 %275 to i64
  %277 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !38
  br label %279

279:                                              ; preds = %263, %271
  %280 = phi i8 [ %278, %271 ], [ %259, %263 ]
  %281 = phi i8 [ %275, %271 ], [ %256, %263 ]
  %282 = phi ptr [ %272, %271 ], [ %251, %263 ]
  %283 = phi i32 [ %266, %271 ], [ %252, %263 ]
  %284 = phi ptr [ %145, %271 ], [ %255, %263 ]
  %285 = zext i8 %280 to i32
  %286 = and i32 %21, %285
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %75

288:                                              ; preds = %279, %91, %68, %175
  %289 = phi ptr [ %176, %175 ], [ %8, %68 ], [ %282, %279 ], [ %76, %91 ]
  %290 = phi i32 [ %170, %175 ], [ 1, %68 ], [ %283, %279 ], [ %79, %91 ]
  %291 = phi ptr [ %159, %175 ], [ %58, %68 ], [ %284, %279 ], [ %78, %91 ]
  %292 = load i8, ptr %11, align 4, !tbaa !78, !range !43, !noundef !44
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 30
  %296 = load i8, ptr %295, align 2, !tbaa !114, !range !43, !noundef !44
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %303, label %298

298:                                              ; preds = %294, %288
  %299 = load i8, ptr %291, align 1, !tbaa !38
  switch i8 %299, label %370 [
    i8 47, label %300
    i8 62, label %313
  ]

300:                                              ; preds = %298
  %301 = getelementptr inbounds i8, ptr %291, i64 1
  %302 = icmp eq ptr %301, %2
  br i1 %302, label %372, label %306

303:                                              ; preds = %294
  %304 = load i8, ptr %291, align 1, !tbaa !38
  %305 = icmp eq i8 %304, 62
  br i1 %305, label %313, label %370

306:                                              ; preds = %300
  %307 = load i8, ptr %301, align 1, !tbaa !38
  %308 = icmp eq i8 %307, 62
  br i1 %308, label %309, label %370

309:                                              ; preds = %306
  %310 = getelementptr inbounds i8, ptr %291, i64 2
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %1, ptr noundef nonnull %310, i32 noundef %3, ptr noundef %289, i32 noundef %290, ptr noundef %4) #9
  %311 = load ptr, ptr %10, align 8, !tbaa !34
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %310, ptr noundef nonnull %310, i32 noundef %3, ptr noundef %311, i32 noundef 1, ptr noundef %4) #9
  %312 = load ptr, ptr %10, align 8, !tbaa !34
  br label %366

313:                                              ; preds = %303, %298
  %314 = getelementptr inbounds i8, ptr %291, i64 1
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %1, ptr noundef nonnull %314, i32 noundef %3, ptr noundef %289, i32 noundef %290, ptr noundef %4) #9
  %315 = load i8, ptr %11, align 4, !tbaa !78, !range !43, !noundef !44
  %316 = icmp eq i8 %315, 0
  %317 = load ptr, ptr %10, align 8, !tbaa !34
  br i1 %316, label %318, label %366

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.token_pos, ptr %317, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !64
  %321 = load ptr, ptr %317, align 8, !tbaa !62
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
  %332 = load ptr, ptr %331, align 8, !tbaa !123
  br label %333

333:                                              ; preds = %350, %330
  %334 = phi ptr [ %55, %330 ], [ %351, %350 ]
  %335 = phi ptr [ %332, %330 ], [ %352, %350 ]
  %336 = phi i32 [ %325, %330 ], [ %353, %350 ]
  %337 = load i8, ptr %334, align 1, !tbaa !38
  %338 = zext i8 %337 to i64
  %339 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !35
  %341 = and i32 %340, 16400
  %342 = icmp eq i32 %341, 16400
  %343 = add i8 %337, 32
  %344 = zext i8 %343 to i32
  %345 = sext i8 %337 to i32
  %346 = select i1 %342, i32 %344, i32 %345
  %347 = load i8, ptr %335, align 1, !tbaa !38
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %346, %348
  br i1 %349, label %350, label %361

350:                                              ; preds = %333
  %351 = getelementptr inbounds i8, ptr %334, i64 1
  %352 = getelementptr inbounds i8, ptr %335, i64 1
  %353 = add nsw i32 %336, -1
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %333, !llvm.loop !125

355:                                              ; preds = %350
  %356 = trunc i64 %327 to i32
  %357 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 8
  store ptr %332, ptr %357, align 8, !tbaa !61
  %358 = icmp ult i32 %356, 5
  %359 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %360 = zext i1 %358 to i8
  store i8 %360, ptr %359, align 8, !tbaa !72
  br label %366

361:                                              ; preds = %333, %326
  %362 = add nuw nsw i64 %327, 1
  %363 = getelementptr inbounds [8 x %struct.literal_tag], ptr @literal_mode_elem, i64 0, i64 %362
  %364 = load i32, ptr %363, align 8, !tbaa !126
  %365 = icmp eq i64 %362, 7
  br i1 %365, label %366, label %326, !llvm.loop !127

366:                                              ; preds = %361, %355, %309, %313
  %367 = phi ptr [ %317, %355 ], [ %312, %309 ], [ %317, %313 ], [ %317, %361 ]
  %368 = phi ptr [ %314, %355 ], [ %310, %309 ], [ %314, %313 ], [ %314, %361 ]
  %369 = icmp eq ptr %367, %8
  br i1 %369, label %378, label %375

370:                                              ; preds = %306, %298, %303
  %371 = icmp eq ptr %289, %8
  br i1 %371, label %378, label %375

372:                                              ; preds = %44, %263, %236, %191, %166, %153, %128, %88, %119, %227, %66, %300
  %373 = load ptr, ptr %10, align 8, !tbaa !34
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
define internal fastcc noundef ptr @parse_end(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = alloca %struct.token_pos, align 8
  %9 = alloca %struct.token_pos, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 2
  %11 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %12 = load i8, ptr %11, align 4, !tbaa !78, !range !43, !noundef !44
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 22
  %16 = load i8, ptr %15, align 2, !tbaa !113, !range !43, !noundef !44
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 8, i32 2
  %19 = select i1 %17, i32 8, i32 4
  br label %20

20:                                               ; preds = %14, %5
  %21 = phi i32 [ 2, %5 ], [ %18, %14 ]
  %22 = phi i32 [ 4, %5 ], [ %19, %14 ]
  %23 = load i8, ptr %10, align 1, !tbaa !38
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !38
  %27 = zext i8 %26 to i32
  %28 = and i32 %21, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %76, label %30

30:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  store ptr %10, ptr %8, align 8, !tbaa !62
  %31 = getelementptr inbounds i8, ptr %1, i64 3
  %32 = icmp ult ptr %31, %2
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = sub i64 %7, %6
  %35 = getelementptr i8, ptr %1, i64 %34
  br label %36

36:                                               ; preds = %33, %45
  %37 = phi ptr [ %46, %45 ], [ %31, %33 ]
  %38 = load i8, ptr %37, align 1, !tbaa !38
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !38
  %42 = zext i8 %41 to i32
  %43 = and i32 %22, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds i8, ptr %37, i64 1
  %47 = icmp eq ptr %46, %2
  br i1 %47, label %48, label %36, !llvm.loop !128

48:                                               ; preds = %36, %45, %30
  %49 = phi ptr [ %31, %30 ], [ %35, %45 ], [ %37, %36 ]
  %50 = getelementptr inbounds %struct.token_pos, ptr %8, i64 0, i32 1
  store ptr %49, ptr %50, align 8, !tbaa !64
  %51 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 23
  %52 = load i8, ptr %51, align 1, !tbaa !129, !range !43, !noundef !44
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %48, %54
  %55 = phi ptr [ %62, %54 ], [ %49, %48 ]
  %56 = load i8, ptr %55, align 1, !tbaa !38
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !38
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  %62 = getelementptr inbounds i8, ptr %55, i64 1
  br i1 %61, label %65, label %54, !llvm.loop !130

63:                                               ; preds = %48
  %64 = tail call fastcc ptr @skip_until_gt(ptr noundef nonnull %49, ptr noundef %2) #9
  br label %65

65:                                               ; preds = %54, %63
  %66 = phi ptr [ %64, %63 ], [ %55, %54 ]
  %67 = icmp ult ptr %66, %2
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i8, ptr %66, align 1, !tbaa !38
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
  %78 = load i8, ptr %77, align 1, !tbaa !67, !range !43, !noundef !44
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = tail call fastcc ptr @skip_until_gt(ptr noundef nonnull %10, ptr noundef %2) #9
  %82 = icmp ult ptr %81, %2
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  store ptr %10, ptr %9, align 8, !tbaa !62
  %84 = getelementptr inbounds %struct.token_pos, ptr %9, i64 0, i32 1
  store ptr %81, ptr %84, align 8, !tbaa !64
  %85 = getelementptr inbounds i8, ptr %81, i64 1
  call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %85, i32 noundef %3, ptr noundef nonnull %9, i32 noundef 1, ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  br label %86

86:                                               ; preds = %76, %75, %73, %80, %83
  %87 = phi ptr [ %85, %83 ], [ %1, %80 ], [ %74, %73 ], [ null, %75 ], [ null, %76 ]
  ret ptr %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @parse_decl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = alloca %struct.token_pos, align 8
  %9 = alloca [8 x %struct.token_pos], align 16
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca %struct.token_pos, align 8
  %13 = getelementptr inbounds i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !38
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
  %19 = load i8, ptr %16, align 1, !tbaa !38
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
  store ptr %13, ptr %8, align 8, !tbaa !62
  %30 = getelementptr inbounds %struct.token_pos, ptr %8, i64 0, i32 1
  store ptr %13, ptr %30, align 8, !tbaa !64
  %31 = getelementptr inbounds i8, ptr %1, i64 3
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %31, i32 noundef %3, ptr noundef nonnull %8, i32 noundef 1, ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %259

32:                                               ; preds = %5
  %33 = zext i8 %14 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !35
  %36 = and i32 %35, 16388
  %37 = icmp eq i32 %36, 16388
  br i1 %37, label %38, label %238

38:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 8, ptr %10, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  store ptr %9, ptr %11, align 8, !tbaa !34
  %39 = getelementptr inbounds i8, ptr %1, i64 3
  %40 = icmp ult ptr %39, %2
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = sub i64 %7, %6
  %43 = getelementptr i8, ptr %1, i64 %42
  br label %44

44:                                               ; preds = %41, %52
  %45 = phi ptr [ %53, %52 ], [ %39, %41 ]
  %46 = load i8, ptr %45, align 1, !tbaa !38
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !38
  %50 = and i8 %49, 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds i8, ptr %45, i64 1
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %55, label %44, !llvm.loop !131

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
  %64 = load i8, ptr %63, align 4, !tbaa !78, !range !43, !noundef !44
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %68 = load i8, ptr %67, align 1, !tbaa !79, !range !43, !noundef !44
  %69 = xor i8 %68, 1
  %70 = zext nneg i8 %69 to i32
  br label %71

71:                                               ; preds = %66, %62
  %72 = phi i32 [ 0, %62 ], [ %70, %66 ]
  %73 = call fastcc i32 @strnEQx(ptr noundef nonnull %13, ptr noundef nonnull @.str.88, i64 noundef 7, i32 noundef %72) #9, !range !132
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %236, label %88

75:                                               ; preds = %58
  %76 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %77 = load i8, ptr %76, align 4, !tbaa !78, !range !43, !noundef !44
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %81 = load i8, ptr %80, align 1, !tbaa !79, !range !43, !noundef !44
  %82 = xor i8 %81, 1
  %83 = zext nneg i8 %82 to i32
  br label %84

84:                                               ; preds = %79, %75
  %85 = phi i32 [ 0, %75 ], [ %83, %79 ]
  %86 = call fastcc i32 @strnEQx(ptr noundef nonnull %13, ptr noundef nonnull @.str.89, i64 noundef 6, i32 noundef %85) #9, !range !132
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %236, label %88

88:                                               ; preds = %84, %71
  store ptr %13, ptr %9, align 16, !tbaa !62
  %89 = getelementptr inbounds %struct.token_pos, ptr %9, i64 0, i32 1
  store ptr %56, ptr %89, align 8, !tbaa !64
  %90 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 32
  br label %91

91:                                               ; preds = %216, %88
  %92 = phi ptr [ %9, %88 ], [ %217, %216 ]
  %93 = phi i32 [ 1, %88 ], [ %218, %216 ]
  %94 = phi ptr [ %56, %88 ], [ %219, %216 ]
  %95 = icmp ult ptr %94, %2
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = ptrtoint ptr %94 to i64
  %98 = getelementptr i8, ptr %94, i64 %7
  %99 = sub i64 0, %97
  %100 = getelementptr i8, ptr %98, i64 %99
  br label %101

101:                                              ; preds = %96, %109
  %102 = phi ptr [ %110, %109 ], [ %94, %96 ]
  %103 = load i8, ptr %102, align 1, !tbaa !38
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !38
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %101
  %110 = getelementptr inbounds i8, ptr %102, i64 1
  %111 = icmp eq ptr %110, %100
  br i1 %111, label %112, label %101, !llvm.loop !133

112:                                              ; preds = %101, %109, %91
  %113 = phi ptr [ %94, %91 ], [ %100, %109 ], [ %102, %101 ]
  %114 = icmp eq ptr %113, %2
  br i1 %114, label %228, label %115

115:                                              ; preds = %112
  %116 = load i8, ptr %113, align 1, !tbaa !38
  switch i8 %116, label %117 [
    i8 34, label %121
    i8 39, label %121
    i8 96, label %118
    i8 45, label %145
    i8 62, label %220
  ]

117:                                              ; preds = %118, %115
  br label %190

118:                                              ; preds = %115
  %119 = load i8, ptr %90, align 4, !tbaa !88, !range !43, !noundef !44
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %117, label %121

121:                                              ; preds = %115, %115, %118
  br label %122

122:                                              ; preds = %121, %126
  %123 = phi ptr [ %124, %126 ], [ %113, %121 ]
  %124 = getelementptr inbounds i8, ptr %123, i64 1
  %125 = icmp ult ptr %124, %2
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i8, ptr %124, align 1, !tbaa !38
  %128 = icmp eq i8 %127, %116
  br i1 %128, label %129, label %122, !llvm.loop !134

129:                                              ; preds = %122, %126
  %130 = icmp eq ptr %124, %2
  br i1 %130, label %228, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds i8, ptr %123, i64 2
  %133 = add nsw i32 %93, 1
  %134 = load i32, ptr %10, align 4, !tbaa !35
  %135 = icmp eq i32 %133, %134
  %136 = load ptr, ptr %11, align 8, !tbaa !34
  br i1 %135, label %137, label %140

137:                                              ; preds = %131
  %138 = icmp ne ptr %136, %9
  call fastcc void @tokens_grow(ptr noundef nonnull %11, ptr noundef nonnull %10, i1 noundef zeroext %138) #9
  %139 = load ptr, ptr %11, align 8, !tbaa !34
  br label %140

140:                                              ; preds = %131, %137
  %141 = phi ptr [ %136, %131 ], [ %139, %137 ]
  %142 = sext i32 %93 to i64
  %143 = getelementptr inbounds %struct.token_pos, ptr %141, i64 %142
  store ptr %113, ptr %143, align 8, !tbaa !62
  %144 = getelementptr inbounds %struct.token_pos, ptr %141, i64 %142, i32 1
  store ptr %132, ptr %144, align 8, !tbaa !64
  br label %216

145:                                              ; preds = %115
  %146 = getelementptr inbounds i8, ptr %113, i64 1
  %147 = icmp eq ptr %146, %2
  br i1 %147, label %228, label %148

148:                                              ; preds = %145
  %149 = load i8, ptr %146, align 1, !tbaa !38
  %150 = icmp eq i8 %149, 45
  br i1 %150, label %151, label %224

151:                                              ; preds = %148
  %152 = getelementptr inbounds i8, ptr %113, i64 2
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
  %163 = load i8, ptr %162, align 1, !tbaa !38
  %164 = icmp eq i8 %163, 45
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds i8, ptr %162, i64 1
  %167 = icmp eq ptr %166, %160
  br i1 %167, label %168, label %161, !llvm.loop !135

168:                                              ; preds = %161, %165, %153
  %169 = phi ptr [ %154, %153 ], [ %160, %165 ], [ %162, %161 ]
  %170 = icmp eq ptr %169, %2
  br i1 %170, label %228, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds i8, ptr %169, i64 1
  %173 = icmp eq ptr %172, %2
  br i1 %173, label %228, label %174

174:                                              ; preds = %171
  %175 = load i8, ptr %172, align 1, !tbaa !38
  %176 = icmp eq i8 %175, 45
  br i1 %176, label %177, label %153

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, ptr %169, i64 2
  %179 = add nsw i32 %93, 1
  %180 = load i32, ptr %10, align 4, !tbaa !35
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = icmp ne ptr %92, %9
  call fastcc void @tokens_grow(ptr noundef nonnull %11, ptr noundef nonnull %10, i1 noundef zeroext %183) #9
  %184 = load ptr, ptr %11, align 8, !tbaa !34
  br label %185

185:                                              ; preds = %177, %182
  %186 = phi ptr [ %92, %177 ], [ %184, %182 ]
  %187 = sext i32 %93 to i64
  %188 = getelementptr inbounds %struct.token_pos, ptr %186, i64 %187
  store ptr %113, ptr %188, align 8, !tbaa !62
  %189 = getelementptr inbounds %struct.token_pos, ptr %186, i64 %187, i32 1
  store ptr %178, ptr %189, align 8, !tbaa !64
  br label %216

190:                                              ; preds = %117, %194
  %191 = phi ptr [ %192, %194 ], [ %113, %117 ]
  %192 = getelementptr inbounds i8, ptr %191, i64 1
  %193 = icmp ult ptr %192, %2
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load i8, ptr %192, align 1, !tbaa !38
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !38
  %199 = and i8 %198, 8
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %190, !llvm.loop !136

201:                                              ; preds = %190, %194
  %202 = icmp eq ptr %192, %2
  br i1 %202, label %228, label %203

203:                                              ; preds = %201
  %204 = add nsw i32 %93, 1
  %205 = load i32, ptr %10, align 4, !tbaa !35
  %206 = icmp eq i32 %204, %205
  %207 = load ptr, ptr %11, align 8, !tbaa !34
  br i1 %206, label %208, label %211

208:                                              ; preds = %203
  %209 = icmp ne ptr %207, %9
  call fastcc void @tokens_grow(ptr noundef nonnull %11, ptr noundef nonnull %10, i1 noundef zeroext %209) #9
  %210 = load ptr, ptr %11, align 8, !tbaa !34
  br label %211

211:                                              ; preds = %203, %208
  %212 = phi ptr [ %207, %203 ], [ %210, %208 ]
  %213 = sext i32 %93 to i64
  %214 = getelementptr inbounds %struct.token_pos, ptr %212, i64 %213
  store ptr %113, ptr %214, align 8, !tbaa !62
  %215 = getelementptr inbounds %struct.token_pos, ptr %212, i64 %213, i32 1
  store ptr %192, ptr %215, align 8, !tbaa !64
  br label %216

216:                                              ; preds = %211, %185, %140
  %217 = phi ptr [ %141, %140 ], [ %186, %185 ], [ %212, %211 ]
  %218 = phi i32 [ %133, %140 ], [ %179, %185 ], [ %204, %211 ]
  %219 = phi ptr [ %132, %140 ], [ %178, %185 ], [ %192, %211 ]
  br label %91

220:                                              ; preds = %115
  %221 = getelementptr inbounds i8, ptr %113, i64 1
  call fastcc void @report_event(ptr noundef %0, i32 noundef 0, ptr noundef %1, ptr noundef nonnull %221, i32 noundef %3, ptr noundef %92, i32 noundef %93, ptr noundef %4) #9
  %222 = load ptr, ptr %11, align 8, !tbaa !34
  %223 = icmp eq ptr %222, %9
  br i1 %223, label %234, label %231

224:                                              ; preds = %148
  %225 = load ptr, ptr %11, align 8, !tbaa !34
  %226 = icmp eq ptr %225, %9
  br i1 %226, label %236, label %227

227:                                              ; preds = %224
  call void @Perl_safesysfree(ptr noundef %225) #10
  br label %236

228:                                              ; preds = %145, %201, %129, %112, %171, %168, %55
  %229 = load ptr, ptr %11, align 8, !tbaa !34
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
  %242 = load i8, ptr %241, align 1, !tbaa !67, !range !43, !noundef !44
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
  %251 = load i8, ptr %250, align 1, !tbaa !38
  %252 = icmp eq i8 %251, 62
  br i1 %252, label %256, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds i8, ptr %250, i64 1
  %255 = icmp eq ptr %254, %248
  br i1 %255, label %259, label %249, !llvm.loop !137

256:                                              ; preds = %249
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #11
  store ptr %13, ptr %12, align 8, !tbaa !62
  %257 = getelementptr inbounds %struct.token_pos, ptr %12, i64 0, i32 1
  store ptr %250, ptr %257, align 8, !tbaa !64
  %258 = getelementptr inbounds i8, ptr %250, i64 1
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %258, i32 noundef %3, ptr noundef nonnull %12, i32 noundef 1, ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #11
  br label %259

259:                                              ; preds = %253, %244, %15, %21, %234, %238, %26, %256, %29
  %260 = phi ptr [ %258, %256 ], [ %27, %26 ], [ %31, %29 ], [ null, %238 ], [ %235, %234 ], [ %1, %15 ], [ %25, %21 ], [ %1, %244 ], [ %1, %253 ]
  ret ptr %260
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @parse_process(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.token_pos, align 8
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  store ptr %7, ptr %6, align 8, !tbaa !62
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
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = icmp eq i8 %16, 62
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  store ptr %15, ptr %10, align 8, !tbaa !64
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  %20 = load i8, ptr %11, align 4, !tbaa !78, !range !43, !noundef !44
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8, ptr %12, align 1, !tbaa !138, !range !43, !noundef !44
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22, %18
  %26 = ptrtoint ptr %19 to i64
  %27 = sub i64 %26, %13
  %28 = icmp slt i64 %27, 4
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %15, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !38
  %32 = icmp eq i8 %31, 63
  br i1 %32, label %36, label %33

33:                                               ; preds = %25, %29, %39
  %34 = phi ptr [ %40, %39 ], [ %19, %29 ], [ %19, %25 ]
  %35 = icmp ult ptr %34, %2
  br i1 %35, label %14, label %41, !llvm.loop !139

36:                                               ; preds = %29
  %37 = getelementptr inbounds i8, ptr %15, i64 -1
  store ptr %37, ptr %10, align 8, !tbaa !64
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
define internal fastcc void @tokens_grow(ptr nocapture noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4, !tbaa !35
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 4)
  %6 = shl nuw nsw i32 %5, 1
  br i1 %2, label %7, label %12

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = zext nneg i32 %6 to i64
  %10 = shl nuw nsw i64 %9, 4
  %11 = tail call ptr @Perl_safesysrealloc(ptr noundef %8, i64 noundef %10) #10
  br label %27

12:                                               ; preds = %3
  %13 = zext nneg i32 %6 to i64
  %14 = shl nuw nsw i64 %13, 4
  %15 = tail call ptr @Perl_safesysmalloc(i64 noundef %14) #10
  %16 = load i32, ptr %1, align 4, !tbaa !35
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12, %18
  %19 = phi i64 [ %23, %18 ], [ 0, %12 ]
  %20 = getelementptr inbounds %struct.token_pos, ptr %15, i64 %19
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.token_pos, ptr %21, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !140
  %23 = add nuw nsw i64 %19, 1
  %24 = load i32, ptr %1, align 4, !tbaa !35
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %18, label %27, !llvm.loop !141

27:                                               ; preds = %18, %12, %7
  %28 = phi ptr [ %11, %7 ], [ %15, %12 ], [ %15, %18 ]
  store ptr %28, ptr %0, align 8, !tbaa !34
  store i32 %6, ptr %1, align 4, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @skip_until_gt(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 {
  %3 = icmp ult ptr %0, %1
  br i1 %3, label %4, label %23

4:                                                ; preds = %2, %19
  %5 = phi i8 [ %9, %19 ], [ 32, %2 ]
  %6 = phi i8 [ %20, %19 ], [ 0, %2 ]
  %7 = phi ptr [ %21, %19 ], [ %0, %2 ]
  %8 = icmp ne i8 %6, 0
  %9 = load i8, ptr %7, align 1, !tbaa !38
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
  br i1 %22, label %4, label %23, !llvm.loop !142

23:                                               ; preds = %4, %19, %2
  %24 = phi ptr [ %1, %2 ], [ %1, %19 ], [ %7, %4 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @parse_comment(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = ptrtoint ptr %2 to i64
  %7 = alloca [4 x %struct.token_pos], align 16
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca %struct.token_pos, align 8
  %11 = alloca %struct.token_pos, align 8
  %12 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 21
  %13 = load i8, ptr %12, align 1, !tbaa !67, !range !43, !noundef !44
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %84, label %15

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 4, ptr %8, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  store ptr %7, ptr %9, align 8, !tbaa !34
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
  %37 = load i8, ptr %36, align 1, !tbaa !38
  switch i8 %37, label %38 [
    i8 45, label %41
    i8 62, label %41
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  %40 = icmp eq ptr %39, %34
  br i1 %40, label %41, label %35, !llvm.loop !143

41:                                               ; preds = %38, %35, %35, %27
  %42 = phi ptr [ %28, %27 ], [ %36, %35 ], [ %36, %35 ], [ %34, %38 ]
  %43 = icmp eq ptr %42, %2
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr %9, align 8, !tbaa !34
  %46 = icmp eq ptr %45, %7
  br i1 %46, label %82, label %79

47:                                               ; preds = %41
  %48 = load i8, ptr %42, align 1, !tbaa !38
  %49 = icmp eq i8 %48, 62
  %50 = getelementptr inbounds i8, ptr %42, i64 1
  br i1 %49, label %51, label %57

51:                                               ; preds = %47
  br i1 %24, label %52, label %27

52:                                               ; preds = %51
  %53 = getelementptr inbounds i8, ptr %1, i64 -4
  %54 = load ptr, ptr %9, align 8, !tbaa !34
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %53, ptr noundef nonnull %50, i32 noundef %3, ptr noundef %54, i32 noundef %19, ptr noundef %4) #9
  %55 = load ptr, ptr %9, align 8, !tbaa !34
  %56 = icmp eq ptr %55, %7
  br i1 %56, label %82, label %79

57:                                               ; preds = %47
  %58 = icmp eq ptr %50, %2
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load ptr, ptr %9, align 8, !tbaa !34
  %61 = icmp eq ptr %60, %7
  br i1 %61, label %82, label %79

62:                                               ; preds = %57
  %63 = load i8, ptr %50, align 1, !tbaa !38
  %64 = icmp eq i8 %63, 45
  br i1 %64, label %65, label %25

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, ptr %42, i64 2
  br i1 %24, label %21, label %67

67:                                               ; preds = %65
  %68 = add nuw nsw i32 %19, 1
  %69 = load i32, ptr %8, align 4, !tbaa !35
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = icmp ne ptr %17, %7
  call fastcc void @tokens_grow(ptr noundef nonnull %9, ptr noundef nonnull %8, i1 noundef zeroext %72) #9
  %73 = load ptr, ptr %9, align 8, !tbaa !34
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi ptr [ %73, %71 ], [ %17, %67 ]
  %76 = zext nneg i32 %19 to i64
  %77 = getelementptr inbounds %struct.token_pos, ptr %75, i64 %76
  store ptr %23, ptr %77, align 8, !tbaa !62
  %78 = getelementptr inbounds %struct.token_pos, ptr %75, i64 %76, i32 1
  store ptr %42, ptr %78, align 8, !tbaa !64
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
  %86 = load i8, ptr %85, align 1, !tbaa !68, !range !43, !noundef !44
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  store ptr %1, ptr %10, align 8, !tbaa !62
  %89 = icmp ult ptr %1, %2
  br i1 %89, label %90, label %101

90:                                               ; preds = %88, %94
  %91 = phi ptr [ %95, %94 ], [ %1, %88 ]
  %92 = load i8, ptr %91, align 1, !tbaa !38
  %93 = icmp eq i8 %92, 62
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %91, i64 1
  %96 = icmp eq ptr %95, %2
  br i1 %96, label %101, label %90, !llvm.loop !144

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.token_pos, ptr %10, i64 0, i32 1
  store ptr %91, ptr %98, align 8, !tbaa !64
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
  store ptr %1, ptr %11, align 8, !tbaa !62
  %104 = getelementptr inbounds %struct.token_pos, ptr %11, i64 0, i32 1
  br label %105

105:                                              ; preds = %139, %103
  %106 = phi ptr [ %1, %103 ], [ %121, %139 ]
  %107 = icmp ult ptr %106, %2
  br i1 %107, label %108, label %142

108:                                              ; preds = %105
  %109 = ptrtoint ptr %106 to i64
  %110 = getelementptr i8, ptr %106, i64 %6
  %111 = sub i64 0, %109
  %112 = getelementptr i8, ptr %110, i64 %111
  br label %113

113:                                              ; preds = %108, %117
  %114 = phi ptr [ %118, %117 ], [ %106, %108 ]
  %115 = load i8, ptr %114, align 1, !tbaa !38
  %116 = icmp eq i8 %115, 45
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = getelementptr i8, ptr %114, i64 1
  %119 = icmp eq ptr %118, %112
  br i1 %119, label %142, label %113, !llvm.loop !145

120:                                              ; preds = %113
  store ptr %114, ptr %104, align 8, !tbaa !64
  %121 = getelementptr inbounds i8, ptr %114, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !38
  %123 = icmp eq i8 %122, 45
  br i1 %123, label %124, label %139

124:                                              ; preds = %120
  %125 = getelementptr inbounds i8, ptr %114, i64 2
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi ptr [ %125, %124 ], [ %134, %126 ]
  %128 = load i8, ptr %127, align 1, !tbaa !38
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !38
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  %134 = getelementptr inbounds i8, ptr %127, i64 1
  br i1 %133, label %135, label %126, !llvm.loop !146

135:                                              ; preds = %126
  %136 = icmp eq i8 %128, 62
  br i1 %136, label %137, label %139

137:                                              ; preds = %135
  %138 = getelementptr inbounds i8, ptr %1, i64 -4
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %138, ptr noundef nonnull %134, i32 noundef %3, ptr noundef nonnull %11, i32 noundef 1, ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  br label %146

139:                                              ; preds = %135, %120
  %140 = phi ptr [ %127, %135 ], [ %121, %120 ]
  %141 = icmp ult ptr %140, %2
  br i1 %141, label %105, label %142

142:                                              ; preds = %139, %105, %117
  %143 = phi ptr [ %112, %117 ], [ %106, %105 ], [ %140, %139 ]
  %144 = icmp eq ptr %143, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #11
  %145 = select i1 %144, ptr %1, ptr null
  br label %146

146:                                              ; preds = %142, %137, %101, %82
  %147 = phi ptr [ %83, %82 ], [ %102, %101 ], [ %134, %137 ], [ %145, %142 ]
  ret ptr %147
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @parse_marked_section(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = ptrtoint ptr %2 to i64
  %7 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 20
  %8 = load i8, ptr %7, align 8, !tbaa !147, !range !43, !noundef !44
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %126, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, ptr %1, i64 3
  %12 = icmp eq i32 %3, 0
  br label %13

13:                                               ; preds = %105, %10
  %14 = phi ptr [ null, %10 ], [ %74, %105 ]
  %15 = phi ptr [ %11, %10 ], [ %106, %105 ]
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %15, %13 ], [ %24, %16 ]
  %18 = load i8, ptr %17, align 1, !tbaa !38
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds i8, ptr %17, i64 1
  br i1 %23, label %25, label %16, !llvm.loop !148

25:                                               ; preds = %16
  %26 = and i8 %21, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %73, label %28

28:                                               ; preds = %25, %65
  %29 = phi ptr [ %41, %65 ], [ %17, %25 ]
  %30 = phi ptr [ %56, %65 ], [ %14, %25 ]
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi ptr [ %33, %31 ], [ %29, %28 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !38
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !38
  %38 = and i8 %37, 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %31, !llvm.loop !149

40:                                               ; preds = %31, %40
  %41 = phi ptr [ %48, %40 ], [ %33, %31 ]
  %42 = load i8, ptr %41, align 1, !tbaa !38
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !38
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds i8, ptr %41, i64 1
  br i1 %47, label %49, label %40, !llvm.loop !150

49:                                               ; preds = %40
  %50 = icmp eq ptr %41, %2
  br i1 %50, label %124, label %51

51:                                               ; preds = %49
  %52 = icmp eq ptr %30, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = tail call ptr @Perl_newSV_type(i32 noundef 11) #10
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi ptr [ %30, %51 ], [ %54, %53 ]
  %57 = ptrtoint ptr %33 to i64
  %58 = ptrtoint ptr %29 to i64
  %59 = sub i64 %57, %58
  %60 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull %29, i64 noundef %59) #10
  br i1 %12, label %65, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !39
  %64 = or i32 %63, 536870912
  store i32 %64, ptr %62, align 4, !tbaa !39
  br label %65

65:                                               ; preds = %55, %61
  %66 = tail call fastcc ptr @sv_lower(ptr noundef %60) #9
  tail call void @Perl_av_push(ptr noundef %56, ptr noundef %60) #10
  %67 = load i8, ptr %41, align 1, !tbaa !38
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !38
  %71 = and i8 %70, 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %28

73:                                               ; preds = %65, %25
  %74 = phi ptr [ %14, %25 ], [ %56, %65 ]
  %75 = phi ptr [ %17, %25 ], [ %41, %65 ]
  %76 = phi i8 [ %18, %25 ], [ %67, %65 ]
  switch i8 %76, label %123 [
    i8 45, label %77
    i8 91, label %107
  ]

77:                                               ; preds = %73
  %78 = getelementptr inbounds i8, ptr %75, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !38
  %80 = icmp eq i8 %79, 45
  br i1 %80, label %81, label %123

81:                                               ; preds = %77
  %82 = getelementptr inbounds i8, ptr %75, i64 2
  br label %83

83:                                               ; preds = %101, %81
  %84 = phi ptr [ %82, %81 ], [ %102, %101 ]
  %85 = icmp ult ptr %84, %2
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = ptrtoint ptr %84 to i64
  %88 = getelementptr i8, ptr %84, i64 %6
  %89 = sub i64 0, %87
  %90 = getelementptr i8, ptr %88, i64 %89
  br label %91

91:                                               ; preds = %86, %95
  %92 = phi ptr [ %96, %95 ], [ %84, %86 ]
  %93 = load i8, ptr %92, align 1, !tbaa !38
  %94 = icmp eq i8 %93, 45
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds i8, ptr %92, i64 1
  %97 = icmp eq ptr %96, %90
  br i1 %97, label %98, label %91, !llvm.loop !151

98:                                               ; preds = %91, %95, %83
  %99 = phi ptr [ %84, %83 ], [ %90, %95 ], [ %92, %91 ]
  %100 = icmp eq ptr %99, %2
  br i1 %100, label %124, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds i8, ptr %99, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !38
  %104 = icmp eq i8 %103, 45
  br i1 %104, label %105, label %83

105:                                              ; preds = %101
  %106 = getelementptr inbounds i8, ptr %99, i64 2
  br label %13

107:                                              ; preds = %73
  %108 = getelementptr inbounds i8, ptr %75, i64 1
  %109 = icmp eq ptr %74, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = tail call ptr @Perl_newSV_type(i32 noundef 11) #10
  %112 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.83, i64 noundef 7) #10
  tail call void @Perl_av_push(ptr noundef %111, ptr noundef %112) #10
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi ptr [ %74, %107 ], [ %111, %110 ]
  %115 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  %116 = load ptr, ptr %115, align 8, !tbaa !19
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = tail call ptr @Perl_newSV_type(i32 noundef 11) #10
  store ptr %119, ptr %115, align 8, !tbaa !19
  br label %120

120:                                              ; preds = %118, %113
  %121 = phi ptr [ %119, %118 ], [ %116, %113 ]
  %122 = tail call ptr @Perl_newRV_noinc(ptr noundef %114) #10
  tail call void @Perl_av_push(ptr noundef %121, ptr noundef %122) #10
  tail call fastcc void @marked_section_update(ptr noundef nonnull %0) #9
  tail call fastcc void @report_event(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %1, ptr noundef nonnull %108, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4) #9
  br label %126

123:                                              ; preds = %73, %77
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %74) #9
  br label %126

124:                                              ; preds = %49, %98
  %125 = phi ptr [ %74, %98 ], [ %30, %49 ]
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %125) #9
  br label %126

126:                                              ; preds = %5, %124, %123, %120
  %127 = phi ptr [ %1, %124 ], [ null, %123 ], [ %108, %120 ], [ null, %5 ]
  ret ptr %127
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @strnEQx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #6 {
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
  %13 = load i8, ptr %11, align 1, !tbaa !38
  br i1 %7, label %35, label %14

14:                                               ; preds = %8
  %15 = zext i8 %13 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !35
  %18 = and i32 %17, 16400
  %19 = icmp eq i32 %18, 16400
  %20 = add i8 %13, 32
  %21 = zext i8 %20 to i32
  %22 = sext i8 %13 to i32
  %23 = select i1 %19, i32 %21, i32 %22
  %24 = load i8, ptr %10, align 1, !tbaa !38
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !35
  %28 = and i32 %27, 16400
  %29 = icmp eq i32 %28, 16400
  %30 = add i8 %24, 32
  %31 = zext i8 %30 to i32
  %32 = sext i8 %24 to i32
  %33 = select i1 %29, i32 %31, i32 %32
  %34 = icmp eq i32 %23, %33
  br i1 %34, label %38, label %42

35:                                               ; preds = %8
  %36 = load i8, ptr %10, align 1, !tbaa !38
  %37 = icmp eq i8 %13, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %14
  %39 = getelementptr inbounds i8, ptr %11, i64 1
  %40 = getelementptr inbounds i8, ptr %10, i64 1
  %41 = icmp eq i64 %12, 0
  br i1 %41, label %42, label %8, !llvm.loop !152

42:                                               ; preds = %14, %35, %38, %4
  %43 = phi i32 [ 1, %4 ], [ 1, %38 ], [ 0, %35 ], [ 0, %14 ]
  ret i32 %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @has_hibit(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %6 ]
  %5 = icmp ult ptr %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  %8 = load i8, ptr %4, align 1, !tbaa !38
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
define internal fastcc ptr @argspec_compile(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x i8], align 1
  %7 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.47, i64 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !39
  %10 = and i32 %9, 2098176
  %11 = icmp eq i32 %10, 1024
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !46
  store i64 %15, ptr %3, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  br label %22

18:                                               ; preds = %2
  %19 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #10
  %20 = load i64, ptr %3, align 8, !tbaa !49
  %21 = load i32, ptr %8, align 4, !tbaa !39
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
  %31 = load i32, ptr %30, align 4, !tbaa !39
  %32 = or i32 %31, 536870912
  store i32 %32, ptr %30, align 4, !tbaa !39
  br label %33

33:                                               ; preds = %29, %22
  br label %34

34:                                               ; preds = %33, %34
  %35 = phi ptr [ %42, %34 ], [ %25, %33 ]
  %36 = load i8, ptr %35, align 1, !tbaa !38
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !38
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  %42 = getelementptr inbounds i8, ptr %35, i64 1
  br i1 %41, label %43, label %34, !llvm.loop !153

43:                                               ; preds = %34
  %44 = icmp eq i8 %36, 64
  br i1 %44, label %45, label %67

45:                                               ; preds = %43, %45
  %46 = phi ptr [ %47, %45 ], [ %35, %43 ]
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !38
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !38
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %45, !llvm.loop !154

54:                                               ; preds = %45
  %55 = icmp eq i8 %48, 123
  br i1 %55, label %56, label %67

56:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 22, ptr %4, align 1, !tbaa !38
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull %4, i64 noundef 1, i32 noundef 2) #10
  br label %57

57:                                               ; preds = %57, %56
  %58 = phi ptr [ %47, %56 ], [ %59, %57 ]
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !38
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !38
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %57, !llvm.loop !155

66:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  br label %67

67:                                               ; preds = %54, %66, %43
  %68 = phi i8 [ %36, %43 ], [ %60, %66 ], [ 64, %54 ]
  %69 = phi ptr [ %35, %43 ], [ %59, %66 ], [ %35, %54 ]
  %70 = icmp ult ptr %69, %26
  br i1 %70, label %71, label %228

71:                                               ; preds = %67
  %72 = getelementptr inbounds [2 x i8], ptr %6, i64 0, i64 1
  %73 = getelementptr inbounds %struct.p_state, ptr %1, i64 0, i32 35
  %74 = getelementptr inbounds %struct.p_state, ptr %1, i64 0, i32 17
  %75 = getelementptr inbounds %struct.p_state, ptr %1, i64 0, i32 3
  %76 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %77 = zext i8 %68 to i64
  %78 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !38
  br label %82

80:                                               ; preds = %219
  %81 = icmp ult ptr %221, %26
  br i1 %81, label %82, label %228, !llvm.loop !156

82:                                               ; preds = %71, %80
  %83 = phi i8 [ %79, %71 ], [ %225, %80 ]
  %84 = phi i8 [ %68, %71 ], [ %222, %80 ]
  %85 = phi ptr [ %69, %71 ], [ %221, %80 ]
  %86 = and i8 %83, 2
  %87 = icmp ne i8 %86, 0
  %88 = icmp eq i8 %84, 64
  %89 = or i1 %88, %87
  br i1 %89, label %90, label %144

90:                                               ; preds = %82, %90
  %91 = phi ptr [ %92, %90 ], [ %85, %82 ]
  %92 = getelementptr inbounds i8, ptr %91, i64 1
  %93 = load i8, ptr %92, align 1, !tbaa !38
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !38
  %97 = and i8 %96, 4
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %90, !llvm.loop !157

99:                                               ; preds = %90
  %100 = ptrtoint ptr %92 to i64
  %101 = ptrtoint ptr %85 to i64
  %102 = sub i64 %100, %101
  br label %103

103:                                              ; preds = %99, %113
  %104 = phi ptr [ @argname, %99 ], [ %115, %113 ]
  %105 = phi i32 [ 1, %99 ], [ %114, %113 ]
  %106 = load ptr, ptr %104, align 8, !tbaa !34
  %107 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %106, ptr noundef nonnull dereferenceable(1) %85, i64 noundef %102) #12
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = getelementptr inbounds i8, ptr %106, i64 %102
  %111 = load i8, ptr %110, align 1, !tbaa !38
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %103, %109
  %114 = add nuw nsw i32 %105, 1
  %115 = getelementptr inbounds ptr, ptr %104, i64 1
  %116 = icmp eq i32 %114, 21
  br i1 %116, label %143, label %103, !llvm.loop !158

117:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  %118 = trunc i32 %105 to i8
  store i8 %118, ptr %5, align 1, !tbaa !38
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull %5, i64 noundef 1, i32 noundef 2) #10
  %119 = add nsw i32 %105, -17
  %120 = icmp ult i32 %119, 2
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i64, ptr %75, align 8, !tbaa !70
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  store i64 1, ptr %75, align 8, !tbaa !70
  br label %142

125:                                              ; preds = %117
  %126 = icmp eq i32 %105, 13
  br i1 %126, label %127, label %132

127:                                              ; preds = %125
  %128 = load ptr, ptr %74, align 8, !tbaa !18
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.47, i64 noundef 0) #10
  store ptr %131, ptr %74, align 8, !tbaa !18
  br label %142

132:                                              ; preds = %125
  %133 = add nsw i32 %105, -7
  %134 = icmp ult i32 %133, 2
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, ptr %73, align 8, !tbaa !74
  %137 = icmp eq i32 %136, 11
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  store i32 7, ptr %73, align 8, !tbaa !74
  br label %142

139:                                              ; preds = %132
  %140 = icmp eq i32 %105, 11
  br i1 %140, label %141, label %142

141:                                              ; preds = %139
  store i32 11, ptr %73, align 8, !tbaa !74
  br label %142

142:                                              ; preds = %127, %130, %121, %124, %139, %141, %135, %138
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br label %182

143:                                              ; preds = %113
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.97, i64 noundef %102, ptr noundef nonnull %85) #10
  br label %182

144:                                              ; preds = %82
  switch i8 %84, label %181 [
    i8 34, label %145
    i8 39, label %145
  ]

145:                                              ; preds = %144, %144
  %146 = getelementptr inbounds i8, ptr %85, i64 1
  %147 = icmp ult ptr %146, %26
  br i1 %147, label %148, label %157

148:                                              ; preds = %145, %154
  %149 = phi ptr [ %155, %154 ], [ %146, %145 ]
  %150 = load i8, ptr %149, align 1, !tbaa !38
  %151 = icmp eq i8 %150, %84
  %152 = icmp eq i8 %150, 92
  %153 = or i1 %151, %152
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds i8, ptr %149, i64 1
  %156 = icmp ult ptr %155, %26
  br i1 %156, label %148, label %157, !llvm.loop !159

157:                                              ; preds = %154, %145
  %158 = phi ptr [ %146, %145 ], [ %155, %154 ]
  %159 = load i8, ptr %158, align 1, !tbaa !38
  br label %160

160:                                              ; preds = %148, %157
  %161 = phi ptr [ %158, %157 ], [ %149, %148 ]
  %162 = phi i8 [ %159, %157 ], [ %150, %148 ]
  %163 = icmp eq i8 %162, %84
  br i1 %163, label %164, label %177

164:                                              ; preds = %160
  %165 = ptrtoint ptr %161 to i64
  %166 = ptrtoint ptr %85 to i64
  %167 = xor i64 %166, -1
  %168 = add i64 %165, %167
  %169 = trunc i64 %168 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  %170 = icmp sgt i32 %169, 255
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.98) #10
  br label %172

172:                                              ; preds = %171, %164
  store i8 21, ptr %6, align 1, !tbaa !38
  %173 = trunc i64 %168 to i8
  store i8 %173, ptr %72, align 1, !tbaa !38
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull %6, i64 noundef 2, i32 noundef 2) #10
  %174 = shl i64 %168, 32
  %175 = ashr exact i64 %174, 32
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull %146, i64 noundef %175, i32 noundef 2) #10
  %176 = getelementptr inbounds i8, ptr %161, i64 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br label %182

177:                                              ; preds = %160
  %178 = icmp eq i8 %162, 92
  br i1 %178, label %179, label %180

179:                                              ; preds = %177
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.99) #10
  br label %182

180:                                              ; preds = %177
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.100) #10
  br label %182

181:                                              ; preds = %144
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.101, ptr noundef nonnull %85) #10
  br label %182

182:                                              ; preds = %172, %180, %179, %142, %143, %181
  %183 = phi ptr [ %161, %180 ], [ %161, %179 ], [ %176, %172 ], [ %92, %142 ], [ %92, %143 ], [ %85, %181 ]
  br label %184

184:                                              ; preds = %182, %184
  %185 = phi ptr [ %192, %184 ], [ %183, %182 ]
  %186 = load i8, ptr %185, align 1, !tbaa !38
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !38
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  %192 = getelementptr inbounds i8, ptr %185, i64 1
  br i1 %191, label %193, label %184, !llvm.loop !160

193:                                              ; preds = %184
  %194 = icmp eq i8 %186, 125
  br i1 %194, label %195, label %211

195:                                              ; preds = %193
  %196 = load ptr, ptr %76, align 8, !tbaa !38
  %197 = load i8, ptr %196, align 1, !tbaa !38
  %198 = icmp eq i8 %197, 22
  br i1 %198, label %199, label %211

199:                                              ; preds = %195, %199
  %200 = phi ptr [ %201, %199 ], [ %185, %195 ]
  %201 = getelementptr inbounds i8, ptr %200, i64 1
  %202 = load i8, ptr %201, align 1, !tbaa !38
  %203 = zext i8 %202 to i64
  %204 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !38
  %206 = and i8 %205, 1
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %199, !llvm.loop !161

208:                                              ; preds = %199
  %209 = icmp ult ptr %201, %26
  br i1 %209, label %210, label %211

210:                                              ; preds = %208
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.102, ptr noundef nonnull %201) #10
  br label %211

211:                                              ; preds = %208, %210, %195, %193
  %212 = phi ptr [ %201, %210 ], [ %201, %208 ], [ %185, %195 ], [ %185, %193 ]
  %213 = icmp eq ptr %212, %26
  br i1 %213, label %228, label %214

214:                                              ; preds = %211
  %215 = load i8, ptr %212, align 1, !tbaa !38
  %216 = icmp eq i8 %215, 44
  br i1 %216, label %218, label %217

217:                                              ; preds = %214
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.103) #10
  br label %218

218:                                              ; preds = %217, %214
  br label %219

219:                                              ; preds = %218, %219
  %220 = phi ptr [ %221, %219 ], [ %212, %218 ]
  %221 = getelementptr inbounds i8, ptr %220, i64 1
  %222 = load i8, ptr %221, align 1, !tbaa !38
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !38
  %226 = and i8 %225, 1
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %80, label %219, !llvm.loop !162

228:                                              ; preds = %80, %211, %67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @check_handler(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !39
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #10
  %8 = load i32, ptr %2, align 4, !tbaa !39
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi i32 [ %3, %1 ], [ %8, %6 ]
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !39
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
  %24 = load i32, ptr %2, align 4, !tbaa !39
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 40}
!7 = !{!"magic", !8, i64 0, !8, i64 8, !11, i64 16, !9, i64 18, !9, i64 19, !12, i64 24, !8, i64 32, !8, i64 40}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !8, i64 8}
!14 = !{!"p_state", !15, i64 0, !8, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !16, i64 40, !16, i64 41, !16, i64 42, !8, i64 48, !16, i64 56, !16, i64 57, !8, i64 64, !8, i64 72, !16, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !8, i64 112, !15, i64 120, !8, i64 128, !16, i64 136, !16, i64 137, !16, i64 138, !16, i64 139, !16, i64 140, !16, i64 141, !16, i64 142, !16, i64 143, !16, i64 144, !16, i64 145, !16, i64 146, !16, i64 147, !16, i64 148, !8, i64 152, !9, i64 160, !15, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !15, i64 344, !8, i64 352, !8, i64 360}
!15 = !{!"int", !9, i64 0}
!16 = !{!"_Bool", !9, i64 0}
!17 = !{!14, !8, i64 72}
!18 = !{!14, !8, i64 112}
!19 = !{!14, !8, i64 128}
!20 = !{!14, !8, i64 152}
!21 = !{!22, !8, i64 0}
!22 = !{!"p_handler", !8, i64 0, !8, i64 8}
!23 = !{!22, !8, i64 8}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!14, !8, i64 312}
!27 = !{!14, !8, i64 320}
!28 = !{!14, !8, i64 328}
!29 = !{!14, !8, i64 336}
!30 = !{!14, !8, i64 360}
!31 = !{!14, !15, i64 0}
!32 = !{!33, !15, i64 8}
!33 = !{!"sv", !8, i64 0, !15, i64 8, !15, i64 12, !9, i64 16}
!34 = !{!8, !8, i64 0}
!35 = !{!15, !15, i64 0}
!36 = !{!37, !8, i64 0}
!37 = !{!"cv", !8, i64 0, !15, i64 8, !15, i64 12, !9, i64 16}
!38 = !{!9, !9, i64 0}
!39 = !{!33, !15, i64 12}
!40 = !{!14, !8, i64 352}
!41 = !{!7, !8, i64 8}
!42 = !{!14, !16, i64 41}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!33, !8, i64 0}
!46 = !{!47, !12, i64 16}
!47 = !{!"xpv", !8, i64 0, !9, i64 8, !12, i64 16, !9, i64 24}
!48 = !{!14, !16, i64 42}
!49 = !{!12, !12, i64 0}
!50 = distinct !{!50, !25}
!51 = !{!16, !16, i64 0}
!52 = !{!53, !9, i64 34}
!53 = !{!"op", !8, i64 0, !8, i64 8, !8, i64 16, !12, i64 24, !15, i64 32, !15, i64 33, !15, i64 33, !15, i64 33, !15, i64 33, !15, i64 33, !15, i64 33, !15, i64 33, !9, i64 34, !9, i64 35}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !25}
!56 = distinct !{!56, !25}
!57 = distinct !{!57, !25}
!58 = !{!53, !9, i64 35}
!59 = !{!53, !12, i64 24}
!60 = !{!14, !16, i64 40}
!61 = !{!14, !8, i64 48}
!62 = !{!63, !8, i64 0}
!63 = !{!"token_pos", !8, i64 0, !8, i64 8}
!64 = !{!63, !8, i64 8}
!65 = !{!14, !8, i64 64}
!66 = distinct !{!66, !25}
!67 = !{!14, !16, i64 137}
!68 = !{!14, !16, i64 57}
!69 = !{!14, !12, i64 16}
!70 = !{!14, !12, i64 24}
!71 = !{!14, !12, i64 32}
!72 = !{!14, !16, i64 56}
!73 = !{!14, !16, i64 145}
!74 = !{!14, !15, i64 304}
!75 = !{!14, !16, i64 142}
!76 = distinct !{!76, !25}
!77 = !{!14, !15, i64 120}
!78 = !{!14, !16, i64 140}
!79 = !{!14, !16, i64 143}
!80 = !{!14, !15, i64 344}
!81 = !{!14, !16, i64 141}
!82 = !{!14, !16, i64 80}
!83 = !{!14, !12, i64 88}
!84 = !{!14, !12, i64 96}
!85 = !{!14, !12, i64 104}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !25}
!88 = !{!14, !16, i64 148}
!89 = distinct !{!89, !25}
!90 = distinct !{!90, !25}
!91 = distinct !{!91, !25}
!92 = distinct !{!92, !25}
!93 = distinct !{!93, !25}
!94 = !{!14, !16, i64 144}
!95 = distinct !{!95, !25}
!96 = distinct !{!96, !25}
!97 = distinct !{!97, !25}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !25}
!100 = distinct !{!100, !25}
!101 = distinct !{!101, !25}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25}
!104 = distinct !{!104, !25}
!105 = distinct !{!105, !25}
!106 = distinct !{!106, !25}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !25}
!110 = distinct !{!110, !25}
!111 = distinct !{!111, !25}
!112 = distinct !{!112, !25}
!113 = !{!14, !16, i64 138}
!114 = !{!14, !16, i64 146}
!115 = distinct !{!115, !25}
!116 = distinct !{!116, !25}
!117 = distinct !{!117, !25}
!118 = distinct !{!118, !25}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !25}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !25}
!123 = !{!124, !8, i64 8}
!124 = !{!"literal_tag", !15, i64 0, !8, i64 8, !15, i64 16}
!125 = distinct !{!125, !25}
!126 = !{!124, !15, i64 0}
!127 = distinct !{!127, !25}
!128 = distinct !{!128, !25}
!129 = !{!14, !16, i64 139}
!130 = distinct !{!130, !25}
!131 = distinct !{!131, !25}
!132 = !{i32 0, i32 2}
!133 = distinct !{!133, !25}
!134 = distinct !{!134, !25}
!135 = distinct !{!135, !25}
!136 = distinct !{!136, !25}
!137 = distinct !{!137, !25}
!138 = !{!14, !16, i64 147}
!139 = distinct !{!139, !25}
!140 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!141 = distinct !{!141, !25}
!142 = distinct !{!142, !25}
!143 = distinct !{!143, !25}
!144 = distinct !{!144, !25}
!145 = distinct !{!145, !25}
!146 = distinct !{!146, !25}
!147 = !{!14, !16, i64 136}
!148 = distinct !{!148, !25}
!149 = distinct !{!149, !25}
!150 = distinct !{!150, !25}
!151 = distinct !{!151, !25}
!152 = distinct !{!152, !25}
!153 = distinct !{!153, !25}
!154 = distinct !{!154, !25}
!155 = distinct !{!155, !25}
!156 = distinct !{!156, !25}
!157 = distinct !{!157, !25}
!158 = distinct !{!158, !25}
!159 = distinct !{!159, !25}
!160 = distinct !{!160, !25}
!161 = distinct !{!161, !25}
!162 = distinct !{!162, !25}
