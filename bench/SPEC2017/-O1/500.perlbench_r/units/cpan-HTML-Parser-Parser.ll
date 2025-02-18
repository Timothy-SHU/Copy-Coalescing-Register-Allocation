; ModuleID = 'cpan/HTML-Parser/Parser.c'
source_filename = "cpan/HTML-Parser/Parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.literal_tag = type { i32, ptr, i32 }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.p_state = type { i32, ptr, i64, i64, i64, i8, i8, i8, ptr, i8, i8, ptr, ptr, i8, i64, i64, i64, ptr, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [9 x %struct.p_handler], i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.p_handler = type { ptr, ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon, ptr, %union.anon.0, %union.anon.1, %union.anon.2, ptr, %union.anon.3, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
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

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @magic_free_pstate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.p_state, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !46
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = add i32 %10, -1
  store i32 %13, ptr %9, align 8, !tbaa !46
  br label %15

14:                                               ; preds = %8
  tail call void @Perl_sv_free2(ptr noundef nonnull %6, i32 noundef %10) #8
  br label %15

15:                                               ; preds = %14, %12, %2
  %16 = getelementptr inbounds %struct.p_state, ptr %4, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = add i32 %21, -1
  store i32 %24, ptr %20, align 8, !tbaa !46
  br label %26

25:                                               ; preds = %19
  tail call void @Perl_sv_free2(ptr noundef nonnull %17, i32 noundef %21) #8
  br label %26

26:                                               ; preds = %25, %23, %15
  %27 = getelementptr inbounds %struct.p_state, ptr %4, i64 0, i32 17
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !46
  %33 = icmp ugt i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = add i32 %32, -1
  store i32 %35, ptr %31, align 8, !tbaa !46
  br label %37

36:                                               ; preds = %30
  tail call void @Perl_sv_free2(ptr noundef nonnull %28, i32 noundef %32) #8
  br label %37

37:                                               ; preds = %36, %34, %26
  %38 = getelementptr inbounds %struct.p_state, ptr %4, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !46
  %44 = icmp ugt i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = add i32 %43, -1
  store i32 %46, ptr %42, align 8, !tbaa !46
  br label %48

47:                                               ; preds = %41
  tail call void @Perl_sv_free2(ptr noundef nonnull %39, i32 noundef %43) #8
  br label %48

48:                                               ; preds = %47, %45, %37
  %49 = getelementptr inbounds %struct.p_state, ptr %4, i64 0, i32 33
  %50 = load ptr, ptr %49, align 8, !tbaa !51
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.sv, ptr %50, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !46
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = add i32 %54, -1
  store i32 %57, ptr %53, align 8, !tbaa !46
  br label %59

58:                                               ; preds = %52
  tail call void @Perl_sv_free2(ptr noundef nonnull %50, i32 noundef %54) #8
  br label %59

59:                                               ; preds = %58, %56, %48
  br label %60

60:                                               ; preds = %59, %83
  %61 = phi i64 [ %84, %83 ], [ 0, %59 ]
  %62 = getelementptr inbounds %struct.p_state, ptr %4, i64 0, i32 34, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !52
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !46
  %68 = icmp ugt i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = add i32 %67, -1
  store i32 %70, ptr %66, align 8, !tbaa !46
  br label %72

71:                                               ; preds = %65
  tail call void @Perl_sv_free2(ptr noundef nonnull %63, i32 noundef %67) #8
  br label %72

72:                                               ; preds = %71, %69, %60
  %73 = getelementptr inbounds %struct.p_state, ptr %4, i64 0, i32 34, i64 %61, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !54
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sv, ptr %74, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !46
  %79 = icmp ugt i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = add i32 %78, -1
  store i32 %81, ptr %77, align 8, !tbaa !46
  br label %83

82:                                               ; preds = %76
  tail call void @Perl_sv_free2(ptr noundef nonnull %74, i32 noundef %78) #8
  br label %83

83:                                               ; preds = %82, %80, %72
  %84 = add nuw nsw i64 %61, 1
  %85 = icmp eq i64 %84, 9
  br i1 %85, label %86, label %60, !llvm.loop !55

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.p_state, ptr %4, i64 0, i32 36
  %88 = load ptr, ptr %87, align 8, !tbaa !58
  %89 = icmp eq ptr %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !46
  %93 = icmp ugt i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = add i32 %92, -1
  store i32 %95, ptr %91, align 8, !tbaa !46
  br label %97

96:                                               ; preds = %90
  tail call void @Perl_sv_free2(ptr noundef nonnull %88, i32 noundef %92) #8
  br label %97

97:                                               ; preds = %96, %94, %86
  %98 = getelementptr inbounds %struct.p_state, ptr %4, i64 0, i32 37
  %99 = load ptr, ptr %98, align 8, !tbaa !59
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.sv, ptr %99, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !46
  %104 = icmp ugt i32 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = add i32 %103, -1
  store i32 %106, ptr %102, align 8, !tbaa !46
  br label %108

107:                                              ; preds = %101
  tail call void @Perl_sv_free2(ptr noundef nonnull %99, i32 noundef %103) #8
  br label %108

108:                                              ; preds = %107, %105, %97
  %109 = getelementptr inbounds %struct.p_state, ptr %4, i64 0, i32 38
  %110 = load ptr, ptr %109, align 8, !tbaa !60
  %111 = icmp eq ptr %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.sv, ptr %110, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !46
  %115 = icmp ugt i32 %114, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = add i32 %114, -1
  store i32 %117, ptr %113, align 8, !tbaa !46
  br label %119

118:                                              ; preds = %112
  tail call void @Perl_sv_free2(ptr noundef nonnull %110, i32 noundef %114) #8
  br label %119

119:                                              ; preds = %118, %116, %108
  %120 = getelementptr inbounds %struct.p_state, ptr %4, i64 0, i32 39
  %121 = load ptr, ptr %120, align 8, !tbaa !61
  %122 = icmp eq ptr %121, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.sv, ptr %121, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !46
  %126 = icmp ugt i32 %125, 1
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = add i32 %125, -1
  store i32 %128, ptr %124, align 8, !tbaa !46
  br label %130

129:                                              ; preds = %123
  tail call void @Perl_sv_free2(ptr noundef nonnull %121, i32 noundef %125) #8
  br label %130

130:                                              ; preds = %129, %127, %119
  %131 = getelementptr inbounds %struct.p_state, ptr %4, i64 0, i32 42
  %132 = load ptr, ptr %131, align 8, !tbaa !62
  %133 = icmp eq ptr %132, null
  br i1 %133, label %141, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.sv, ptr %132, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !46
  %137 = icmp ugt i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = add i32 %136, -1
  store i32 %139, ptr %135, align 8, !tbaa !46
  br label %141

140:                                              ; preds = %134
  tail call void @Perl_sv_free2(ptr noundef nonnull %132, i32 noundef %136) #8
  br label %141

141:                                              ; preds = %130, %138, %140
  store i32 0, ptr %4, align 8, !tbaa !63
  tail call void @Perl_safesysfree(ptr noundef nonnull %4) #8
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_HTML__Parser(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %5 = load i32, ptr %3, align 4, !tbaa !65
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676679, ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %14, i32 noundef %7, ptr noundef nonnull @.str.21) #8
  %16 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.22, ptr noundef nonnull @XS_HTML__Parser__alloc_pstate, ptr noundef nonnull @.str.20) #8
  %17 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.23, ptr noundef nonnull @XS_HTML__Parser_parse, ptr noundef nonnull @.str.20) #8
  %18 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.24, ptr noundef nonnull @XS_HTML__Parser_eof, ptr noundef nonnull @.str.20) #8
  %19 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.25, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.xpvcv, ptr %20, i64 0, i32 5
  store i32 6, ptr %21, align 8, !tbaa !68
  %22 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.26, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 5
  store i32 13, ptr %24, align 8, !tbaa !68
  %25 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.27, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %26 = load ptr, ptr %25, align 8, !tbaa !66
  %27 = getelementptr inbounds %struct.xpvcv, ptr %26, i64 0, i32 5
  store i32 7, ptr %27, align 8, !tbaa !68
  %28 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.28, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %29 = load ptr, ptr %28, align 8, !tbaa !66
  %30 = getelementptr inbounds %struct.xpvcv, ptr %29, i64 0, i32 5
  store i32 9, ptr %30, align 8, !tbaa !68
  %31 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.29, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %32 = load ptr, ptr %31, align 8, !tbaa !66
  %33 = getelementptr inbounds %struct.xpvcv, ptr %32, i64 0, i32 5
  store i32 11, ptr %33, align 8, !tbaa !68
  %34 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.30, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %35 = load ptr, ptr %34, align 8, !tbaa !66
  %36 = getelementptr inbounds %struct.xpvcv, ptr %35, i64 0, i32 5
  store i32 5, ptr %36, align 8, !tbaa !68
  %37 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.31, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %38 = load ptr, ptr %37, align 8, !tbaa !66
  %39 = getelementptr inbounds %struct.xpvcv, ptr %38, i64 0, i32 5
  store i32 1, ptr %39, align 8, !tbaa !68
  %40 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.32, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %41 = load ptr, ptr %40, align 8, !tbaa !66
  %42 = getelementptr inbounds %struct.xpvcv, ptr %41, i64 0, i32 5
  store i32 8, ptr %42, align 8, !tbaa !68
  %43 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.33, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %44 = load ptr, ptr %43, align 8, !tbaa !66
  %45 = getelementptr inbounds %struct.xpvcv, ptr %44, i64 0, i32 5
  store i32 2, ptr %45, align 8, !tbaa !68
  %46 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.34, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %47 = load ptr, ptr %46, align 8, !tbaa !66
  %48 = getelementptr inbounds %struct.xpvcv, ptr %47, i64 0, i32 5
  store i32 4, ptr %48, align 8, !tbaa !68
  %49 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.35, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %50 = load ptr, ptr %49, align 8, !tbaa !66
  %51 = getelementptr inbounds %struct.xpvcv, ptr %50, i64 0, i32 5
  store i32 10, ptr %51, align 8, !tbaa !68
  %52 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.36, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %53 = load ptr, ptr %52, align 8, !tbaa !66
  %54 = getelementptr inbounds %struct.xpvcv, ptr %53, i64 0, i32 5
  store i32 3, ptr %54, align 8, !tbaa !68
  %55 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.37, ptr noundef nonnull @XS_HTML__Parser_strict_comment, ptr noundef nonnull @.str.20) #8
  %56 = load ptr, ptr %55, align 8, !tbaa !66
  %57 = getelementptr inbounds %struct.xpvcv, ptr %56, i64 0, i32 5
  store i32 12, ptr %57, align 8, !tbaa !68
  %58 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.38, ptr noundef nonnull @XS_HTML__Parser_boolean_attribute_value, ptr noundef nonnull @.str.20) #8
  %59 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.39, ptr noundef nonnull @XS_HTML__Parser_ignore_tags, ptr noundef nonnull @.str.20) #8
  %60 = load ptr, ptr %59, align 8, !tbaa !66
  %61 = getelementptr inbounds %struct.xpvcv, ptr %60, i64 0, i32 5
  store i32 3, ptr %61, align 8, !tbaa !68
  %62 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.40, ptr noundef nonnull @XS_HTML__Parser_ignore_tags, ptr noundef nonnull @.str.20) #8
  %63 = load ptr, ptr %62, align 8, !tbaa !66
  %64 = getelementptr inbounds %struct.xpvcv, ptr %63, i64 0, i32 5
  store i32 2, ptr %64, align 8, !tbaa !68
  %65 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.41, ptr noundef nonnull @XS_HTML__Parser_ignore_tags, ptr noundef nonnull @.str.20) #8
  %66 = load ptr, ptr %65, align 8, !tbaa !66
  %67 = getelementptr inbounds %struct.xpvcv, ptr %66, i64 0, i32 5
  store i32 1, ptr %67, align 8, !tbaa !68
  %68 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.42, ptr noundef nonnull @XS_HTML__Parser_handler, ptr noundef nonnull @.str.20) #8
  %69 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.43, ptr noundef nonnull @XS_HTML__Entities_decode_entities, ptr noundef nonnull @.str.20) #8
  %70 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.44, ptr noundef nonnull @XS_HTML__Entities__decode_entities, ptr noundef nonnull @.str.20) #8
  %71 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.45, ptr noundef nonnull @XS_HTML__Entities__probably_utf8_chunk, ptr noundef nonnull @.str.20) #8
  %72 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.46, ptr noundef nonnull @XS_HTML__Entities_UNICODE_SUPPORT, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.47, i32 noundef 0) #8
  %73 = load ptr, ptr @PL_unitcheckav, align 8, !tbaa !64
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %1
  %76 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !65
  tail call void @Perl_call_list(i32 noundef %76, ptr noundef nonnull %73) #8
  br label %77

77:                                               ; preds = %1, %75
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %79 = sext i32 %7 to i64
  %80 = getelementptr inbounds ptr, ptr %78, i64 %79
  store ptr @PL_sv_yes, ptr %80, align 8, !tbaa !64
  %81 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %82 = getelementptr inbounds ptr, ptr %81, i64 %79
  store ptr %82, ptr @PL_stack_sp, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_HTML__Parser__alloc_pstate(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %5 = load i32, ptr %3, align 4, !tbaa !65
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !69
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 12
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #8
  br label %30

30:                                               ; preds = %29, %24
  %31 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 368) #8
  store i32 369695076, ptr %31, align 8, !tbaa !63
  %32 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.49, i32 noundef 1) #8
  %33 = getelementptr inbounds %struct.p_state, ptr %31, i64 0, i32 41
  store ptr %32, ptr %33, align 8, !tbaa !70
  %34 = tail call ptr @Perl_newSV(i64 noundef 20) #8
  %35 = getelementptr inbounds %struct.p_state, ptr %31, i64 0, i32 42
  store ptr %34, ptr %35, align 8, !tbaa !62
  %36 = ptrtoint ptr %31 to i64
  %37 = tail call ptr @Perl_newSViv(i64 noundef %36) #8
  tail call void @Perl_sv_magic(ptr noundef %37, ptr noundef null, i32 noundef 126, ptr noundef nonnull %31, i32 noundef 0) #8
  %38 = tail call ptr @Perl_mg_find(ptr noundef %37, i32 noundef 126) #8
  %39 = getelementptr inbounds %struct.magic, ptr %38, i64 0, i32 1
  store ptr @vtbl_pstate, ptr %39, align 8, !tbaa !71
  %40 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !69
  %42 = or i32 %41, 134217728
  store i32 %42, ptr %40, align 4, !tbaa !69
  %43 = tail call ptr @Perl_newRV_noinc(ptr noundef %37) #8
  %44 = tail call ptr @Perl_hv_common_key_len(ptr noundef %22, ptr noundef nonnull @.str.50, i32 noundef 17, i32 noundef 36, ptr noundef %43, i32 noundef 0) #8
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %46 = getelementptr inbounds ptr, ptr %45, i64 %18
  %47 = getelementptr inbounds ptr, ptr %46, i64 -1
  store ptr %47, ptr @PL_stack_sp, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_HTML__Parser_parse(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %6 = load i32, ptr %4, align 4, !tbaa !65
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.51) #8
  br label %16

16:                                               ; preds = %15, %1
  %17 = shl i64 %12, 29
  %18 = ashr i64 %17, 32
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds ptr, ptr %3, i64 %19
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %22 = getelementptr ptr, ptr %21, i64 %8
  %23 = getelementptr ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = getelementptr ptr, ptr %22, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  %27 = tail call fastcc ptr @get_pstate_hv(ptr noundef %24)
  %28 = getelementptr inbounds %struct.p_state, ptr %27, i64 0, i32 6
  %29 = load i8, ptr %28, align 1, !tbaa !72, !range !73, !noundef !74
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.52) #8
  br label %32

32:                                               ; preds = %31, %16
  store i8 1, ptr %28, align 1, !tbaa !72
  %33 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !69
  %35 = and i32 %34, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %386, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !68
  %40 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !69
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %44, label %386

44:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %45 = getelementptr inbounds %struct.p_state, ptr %27, i64 0, i32 7
  br label %46

46:                                               ; preds = %382, %44
  %47 = phi ptr [ %20, %44 ], [ %379, %382 ]
  %48 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %49 = getelementptr inbounds i32, ptr %48, i64 1
  store ptr %49, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %50 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !64
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call ptr @Perl_markstack_grow() #8
  br label %54

54:                                               ; preds = %46, %52
  %55 = phi ptr [ %53, %52 ], [ %49, %46 ]
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %57 = ptrtoint ptr %47 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = lshr exact i64 %59, 3
  %61 = trunc i64 %60 to i32
  store i32 %61, ptr %55, align 4, !tbaa !65
  %62 = call i32 @Perl_call_sv(ptr noundef %26, i32 noundef 10) #8
  %63 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = getelementptr inbounds ptr, ptr %63, i64 -1
  %67 = load ptr, ptr %63, align 8, !tbaa !64
  br label %68

68:                                               ; preds = %54, %65
  %69 = phi ptr [ %66, %65 ], [ %63, %54 ]
  %70 = phi ptr [ %67, %65 ], [ null, %54 ]
  store ptr %69, ptr @PL_stack_sp, align 8, !tbaa !64
  %71 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %72 = getelementptr inbounds %struct.gv, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !68
  %74 = load ptr, ptr %73, align 8, !tbaa !75
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = call ptr @Perl_gv_add_by_type(ptr noundef %71, i32 noundef 0) #8
  %78 = getelementptr inbounds %struct.gv, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !68
  br label %80

80:                                               ; preds = %68, %76
  %81 = phi ptr [ %79, %76 ], [ %73, %68 ]
  %82 = load ptr, ptr %81, align 8, !tbaa !64
  %83 = icmp eq ptr %82, null
  br i1 %83, label %352, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %86 = getelementptr inbounds %struct.gv, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !68
  %88 = load ptr, ptr %87, align 8, !tbaa !75
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = call ptr @Perl_gv_add_by_type(ptr noundef %85, i32 noundef 0) #8
  %92 = getelementptr inbounds %struct.gv, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !68
  br label %94

94:                                               ; preds = %84, %90
  %95 = phi ptr [ %93, %90 ], [ %87, %84 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !64
  %97 = getelementptr inbounds %struct.sv, ptr %96, i64 0, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !69
  %99 = and i32 %98, 2097152
  %100 = icmp eq i32 %99, 0
  %101 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %102 = getelementptr inbounds %struct.gv, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !68
  %104 = load ptr, ptr %103, align 8, !tbaa !75
  %105 = icmp eq ptr %104, null
  br i1 %100, label %115, label %106

106:                                              ; preds = %94
  br i1 %105, label %107, label %111

107:                                              ; preds = %106
  %108 = call ptr @Perl_gv_add_by_type(ptr noundef %101, i32 noundef 0) #8
  %109 = getelementptr inbounds %struct.gv, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !68
  br label %111

111:                                              ; preds = %106, %107
  %112 = phi ptr [ %110, %107 ], [ %103, %106 ]
  %113 = load ptr, ptr %112, align 8, !tbaa !64
  %114 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %113, i32 noundef 2) #8
  br i1 %114, label %350, label %352

115:                                              ; preds = %94
  br i1 %105, label %116, label %120

116:                                              ; preds = %115
  %117 = call ptr @Perl_gv_add_by_type(ptr noundef %101, i32 noundef 0) #8
  %118 = getelementptr inbounds %struct.gv, ptr %117, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !68
  br label %120

120:                                              ; preds = %115, %116
  %121 = phi ptr [ %119, %116 ], [ %103, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !64
  %123 = getelementptr inbounds %struct.sv, ptr %122, i64 0, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !69
  %125 = and i32 %124, 65280
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %161

127:                                              ; preds = %120
  %128 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %129 = getelementptr inbounds %struct.gv, ptr %128, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !68
  %131 = load ptr, ptr %130, align 8, !tbaa !75
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = call ptr @Perl_gv_add_by_type(ptr noundef %128, i32 noundef 0) #8
  %135 = getelementptr inbounds %struct.gv, ptr %134, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !68
  br label %137

137:                                              ; preds = %127, %133
  %138 = phi ptr [ %136, %133 ], [ %130, %127 ]
  %139 = load ptr, ptr %138, align 8, !tbaa !64
  %140 = getelementptr inbounds %struct.sv, ptr %139, i64 0, i32 2
  %141 = load i32, ptr %140, align 4, !tbaa !69
  %142 = and i32 %141, 255
  %143 = icmp eq i32 %142, 8
  br i1 %143, label %161, label %144

144:                                              ; preds = %137
  %145 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %146 = getelementptr inbounds %struct.gv, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !68
  %148 = load ptr, ptr %147, align 8, !tbaa !75
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = call ptr @Perl_gv_add_by_type(ptr noundef %145, i32 noundef 0) #8
  %152 = getelementptr inbounds %struct.gv, ptr %151, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !68
  br label %154

154:                                              ; preds = %144, %150
  %155 = phi ptr [ %153, %150 ], [ %147, %144 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !64
  %157 = getelementptr inbounds %struct.sv, ptr %156, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !69
  %159 = and i32 %158, 16826623
  %160 = icmp eq i32 %159, 16777226
  br i1 %160, label %161, label %352

161:                                              ; preds = %154, %137, %120
  %162 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %163 = getelementptr inbounds %struct.gv, ptr %162, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !68
  %165 = load ptr, ptr %164, align 8, !tbaa !75
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = call ptr @Perl_gv_add_by_type(ptr noundef %162, i32 noundef 0) #8
  %169 = getelementptr inbounds %struct.gv, ptr %168, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !68
  br label %171

171:                                              ; preds = %161, %167
  %172 = phi ptr [ %170, %167 ], [ %164, %161 ]
  %173 = load ptr, ptr %172, align 8, !tbaa !64
  %174 = getelementptr inbounds %struct.sv, ptr %173, i64 0, i32 2
  %175 = load i32, ptr %174, align 4, !tbaa !69
  %176 = and i32 %175, 1024
  %177 = icmp eq i32 %176, 0
  %178 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %179 = getelementptr inbounds %struct.gv, ptr %178, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !68
  %181 = load ptr, ptr %180, align 8, !tbaa !75
  %182 = icmp eq ptr %181, null
  br i1 %177, label %244, label %183

183:                                              ; preds = %171
  br i1 %182, label %184, label %188

184:                                              ; preds = %183
  %185 = call ptr @Perl_gv_add_by_type(ptr noundef %178, i32 noundef 0) #8
  %186 = getelementptr inbounds %struct.gv, ptr %185, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !68
  br label %188

188:                                              ; preds = %183, %184
  %189 = phi ptr [ %187, %184 ], [ %180, %183 ]
  %190 = load ptr, ptr %189, align 8, !tbaa !64
  %191 = load ptr, ptr %190, align 8, !tbaa !77
  %192 = icmp eq ptr %191, null
  br i1 %192, label %352, label %193

193:                                              ; preds = %188
  %194 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %195 = getelementptr inbounds %struct.gv, ptr %194, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !68
  %197 = load ptr, ptr %196, align 8, !tbaa !75
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = call ptr @Perl_gv_add_by_type(ptr noundef %194, i32 noundef 0) #8
  %201 = getelementptr inbounds %struct.gv, ptr %200, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !68
  br label %203

203:                                              ; preds = %193, %199
  %204 = phi ptr [ %202, %199 ], [ %196, %193 ]
  %205 = load ptr, ptr %204, align 8, !tbaa !64
  %206 = load ptr, ptr %205, align 8, !tbaa !77
  %207 = getelementptr inbounds %struct.xpv, ptr %206, i64 0, i32 2
  %208 = load i64, ptr %207, align 8, !tbaa !78
  %209 = icmp ugt i64 %208, 1
  br i1 %209, label %350, label %210

210:                                              ; preds = %203
  %211 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %212 = getelementptr inbounds %struct.gv, ptr %211, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !68
  %214 = load ptr, ptr %213, align 8, !tbaa !75
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = call ptr @Perl_gv_add_by_type(ptr noundef %211, i32 noundef 0) #8
  %218 = getelementptr inbounds %struct.gv, ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !68
  br label %220

220:                                              ; preds = %210, %216
  %221 = phi ptr [ %219, %216 ], [ %213, %210 ]
  %222 = load ptr, ptr %221, align 8, !tbaa !64
  %223 = load ptr, ptr %222, align 8, !tbaa !77
  %224 = getelementptr inbounds %struct.xpv, ptr %223, i64 0, i32 2
  %225 = load i64, ptr %224, align 8, !tbaa !78
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %352, label %227

227:                                              ; preds = %220
  %228 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %229 = getelementptr inbounds %struct.gv, ptr %228, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !68
  %231 = load ptr, ptr %230, align 8, !tbaa !75
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %227
  %234 = call ptr @Perl_gv_add_by_type(ptr noundef %228, i32 noundef 0) #8
  %235 = getelementptr inbounds %struct.gv, ptr %234, i64 0, i32 3
  %236 = load ptr, ptr %235, align 8, !tbaa !68
  br label %237

237:                                              ; preds = %227, %233
  %238 = phi ptr [ %236, %233 ], [ %230, %227 ]
  %239 = load ptr, ptr %238, align 8, !tbaa !64
  %240 = getelementptr inbounds %struct.sv, ptr %239, i64 0, i32 3
  %241 = load ptr, ptr %240, align 8, !tbaa !68
  %242 = load i8, ptr %241, align 1, !tbaa !68
  %243 = icmp eq i8 %242, 48
  br i1 %243, label %352, label %350

244:                                              ; preds = %171
  br i1 %182, label %245, label %249

245:                                              ; preds = %244
  %246 = call ptr @Perl_gv_add_by_type(ptr noundef %178, i32 noundef 0) #8
  %247 = getelementptr inbounds %struct.gv, ptr %246, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !68
  br label %249

249:                                              ; preds = %244, %245
  %250 = phi ptr [ %248, %245 ], [ %180, %244 ]
  %251 = load ptr, ptr %250, align 8, !tbaa !64
  %252 = getelementptr inbounds %struct.sv, ptr %251, i64 0, i32 2
  %253 = load i32, ptr %252, align 4, !tbaa !69
  %254 = and i32 %253, 768
  %255 = icmp eq i32 %254, 0
  %256 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %257 = getelementptr inbounds %struct.gv, ptr %256, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !68
  %259 = load ptr, ptr %258, align 8, !tbaa !75
  %260 = icmp eq ptr %259, null
  br i1 %255, label %341, label %261

261:                                              ; preds = %249
  br i1 %260, label %262, label %266

262:                                              ; preds = %261
  %263 = call ptr @Perl_gv_add_by_type(ptr noundef %256, i32 noundef 0) #8
  %264 = getelementptr inbounds %struct.gv, ptr %263, i64 0, i32 3
  %265 = load ptr, ptr %264, align 8, !tbaa !68
  br label %266

266:                                              ; preds = %261, %262
  %267 = phi ptr [ %265, %262 ], [ %258, %261 ]
  %268 = load ptr, ptr %267, align 8, !tbaa !64
  %269 = getelementptr inbounds %struct.sv, ptr %268, i64 0, i32 2
  %270 = load i32, ptr %269, align 4, !tbaa !69
  %271 = and i32 %270, 256
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %290, label %273

273:                                              ; preds = %266
  %274 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %275 = getelementptr inbounds %struct.gv, ptr %274, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !68
  %277 = load ptr, ptr %276, align 8, !tbaa !75
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %283

279:                                              ; preds = %273
  %280 = call ptr @Perl_gv_add_by_type(ptr noundef %274, i32 noundef 0) #8
  %281 = getelementptr inbounds %struct.gv, ptr %280, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !68
  br label %283

283:                                              ; preds = %273, %279
  %284 = phi ptr [ %282, %279 ], [ %276, %273 ]
  %285 = load ptr, ptr %284, align 8, !tbaa !64
  %286 = load ptr, ptr %285, align 8, !tbaa !77
  %287 = getelementptr inbounds %struct.xpviv, ptr %286, i64 0, i32 4
  %288 = load i64, ptr %287, align 8, !tbaa !68
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %350

290:                                              ; preds = %283, %266
  %291 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %292 = getelementptr inbounds %struct.gv, ptr %291, i64 0, i32 3
  %293 = load ptr, ptr %292, align 8, !tbaa !68
  %294 = load ptr, ptr %293, align 8, !tbaa !75
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %300

296:                                              ; preds = %290
  %297 = call ptr @Perl_gv_add_by_type(ptr noundef %291, i32 noundef 0) #8
  %298 = getelementptr inbounds %struct.gv, ptr %297, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !68
  br label %300

300:                                              ; preds = %290, %296
  %301 = phi ptr [ %299, %296 ], [ %293, %290 ]
  %302 = load ptr, ptr %301, align 8, !tbaa !64
  %303 = getelementptr inbounds %struct.sv, ptr %302, i64 0, i32 2
  %304 = load i32, ptr %303, align 4, !tbaa !69
  %305 = and i32 %304, 512
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %352, label %307

307:                                              ; preds = %300
  %308 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %309 = getelementptr inbounds %struct.gv, ptr %308, i64 0, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !68
  %311 = load ptr, ptr %310, align 8, !tbaa !75
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %317

313:                                              ; preds = %307
  %314 = call ptr @Perl_gv_add_by_type(ptr noundef %308, i32 noundef 0) #8
  %315 = getelementptr inbounds %struct.gv, ptr %314, i64 0, i32 3
  %316 = load ptr, ptr %315, align 8, !tbaa !68
  br label %317

317:                                              ; preds = %307, %313
  %318 = phi ptr [ %316, %313 ], [ %310, %307 ]
  %319 = load ptr, ptr %318, align 8, !tbaa !64
  %320 = load ptr, ptr %319, align 8, !tbaa !77
  %321 = getelementptr inbounds %struct.xpvnv, ptr %320, i64 0, i32 5
  %322 = load double, ptr %321, align 8, !tbaa !68
  %323 = fcmp uno double %322, 0.000000e+00
  br i1 %323, label %350, label %324

324:                                              ; preds = %317
  %325 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %326 = getelementptr inbounds %struct.gv, ptr %325, i64 0, i32 3
  %327 = load ptr, ptr %326, align 8, !tbaa !68
  %328 = load ptr, ptr %327, align 8, !tbaa !75
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %334

330:                                              ; preds = %324
  %331 = call ptr @Perl_gv_add_by_type(ptr noundef %325, i32 noundef 0) #8
  %332 = getelementptr inbounds %struct.gv, ptr %331, i64 0, i32 3
  %333 = load ptr, ptr %332, align 8, !tbaa !68
  br label %334

334:                                              ; preds = %324, %330
  %335 = phi ptr [ %333, %330 ], [ %327, %324 ]
  %336 = load ptr, ptr %335, align 8, !tbaa !64
  %337 = load ptr, ptr %336, align 8, !tbaa !77
  %338 = getelementptr inbounds %struct.xpvnv, ptr %337, i64 0, i32 5
  %339 = load double, ptr %338, align 8, !tbaa !68
  %340 = fcmp une double %339, 0.000000e+00
  br i1 %340, label %350, label %352

341:                                              ; preds = %249
  br i1 %260, label %342, label %346

342:                                              ; preds = %341
  %343 = call ptr @Perl_gv_add_by_type(ptr noundef %256, i32 noundef 0) #8
  %344 = getelementptr inbounds %struct.gv, ptr %343, i64 0, i32 3
  %345 = load ptr, ptr %344, align 8, !tbaa !68
  br label %346

346:                                              ; preds = %341, %342
  %347 = phi ptr [ %345, %342 ], [ %258, %341 ]
  %348 = load ptr, ptr %347, align 8, !tbaa !64
  %349 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %348, i32 noundef 0) #8
  br i1 %349, label %350, label %352

350:                                              ; preds = %317, %237, %346, %334, %283, %203, %111
  %351 = getelementptr inbounds %struct.p_state, ptr %27, i64 0, i32 7
  store i8 0, ptr %28, align 1, !tbaa !72
  store i8 0, ptr %351, align 2, !tbaa !80
  call void (ptr, ...) @Perl_croak(ptr noundef null) #8
  br label %352

352:                                              ; preds = %346, %334, %154, %80, %350, %300, %237, %220, %188, %111
  %353 = icmp eq ptr %70, null
  br i1 %353, label %374, label %354

354:                                              ; preds = %352
  %355 = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 2
  %356 = load i32, ptr %355, align 4, !tbaa !69
  %357 = and i32 %356, 65280
  %358 = icmp ne i32 %357, 0
  %359 = and i32 %356, 255
  %360 = icmp eq i32 %359, 8
  %361 = or i1 %358, %360
  %362 = and i32 %356, 16777471
  %363 = icmp eq i32 %362, 16777226
  %364 = or i1 %363, %361
  br i1 %364, label %365, label %374

365:                                              ; preds = %354
  %366 = and i32 %356, 2098176
  %367 = icmp eq i32 %366, 1024
  br i1 %367, label %368, label %372

368:                                              ; preds = %365
  %369 = load ptr, ptr %70, align 8, !tbaa !77
  %370 = getelementptr inbounds %struct.xpv, ptr %369, i64 0, i32 2
  %371 = load i64, ptr %370, align 8, !tbaa !78
  store i64 %371, ptr %2, align 8, !tbaa !81
  br label %375

372:                                              ; preds = %365
  %373 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %70, ptr noundef nonnull %2, i32 noundef 2) #8
  br label %375

374:                                              ; preds = %354, %352
  store i64 0, ptr %2, align 8, !tbaa !81
  br label %375

375:                                              ; preds = %368, %372, %374
  %376 = load i64, ptr %2, align 8, !tbaa !81
  %377 = icmp eq i64 %376, 0
  %378 = select i1 %377, ptr null, ptr %70
  call fastcc void @parse(ptr noundef %27, ptr noundef %378, ptr noundef %24)
  %379 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %380 = load i64, ptr %2, align 8, !tbaa !81
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %375
  %383 = load i8, ptr %45, align 2, !tbaa !80, !range !73, !noundef !74
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %46, label %385, !llvm.loop !82

385:                                              ; preds = %375, %382
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %388

386:                                              ; preds = %37, %32
  tail call fastcc void @parse(ptr noundef %27, ptr noundef %26, ptr noundef %24)
  %387 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  br label %388

388:                                              ; preds = %386, %385
  %389 = phi ptr [ %379, %385 ], [ %387, %386 ]
  store i8 0, ptr %28, align 1, !tbaa !72
  %390 = getelementptr inbounds %struct.p_state, ptr %27, i64 0, i32 7
  %391 = load i8, ptr %390, align 2, !tbaa !80, !range !73, !noundef !74
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %396, label %393

393:                                              ; preds = %388
  store i8 0, ptr %390, align 2, !tbaa !80
  %394 = call ptr @Perl_sv_newmortal() #8
  %395 = getelementptr inbounds ptr, ptr %389, i64 1
  store ptr %394, ptr %395, align 8, !tbaa !64
  br label %398

396:                                              ; preds = %388
  %397 = getelementptr inbounds ptr, ptr %389, i64 1
  store ptr %24, ptr %397, align 8, !tbaa !64
  br label %398

398:                                              ; preds = %396, %393
  %399 = phi ptr [ %395, %393 ], [ %397, %396 ]
  store ptr %399, ptr @PL_stack_sp, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_HTML__Parser_eof(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %5 = load i32, ptr %3, align 4, !tbaa !65
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str) #8
  br label %15

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %17 = getelementptr ptr, ptr %16, i64 %7
  %18 = getelementptr ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = tail call fastcc ptr @get_pstate_hv(ptr noundef %19)
  %21 = getelementptr inbounds %struct.p_state, ptr %20, i64 0, i32 6
  %22 = load i8, ptr %21, align 1, !tbaa !72, !range !73, !noundef !74
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.p_state, ptr %20, i64 0, i32 7
  store i8 1, ptr %25, align 2, !tbaa !80
  br label %27

26:                                               ; preds = %15
  store i8 1, ptr %21, align 1, !tbaa !72
  tail call fastcc void @parse(ptr noundef %20, ptr noundef null, ptr noundef %19)
  store i8 0, ptr %21, align 1, !tbaa !72
  br label %27

27:                                               ; preds = %26, %24
  %28 = shl i64 %11, 29
  %29 = ashr i64 %28, 32
  %30 = sub nsw i64 0, %29
  %31 = getelementptr inbounds ptr, ptr %2, i64 %30
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  store ptr %19, ptr %32, align 8, !tbaa !64
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_HTML__Parser_strict_comment(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %5 = load i32, ptr %3, align 4, !tbaa !65
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = icmp slt i32 %14, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.90) #8
  br label %20

20:                                               ; preds = %19, %1
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %22 = sext i32 %7 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = tail call fastcc ptr @get_pstate_hv(ptr noundef %24)
  switch i32 %17, label %52 [
    i32 1, label %26
    i32 2, label %28
    i32 3, label %30
    i32 4, label %32
    i32 5, label %34
    i32 6, label %36
    i32 7, label %38
    i32 8, label %40
    i32 9, label %42
    i32 10, label %44
    i32 11, label %46
    i32 12, label %48
    i32 13, label %50
  ]

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 21
  br label %53

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 22
  br label %53

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 24
  br label %53

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 25
  br label %53

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 20
  br label %53

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 26
  br label %53

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 27
  br label %53

40:                                               ; preds = %20
  %41 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 23
  br label %53

42:                                               ; preds = %20
  %43 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 28
  br label %53

44:                                               ; preds = %20
  %45 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 29
  br label %53

46:                                               ; preds = %20
  %47 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 30
  br label %53

48:                                               ; preds = %20
  %49 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 31
  br label %53

50:                                               ; preds = %20
  %51 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 32
  br label %53

52:                                               ; preds = %20
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.91, i32 noundef %17) #8
  br label %53

53:                                               ; preds = %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26
  %54 = phi ptr [ null, %52 ], [ %51, %50 ], [ %49, %48 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ]
  %55 = load i8, ptr %54, align 1, !tbaa !83, !range !73, !noundef !74
  %56 = icmp sgt i32 %14, 1
  br i1 %56, label %57, label %125

57:                                               ; preds = %53
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %59 = sext i32 %5 to i64
  %60 = getelementptr ptr, ptr %58, i64 %59
  %61 = getelementptr ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !64
  %63 = icmp eq ptr %62, null
  br i1 %63, label %123, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !69
  %67 = and i32 %66, 2097152
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %62, i32 noundef 2) #8
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
  %84 = load ptr, ptr %62, align 8, !tbaa !77
  %85 = icmp eq ptr %84, null
  br i1 %85, label %120, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.xpv, ptr %84, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !78
  %89 = icmp ugt i64 %88, 1
  br i1 %89, label %120, label %90

90:                                               ; preds = %86
  %91 = icmp eq i64 %88, 0
  br i1 %91, label %120, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !68
  %95 = load i8, ptr %94, align 1, !tbaa !68
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
  %104 = load ptr, ptr %62, align 8, !tbaa !77
  %105 = getelementptr inbounds %struct.xpviv, ptr %104, i64 0, i32 4
  %106 = load i64, ptr %105, align 8, !tbaa !68
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %103, %100
  %109 = and i32 %66, 512
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %62, align 8, !tbaa !77
  %113 = getelementptr inbounds %struct.xpvnv, ptr %112, i64 0, i32 5
  %114 = load double, ptr %113, align 8, !tbaa !68
  %115 = fcmp uno double %114, 0.000000e+00
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = fcmp une double %114, 0.000000e+00
  br label %120

118:                                              ; preds = %97
  %119 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %62, i32 noundef 0) #8
  br label %120

120:                                              ; preds = %111, %103, %116, %108, %83, %90, %92, %86, %71, %118, %69
  %121 = phi i1 [ %70, %69 ], [ %119, %118 ], [ false, %71 ], [ false, %83 ], [ true, %86 ], [ false, %90 ], [ %96, %92 ], [ true, %103 ], [ false, %108 ], [ %117, %116 ], [ true, %111 ]
  %122 = zext i1 %121 to i8
  br label %123

123:                                              ; preds = %57, %120
  %124 = phi i8 [ %122, %120 ], [ 0, %57 ]
  store i8 %124, ptr %54, align 1, !tbaa !83
  br label %125

125:                                              ; preds = %123, %53
  %126 = icmp eq i8 %55, 0
  %127 = select i1 %126, ptr @PL_sv_no, ptr @PL_sv_yes
  %128 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %129 = getelementptr inbounds ptr, ptr %128, i64 %22
  store ptr %127, ptr %129, align 8, !tbaa !64
  %130 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %131 = getelementptr inbounds ptr, ptr %130, i64 %22
  %132 = load ptr, ptr %131, align 8, !tbaa !64
  %133 = tail call ptr @Perl_sv_2mortal(ptr noundef %132) #8
  %134 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %135 = getelementptr inbounds ptr, ptr %134, i64 %22
  store ptr %135, ptr @PL_stack_sp, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_HTML__Parser_boolean_attribute_value(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %5 = load i32, ptr %3, align 4, !tbaa !65
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.90) #8
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = tail call fastcc ptr @get_pstate_hv(ptr noundef %21)
  %23 = getelementptr inbounds %struct.p_state, ptr %22, i64 0, i32 33
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %24) #8
  br label %28

28:                                               ; preds = %17, %26
  %29 = phi ptr [ %27, %26 ], [ @PL_sv_undef, %17 ]
  %30 = icmp sgt i32 %14, 1
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load ptr, ptr %23, align 8, !tbaa !51
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !46
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = add i32 %36, -1
  store i32 %39, ptr %35, align 8, !tbaa !46
  br label %41

40:                                               ; preds = %34
  tail call void @Perl_sv_free2(ptr noundef nonnull %32, i32 noundef %36) #8
  br label %41

41:                                               ; preds = %31, %38, %40
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %43 = getelementptr ptr, ptr %42, i64 %8
  %44 = getelementptr ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !64
  %46 = tail call ptr @Perl_newSVsv(ptr noundef %45) #8
  store ptr %46, ptr %23, align 8, !tbaa !51
  br label %47

47:                                               ; preds = %41, %28
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %49 = getelementptr inbounds ptr, ptr %48, i64 %19
  store ptr %29, ptr %49, align 8, !tbaa !64
  %50 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %51 = getelementptr inbounds ptr, ptr %50, i64 %19
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = tail call ptr @Perl_sv_2mortal(ptr noundef %52) #8
  %54 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %55 = getelementptr inbounds ptr, ptr %54, i64 %19
  store ptr %55, ptr @PL_stack_sp, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_HTML__Parser_ignore_tags(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %5 = load i32, ptr %3, align 4, !tbaa !65
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %0, align 8, !tbaa !66
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = icmp slt i32 %14, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.90) #8
  br label %20

20:                                               ; preds = %19, %1
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %22 = sext i32 %7 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = tail call fastcc ptr @get_pstate_hv(ptr noundef %24)
  switch i32 %17, label %32 [
    i32 1, label %26
    i32 2, label %28
    i32 3, label %30
  ]

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 36
  br label %33

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 37
  br label %33

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.p_state, ptr %25, i64 0, i32 38
  br label %33

32:                                               ; preds = %20
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.92, i32 noundef %17) #8
  br label %33

33:                                               ; preds = %32, %30, %28, %26
  %34 = phi ptr [ null, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ]
  %35 = load ptr, ptr @PL_op, align 8, !tbaa !64
  %36 = getelementptr inbounds %struct.op, ptr %35, i64 0, i32 5
  %37 = load i8, ptr %36, align 2, !tbaa !84
  %38 = and i8 %37, 3
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = zext nneg i8 %38 to i32
  br label %44

42:                                               ; preds = %33
  %43 = tail call i32 @Perl_block_gimme() #8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.93) #8
  br label %48

48:                                               ; preds = %47, %44
  %49 = add nsw i32 %14, -1
  %50 = icmp eq i32 %49, 0
  %51 = load ptr, ptr %34, align 8, !tbaa !64
  %52 = icmp eq ptr %51, null
  br i1 %50, label %102, label %53

53:                                               ; preds = %48
  br i1 %52, label %55, label %54

54:                                               ; preds = %53
  tail call void @Perl_hv_clear(ptr noundef nonnull %51) #8
  br label %57

55:                                               ; preds = %53
  %56 = tail call ptr @Perl_newSV_type(i32 noundef 12) #8
  store ptr %56, ptr %34, align 8, !tbaa !64
  br label %57

57:                                               ; preds = %55, %54
  %58 = icmp sgt i32 %14, 1
  br i1 %58, label %59, label %111

59:                                               ; preds = %57
  %60 = sext i32 %7 to i64
  %61 = zext i32 %49 to i64
  br label %62

62:                                               ; preds = %59, %100
  %63 = phi i64 [ 0, %59 ], [ %65, %100 ]
  %64 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %65 = add nuw nsw i64 %63, 1
  %66 = getelementptr ptr, ptr %64, i64 %65
  %67 = getelementptr ptr, ptr %66, i64 %60
  %68 = load ptr, ptr %67, align 8, !tbaa !64
  %69 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !69
  %71 = and i32 %70, 2048
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !68
  %76 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !69
  %78 = and i32 %77, 255
  %79 = icmp eq i32 %78, 11
  br i1 %79, label %80, label %95

80:                                               ; preds = %73
  %81 = tail call i64 @Perl_av_len(ptr noundef %75) #8
  %82 = icmp eq i64 %81, -1
  br i1 %82, label %100, label %83

83:                                               ; preds = %80, %92
  %84 = phi i64 [ %93, %92 ], [ 0, %80 ]
  %85 = tail call ptr @Perl_av_fetch(ptr noundef %75, i64 noundef %84, i32 noundef 0) #8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %34, align 8, !tbaa !64
  %89 = load ptr, ptr %85, align 8, !tbaa !64
  %90 = tail call ptr @Perl_newSViv(i64 noundef 0) #8
  %91 = tail call ptr @Perl_hv_common(ptr noundef %88, ptr noundef %89, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %90, i32 noundef 0) #8
  br label %92

92:                                               ; preds = %87, %83
  %93 = add nuw i64 %84, 1
  %94 = icmp eq i64 %84, %81
  br i1 %94, label %100, label %83, !llvm.loop !86

95:                                               ; preds = %73
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.94) #8
  br label %100

96:                                               ; preds = %62
  %97 = load ptr, ptr %34, align 8, !tbaa !64
  %98 = tail call ptr @Perl_newSViv(i64 noundef 0) #8
  %99 = tail call ptr @Perl_hv_common(ptr noundef %97, ptr noundef %68, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %98, i32 noundef 0) #8
  br label %100

100:                                              ; preds = %92, %80, %95, %96
  %101 = icmp eq i64 %65, %61
  br i1 %101, label %111, label %62, !llvm.loop !87

102:                                              ; preds = %48
  br i1 %52, label %111, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !46
  %106 = icmp ugt i32 %105, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = add i32 %105, -1
  store i32 %108, ptr %104, align 8, !tbaa !46
  br label %110

109:                                              ; preds = %103
  tail call void @Perl_sv_free2(ptr noundef nonnull %51, i32 noundef %105) #8
  br label %110

110:                                              ; preds = %107, %109
  store ptr null, ptr %34, align 8, !tbaa !64
  br label %111

111:                                              ; preds = %100, %57, %102, %110
  %112 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %113 = getelementptr inbounds ptr, ptr %112, i64 %22
  %114 = getelementptr inbounds ptr, ptr %113, i64 -1
  store ptr %114, ptr @PL_stack_sp, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_HTML__Parser_handler(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 1
  %6 = alloca i64, align 8
  %7 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %8 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %9 = getelementptr inbounds i32, ptr %8, i64 -1
  store ptr %9, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %10 = load i32, ptr %8, align 4, !tbaa !65
  %11 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = ptrtoint ptr %7 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 3
  %18 = trunc i64 %17 to i32
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.95) #8
  br label %21

21:                                               ; preds = %20, %1
  %22 = shl i64 %16, 29
  %23 = ashr i64 %22, 32
  %24 = sub nsw i64 0, %23
  %25 = getelementptr inbounds ptr, ptr %7, i64 %24
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %27 = getelementptr ptr, ptr %26, i64 %12
  %28 = getelementptr ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !64
  %30 = tail call fastcc ptr @get_pstate_hv(ptr noundef %29)
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %32 = getelementptr ptr, ptr %31, i64 %12
  %33 = getelementptr ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !69
  %37 = and i32 %36, 2098176
  %38 = icmp eq i32 %37, 1024
  br i1 %38, label %39, label %45

39:                                               ; preds = %21
  %40 = load ptr, ptr %34, align 8, !tbaa !77
  %41 = getelementptr inbounds %struct.xpv, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !78
  store i64 %42, ptr %6, align 8, !tbaa !81
  %43 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  br label %47

45:                                               ; preds = %21
  %46 = call ptr @Perl_sv_2pv_flags(ptr noundef %34, ptr noundef nonnull %6, i32 noundef 2) #8
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi ptr [ %44, %39 ], [ %46, %45 ]
  br label %49

49:                                               ; preds = %47, %55
  %50 = phi i64 [ 0, %47 ], [ %56, %55 ]
  %51 = getelementptr inbounds [9 x ptr], ptr @event_id_str, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(1) %52) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = add nuw nsw i64 %50, 1
  %57 = icmp eq i64 %56, 9
  br i1 %57, label %60, label %49, !llvm.loop !88

58:                                               ; preds = %49
  %59 = trunc i64 %50 to i32
  br label %60

60:                                               ; preds = %55, %58
  %61 = phi i32 [ %59, %58 ], [ -1, %55 ]
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.96, ptr noundef %48) #8
  br label %64

64:                                               ; preds = %63, %60
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds %struct.p_state, ptr %30, i64 0, i32 34, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  %68 = icmp eq ptr %67, null
  br i1 %68, label %82, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !69
  %72 = and i32 %71, 255
  %73 = icmp eq i32 %72, 11
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call ptr @Perl_newRV(ptr noundef nonnull %67) #8
  br label %78

76:                                               ; preds = %69
  %77 = call ptr @Perl_newSVsv(ptr noundef nonnull %67) #8
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi ptr [ %77, %76 ], [ %75, %74 ]
  %80 = call ptr @Perl_sv_2mortal(ptr noundef %79) #8
  %81 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr %80, ptr %81, align 8, !tbaa !64
  br label %84

82:                                               ; preds = %64
  %83 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr @PL_sv_undef, ptr %83, align 8, !tbaa !64
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi ptr [ %81, %78 ], [ %83, %82 ]
  %86 = icmp sgt i32 %18, 3
  br i1 %86, label %87, label %322

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.p_state, ptr %30, i64 0, i32 34, i64 %65, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !54
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.sv, ptr %89, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !46
  %94 = icmp ugt i32 %93, 1
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = add i32 %93, -1
  store i32 %96, ptr %92, align 8, !tbaa !46
  br label %98

97:                                               ; preds = %91
  call void @Perl_sv_free2(ptr noundef nonnull %89, i32 noundef %93) #8
  br label %98

98:                                               ; preds = %87, %95, %97
  store ptr null, ptr %88, align 8, !tbaa !54
  %99 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %100 = getelementptr ptr, ptr %99, i64 %12
  %101 = getelementptr ptr, ptr %100, i64 4
  %102 = load ptr, ptr %101, align 8, !tbaa !64
  %103 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.47, i64 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %104 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !69
  %106 = and i32 %105, 2098176
  %107 = icmp eq i32 %106, 1024
  br i1 %107, label %108, label %114

108:                                              ; preds = %98
  %109 = load ptr, ptr %102, align 8, !tbaa !77
  %110 = getelementptr inbounds %struct.xpv, ptr %109, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !78
  store i64 %111, ptr %2, align 8, !tbaa !81
  %112 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !68
  br label %116

114:                                              ; preds = %98
  %115 = call ptr @Perl_sv_2pv_flags(ptr noundef %102, ptr noundef nonnull %2, i32 noundef 2) #8
  br label %116

116:                                              ; preds = %114, %108
  %117 = phi ptr [ %113, %108 ], [ %115, %114 ]
  %118 = load i64, ptr %2, align 8, !tbaa !81
  %119 = getelementptr inbounds i8, ptr %117, i64 %118
  %120 = load i32, ptr %104, align 4, !tbaa !69
  %121 = and i32 %120, 536870912
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !69
  %126 = or i32 %125, 536870912
  store i32 %126, ptr %124, align 4, !tbaa !69
  br label %127

127:                                              ; preds = %123, %116
  br label %128

128:                                              ; preds = %127, %128
  %129 = phi ptr [ %136, %128 ], [ %117, %127 ]
  %130 = load i8, ptr %129, align 1, !tbaa !68
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !68
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  %136 = getelementptr inbounds i8, ptr %129, i64 1
  br i1 %135, label %137, label %128, !llvm.loop !89

137:                                              ; preds = %128
  %138 = icmp eq i8 %130, 64
  br i1 %138, label %139, label %161

139:                                              ; preds = %137, %139
  %140 = phi ptr [ %141, %139 ], [ %129, %137 ]
  %141 = getelementptr inbounds i8, ptr %140, i64 1
  %142 = load i8, ptr %141, align 1, !tbaa !68
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !68
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %139, !llvm.loop !90

148:                                              ; preds = %139
  %149 = icmp eq i8 %142, 123
  br i1 %149, label %150, label %161

150:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 22, ptr %3, align 1, !tbaa !68
  call void @Perl_sv_catpvn_flags(ptr noundef %103, ptr noundef nonnull %3, i64 noundef 1, i32 noundef 2) #8
  br label %151

151:                                              ; preds = %151, %150
  %152 = phi ptr [ %141, %150 ], [ %153, %151 ]
  %153 = getelementptr inbounds i8, ptr %152, i64 1
  %154 = load i8, ptr %153, align 1, !tbaa !68
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !68
  %158 = and i8 %157, 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %151, !llvm.loop !91

160:                                              ; preds = %151
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %161

161:                                              ; preds = %160, %148, %137
  %162 = phi ptr [ %129, %137 ], [ %153, %160 ], [ %129, %148 ]
  %163 = icmp ult ptr %162, %119
  br i1 %163, label %164, label %321

164:                                              ; preds = %161
  %165 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 1
  %166 = getelementptr inbounds %struct.p_state, ptr %30, i64 0, i32 3
  %167 = getelementptr inbounds %struct.p_state, ptr %30, i64 0, i32 17
  %168 = getelementptr inbounds %struct.p_state, ptr %30, i64 0, i32 35
  %169 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 3
  br label %172

170:                                              ; preds = %312
  %171 = icmp ult ptr %314, %119
  br i1 %171, label %172, label %321, !llvm.loop !92

172:                                              ; preds = %164, %170
  %173 = phi ptr [ %162, %164 ], [ %314, %170 ]
  %174 = load i8, ptr %173, align 1, !tbaa !68
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !68
  %178 = and i8 %177, 2
  %179 = icmp ne i8 %178, 0
  %180 = icmp eq i8 %174, 64
  %181 = or i1 %180, %179
  br i1 %181, label %182, label %240

182:                                              ; preds = %172, %182
  %183 = phi ptr [ %184, %182 ], [ %173, %172 ]
  %184 = getelementptr inbounds i8, ptr %183, i64 1
  %185 = load i8, ptr %184, align 1, !tbaa !68
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !68
  %189 = and i8 %188, 4
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %182, !llvm.loop !93

191:                                              ; preds = %182
  %192 = ptrtoint ptr %184 to i64
  %193 = ptrtoint ptr %173 to i64
  %194 = sub i64 %192, %193
  br label %195

195:                                              ; preds = %191, %205
  %196 = phi ptr [ @argname, %191 ], [ %207, %205 ]
  %197 = phi i32 [ 1, %191 ], [ %206, %205 ]
  %198 = load ptr, ptr %196, align 8, !tbaa !64
  %199 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %198, ptr noundef nonnull dereferenceable(1) %173, i64 noundef %194) #9
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = getelementptr inbounds i8, ptr %198, i64 %194
  %203 = load i8, ptr %202, align 1, !tbaa !68
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %201, %195
  %206 = add nuw nsw i32 %197, 1
  %207 = getelementptr inbounds ptr, ptr %196, i64 1
  %208 = icmp eq i32 %206, 21
  br i1 %208, label %236, label %195, !llvm.loop !94

209:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  %210 = trunc i32 %197 to i8
  store i8 %210, ptr %4, align 1, !tbaa !68
  call void @Perl_sv_catpvn_flags(ptr noundef %103, ptr noundef nonnull %4, i64 noundef 1, i32 noundef 2) #8
  %211 = add nsw i32 %197, -17
  %212 = icmp ult i32 %211, 2
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load i64, ptr %166, align 8, !tbaa !95
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  store i64 1, ptr %166, align 8, !tbaa !95
  br label %217

217:                                              ; preds = %216, %213, %209
  %218 = icmp eq i32 %197, 13
  br i1 %218, label %219, label %224

219:                                              ; preds = %217
  %220 = load ptr, ptr %167, align 8, !tbaa !49
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.47, i64 noundef 0) #8
  store ptr %223, ptr %167, align 8, !tbaa !49
  br label %224

224:                                              ; preds = %222, %219, %217
  %225 = add nsw i32 %197, -7
  %226 = icmp ult i32 %225, 2
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load i32, ptr %168, align 8, !tbaa !96
  %229 = icmp eq i32 %228, 11
  br i1 %229, label %235, label %230

230:                                              ; preds = %227
  store i32 7, ptr %168, align 8, !tbaa !96
  br label %235

231:                                              ; preds = %224
  %232 = icmp eq i32 %197, 11
  br i1 %232, label %233, label %235

233:                                              ; preds = %231
  %234 = getelementptr inbounds %struct.p_state, ptr %30, i64 0, i32 35
  store i32 11, ptr %234, align 8, !tbaa !96
  br label %235

235:                                              ; preds = %233, %231, %230, %227
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  br label %275

236:                                              ; preds = %205
  %237 = ptrtoint ptr %184 to i64
  %238 = ptrtoint ptr %173 to i64
  %239 = sub i64 %237, %238
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.97, i64 noundef %239, ptr noundef nonnull %173) #8
  br label %275

240:                                              ; preds = %172
  switch i8 %174, label %274 [
    i8 34, label %241
    i8 39, label %241
  ]

241:                                              ; preds = %240, %240
  %242 = getelementptr inbounds i8, ptr %173, i64 1
  %243 = icmp ult ptr %242, %119
  br i1 %243, label %244, label %253

244:                                              ; preds = %241, %250
  %245 = phi ptr [ %251, %250 ], [ %242, %241 ]
  %246 = load i8, ptr %245, align 1, !tbaa !68
  %247 = icmp eq i8 %246, %174
  %248 = icmp eq i8 %246, 92
  %249 = or i1 %247, %248
  br i1 %249, label %253, label %250

250:                                              ; preds = %244
  %251 = getelementptr inbounds i8, ptr %245, i64 1
  %252 = icmp ult ptr %251, %119
  br i1 %252, label %244, label %253, !llvm.loop !97

253:                                              ; preds = %250, %244, %241
  %254 = phi ptr [ %242, %241 ], [ %251, %250 ], [ %245, %244 ]
  %255 = load i8, ptr %254, align 1, !tbaa !68
  %256 = icmp eq i8 %255, %174
  br i1 %256, label %257, label %270

257:                                              ; preds = %253
  %258 = ptrtoint ptr %254 to i64
  %259 = ptrtoint ptr %173 to i64
  %260 = xor i64 %259, -1
  %261 = add i64 %258, %260
  %262 = trunc i64 %261 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  %263 = icmp sgt i32 %262, 255
  br i1 %263, label %264, label %265

264:                                              ; preds = %257
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.98) #8
  br label %265

265:                                              ; preds = %264, %257
  store i8 21, ptr %5, align 1, !tbaa !68
  %266 = trunc i64 %261 to i8
  store i8 %266, ptr %165, align 1, !tbaa !68
  call void @Perl_sv_catpvn_flags(ptr noundef %103, ptr noundef nonnull %5, i64 noundef 2, i32 noundef 2) #8
  %267 = shl i64 %261, 32
  %268 = ashr exact i64 %267, 32
  call void @Perl_sv_catpvn_flags(ptr noundef %103, ptr noundef nonnull %242, i64 noundef %268, i32 noundef 2) #8
  %269 = getelementptr inbounds i8, ptr %254, i64 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  br label %275

270:                                              ; preds = %253
  %271 = icmp eq i8 %255, 92
  br i1 %271, label %272, label %273

272:                                              ; preds = %270
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.99) #8
  br label %275

273:                                              ; preds = %270
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.100) #8
  br label %275

274:                                              ; preds = %240
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.101, ptr noundef nonnull %173) #8
  br label %275

275:                                              ; preds = %274, %273, %272, %265, %236, %235
  %276 = phi ptr [ %254, %273 ], [ %254, %272 ], [ %269, %265 ], [ %184, %235 ], [ %184, %236 ], [ %173, %274 ]
  br label %277

277:                                              ; preds = %275, %277
  %278 = phi ptr [ %285, %277 ], [ %276, %275 ]
  %279 = load i8, ptr %278, align 1, !tbaa !68
  %280 = zext i8 %279 to i64
  %281 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !68
  %283 = and i8 %282, 1
  %284 = icmp eq i8 %283, 0
  %285 = getelementptr inbounds i8, ptr %278, i64 1
  br i1 %284, label %286, label %277, !llvm.loop !98

286:                                              ; preds = %277
  %287 = icmp eq i8 %279, 125
  br i1 %287, label %288, label %304

288:                                              ; preds = %286
  %289 = load ptr, ptr %169, align 8, !tbaa !68
  %290 = load i8, ptr %289, align 1, !tbaa !68
  %291 = icmp eq i8 %290, 22
  br i1 %291, label %292, label %304

292:                                              ; preds = %288, %292
  %293 = phi ptr [ %294, %292 ], [ %278, %288 ]
  %294 = getelementptr inbounds i8, ptr %293, i64 1
  %295 = load i8, ptr %294, align 1, !tbaa !68
  %296 = zext i8 %295 to i64
  %297 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !68
  %299 = and i8 %298, 1
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %292, !llvm.loop !99

301:                                              ; preds = %292
  %302 = icmp ult ptr %294, %119
  br i1 %302, label %303, label %304

303:                                              ; preds = %301
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.102, ptr noundef nonnull %294) #8
  br label %304

304:                                              ; preds = %303, %301, %288, %286
  %305 = phi ptr [ %294, %303 ], [ %294, %301 ], [ %278, %288 ], [ %278, %286 ]
  %306 = icmp eq ptr %305, %119
  br i1 %306, label %321, label %307

307:                                              ; preds = %304
  %308 = load i8, ptr %305, align 1, !tbaa !68
  %309 = icmp eq i8 %308, 44
  br i1 %309, label %311, label %310

310:                                              ; preds = %307
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.103) #8
  br label %311

311:                                              ; preds = %310, %307
  br label %312

312:                                              ; preds = %311, %312
  %313 = phi ptr [ %314, %312 ], [ %305, %311 ]
  %314 = getelementptr inbounds i8, ptr %313, i64 1
  %315 = load i8, ptr %314, align 1, !tbaa !68
  %316 = zext i8 %315 to i64
  %317 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !68
  %319 = and i8 %318, 1
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %170, label %312, !llvm.loop !100

321:                                              ; preds = %304, %170, %161
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  store ptr %103, ptr %88, align 8, !tbaa !54
  br label %322

322:                                              ; preds = %321, %84
  %323 = icmp sgt i32 %18, 2
  br i1 %323, label %324, label %381

324:                                              ; preds = %322
  %325 = load ptr, ptr %66, align 8, !tbaa !52
  %326 = icmp eq ptr %325, null
  br i1 %326, label %334, label %327

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.sv, ptr %325, i64 0, i32 1
  %329 = load i32, ptr %328, align 8, !tbaa !46
  %330 = icmp ugt i32 %329, 1
  br i1 %330, label %331, label %333

331:                                              ; preds = %327
  %332 = add i32 %329, -1
  store i32 %332, ptr %328, align 8, !tbaa !46
  br label %334

333:                                              ; preds = %327
  call void @Perl_sv_free2(ptr noundef nonnull %325, i32 noundef %329) #8
  br label %334

334:                                              ; preds = %324, %331, %333
  store ptr null, ptr %66, align 8, !tbaa !52
  %335 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %336 = getelementptr ptr, ptr %335, i64 %12
  %337 = getelementptr ptr, ptr %336, i64 3
  %338 = load ptr, ptr %337, align 8, !tbaa !64
  %339 = getelementptr inbounds %struct.sv, ptr %338, i64 0, i32 2
  %340 = load i32, ptr %339, align 4, !tbaa !69
  %341 = and i32 %340, 2097152
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %334
  %344 = call i32 @Perl_mg_get(ptr noundef %338) #8
  br label %345

345:                                              ; preds = %343, %334
  %346 = load i32, ptr %339, align 4, !tbaa !69
  %347 = and i32 %346, 2048
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %367, label %349

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.sv, ptr %338, i64 0, i32 3
  %351 = load ptr, ptr %350, align 8, !tbaa !68
  %352 = getelementptr inbounds %struct.sv, ptr %351, i64 0, i32 2
  %353 = load i32, ptr %352, align 4, !tbaa !69
  %354 = trunc i32 %353 to i8
  switch i8 %354, label %363 [
    i8 13, label %355
    i8 11, label %357
  ]

355:                                              ; preds = %349
  %356 = call ptr @Perl_newSVsv(ptr noundef %338) #8
  br label %364

357:                                              ; preds = %349
  %358 = icmp eq ptr %351, null
  br i1 %358, label %364, label %359

359:                                              ; preds = %357
  %360 = getelementptr inbounds %struct.sv, ptr %351, i64 0, i32 1
  %361 = load i32, ptr %360, align 8, !tbaa !46
  %362 = add i32 %361, 1
  store i32 %362, ptr %360, align 8, !tbaa !46
  br label %364

363:                                              ; preds = %349
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.104) #8
  br label %364

364:                                              ; preds = %363, %359, %357, %355
  %365 = phi ptr [ %356, %355 ], [ undef, %363 ], [ %351, %357 ], [ %351, %359 ]
  %366 = phi i1 [ false, %355 ], [ true, %363 ], [ false, %357 ], [ false, %359 ]
  br i1 %366, label %367, label %379

367:                                              ; preds = %364, %345
  %368 = load i32, ptr %339, align 4, !tbaa !69
  %369 = and i32 %368, 65280
  %370 = icmp ne i32 %369, 0
  %371 = and i32 %368, 255
  %372 = icmp eq i32 %371, 8
  %373 = or i1 %370, %372
  %374 = and i32 %368, 16777471
  %375 = icmp eq i32 %374, 16777226
  %376 = or i1 %375, %373
  br i1 %376, label %377, label %379

377:                                              ; preds = %367
  %378 = call ptr @Perl_newSVsv(ptr noundef %338) #8
  br label %379

379:                                              ; preds = %364, %367, %377
  %380 = phi ptr [ %378, %377 ], [ null, %367 ], [ %365, %364 ]
  store ptr %380, ptr %66, align 8, !tbaa !52
  br label %381

381:                                              ; preds = %379, %322
  store ptr %85, ptr @PL_stack_sp, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_HTML__Entities_decode_entities(ptr nocapture readnone %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %5 = load i32, ptr %3, align 4, !tbaa !65
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.49, i32 noundef 0) #8
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 5
  %18 = load i8, ptr %17, align 2, !tbaa !84
  %19 = and i8 %18, 3
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = zext nneg i8 %19 to i32
  br label %25

23:                                               ; preds = %1
  %24 = tail call i32 @Perl_block_gimme() #8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = icmp eq i32 %26, 2
  %28 = tail call i32 @llvm.smin.i32(i32 %14, i32 1)
  %29 = select i1 %27, i32 %28, i32 %14
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %85

31:                                               ; preds = %25
  %32 = sext i32 %7 to i64
  %33 = sext i32 %7 to i64
  %34 = sext i32 %7 to i64
  %35 = zext nneg i32 %29 to i64
  br label %36

36:                                               ; preds = %31, %77
  %37 = phi i64 [ 0, %31 ], [ %83, %77 ]
  %38 = load ptr, ptr @PL_op, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.op, ptr %38, i64 0, i32 5
  %40 = load i8, ptr %39, align 2, !tbaa !84
  %41 = and i8 %40, 3
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = zext nneg i8 %41 to i32
  br label %47

45:                                               ; preds = %36
  %46 = tail call i32 @Perl_block_gimme() #8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = icmp eq i32 %48, 1
  %50 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  br i1 %49, label %59, label %51

51:                                               ; preds = %47
  %52 = add nsw i64 %37, %32
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !64
  %55 = tail call ptr @Perl_newSVsv(ptr noundef %54) #8
  %56 = tail call ptr @Perl_sv_2mortal(ptr noundef %55) #8
  %57 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %58 = getelementptr inbounds ptr, ptr %57, i64 %52
  store ptr %56, ptr %58, align 8, !tbaa !64
  br label %77

59:                                               ; preds = %47
  %60 = add nsw i64 %37, %34
  %61 = getelementptr inbounds ptr, ptr %50, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !64
  %63 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !69
  %65 = and i32 %64, 427886592
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  tail call void @Perl_sv_force_normal_flags(ptr noundef %62, i32 noundef 0) #8
  br label %68

68:                                               ; preds = %67, %59
  %69 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %70 = getelementptr inbounds ptr, ptr %69, i64 %60
  %71 = load ptr, ptr %70, align 8, !tbaa !64
  %72 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !69
  %74 = and i32 %73, 134283264
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.105) #8
  br label %77

77:                                               ; preds = %68, %76, %51
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %79 = getelementptr ptr, ptr %78, i64 %37
  %80 = getelementptr ptr, ptr %79, i64 %33
  %81 = load ptr, ptr %80, align 8, !tbaa !64
  %82 = tail call fastcc ptr @decode_entities(ptr noundef %81, ptr noundef %15, i1 noundef zeroext false)
  %83 = add nuw nsw i64 %37, 1
  %84 = icmp eq i64 %83, %35
  br i1 %84, label %85, label %36, !llvm.loop !101

85:                                               ; preds = %77, %25
  %86 = shl i64 %12, 29
  %87 = ashr i64 %86, 32
  %88 = sub nsw i64 0, %87
  %89 = getelementptr inbounds ptr, ptr %2, i64 %88
  %90 = sext i32 %29 to i64
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90
  store ptr %91, ptr @PL_stack_sp, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_HTML__Entities__decode_entities(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %5 = load i32, ptr %3, align 4, !tbaa !65
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.106) #8
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = getelementptr ptr, ptr %18, i64 %8
  %23 = getelementptr ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = icmp sgt i32 %14, 2
  br i1 %25, label %26, label %88

26:                                               ; preds = %17
  %27 = sext i32 %5 to i64
  %28 = getelementptr ptr, ptr %18, i64 %27
  %29 = getelementptr ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = icmp eq ptr %30, null
  br i1 %31, label %88, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !69
  %35 = and i32 %34, 2097152
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %30, i32 noundef 2) #8
  br label %88

39:                                               ; preds = %32
  %40 = and i32 %34, 65280
  %41 = icmp ne i32 %40, 0
  %42 = and i32 %34, 255
  %43 = icmp eq i32 %42, 8
  %44 = or i1 %41, %43
  %45 = and i32 %34, 16777471
  %46 = icmp eq i32 %45, 16777226
  %47 = or i1 %46, %44
  br i1 %47, label %48, label %88

48:                                               ; preds = %39
  %49 = and i32 %34, 1024
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %30, align 8, !tbaa !77
  %53 = icmp eq ptr %52, null
  br i1 %53, label %88, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.xpv, ptr %52, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !78
  %57 = icmp ugt i64 %56, 1
  br i1 %57, label %88, label %58

58:                                               ; preds = %54
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %88, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !68
  %63 = load i8, ptr %62, align 1, !tbaa !68
  %64 = icmp ne i8 %63, 48
  br label %88

65:                                               ; preds = %48
  %66 = and i32 %34, 768
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %65
  %69 = and i32 %34, 256
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %30, align 8, !tbaa !77
  %73 = getelementptr inbounds %struct.xpviv, ptr %72, i64 0, i32 4
  %74 = load i64, ptr %73, align 8, !tbaa !68
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71, %68
  %77 = and i32 %34, 512
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %30, align 8, !tbaa !77
  %81 = getelementptr inbounds %struct.xpvnv, ptr %80, i64 0, i32 5
  %82 = load double, ptr %81, align 8, !tbaa !68
  %83 = fcmp uno double %82, 0.000000e+00
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = fcmp une double %82, 0.000000e+00
  br label %88

86:                                               ; preds = %65
  %87 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %30, i32 noundef 0) #8
  br label %88

88:                                               ; preds = %37, %86, %39, %54, %60, %58, %51, %76, %84, %71, %79, %26, %17
  %89 = phi i1 [ false, %17 ], [ false, %26 ], [ %38, %37 ], [ %87, %86 ], [ false, %39 ], [ false, %51 ], [ true, %54 ], [ false, %58 ], [ %64, %60 ], [ true, %71 ], [ false, %76 ], [ %85, %84 ], [ true, %79 ]
  %90 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !69
  %92 = and i32 %91, 65280
  %93 = icmp ne i32 %92, 0
  %94 = and i32 %91, 255
  %95 = icmp eq i32 %94, 8
  %96 = or i1 %93, %95
  %97 = and i32 %91, 16777471
  %98 = icmp eq i32 %97, 16777226
  %99 = or i1 %98, %96
  br i1 %99, label %100, label %111

100:                                              ; preds = %88
  %101 = and i32 %91, 2048
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !68
  %106 = getelementptr inbounds %struct.sv, ptr %105, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !69
  %108 = and i32 %107, 255
  %109 = icmp eq i32 %108, 12
  br i1 %109, label %111, label %110

110:                                              ; preds = %103, %100
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.107) #8
  br label %111

111:                                              ; preds = %88, %103, %110
  %112 = phi ptr [ null, %110 ], [ %105, %103 ], [ null, %88 ]
  %113 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %114 = load i32, ptr %113, align 4, !tbaa !69
  %115 = and i32 %114, 427886592
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  tail call void @Perl_sv_force_normal_flags(ptr noundef %21, i32 noundef 0) #8
  br label %118

118:                                              ; preds = %117, %111
  %119 = load i32, ptr %113, align 4, !tbaa !69
  %120 = and i32 %119, 134283264
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.108) #8
  br label %123

123:                                              ; preds = %122, %118
  %124 = tail call fastcc ptr @decode_entities(ptr noundef %21, ptr noundef %112, i1 noundef zeroext %89)
  %125 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %126 = getelementptr inbounds ptr, ptr %125, i64 %19
  %127 = getelementptr inbounds ptr, ptr %126, i64 -1
  store ptr %127, ptr @PL_stack_sp, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_HTML__Entities__probably_utf8_chunk(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %6 = load i32, ptr %4, align 4, !tbaa !65
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.109) #8
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %22 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %21, i1 noundef zeroext false) #8
  %23 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !69
  %25 = and i32 %24, 2098176
  %26 = icmp eq i32 %25, 1024
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load ptr, ptr %21, align 8, !tbaa !77
  %29 = getelementptr inbounds %struct.xpv, ptr %28, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !78
  store i64 %30, ptr %2, align 8, !tbaa !81
  %31 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !68
  br label %35

33:                                               ; preds = %17
  %34 = call ptr @Perl_sv_2pv_flags(ptr noundef %21, ptr noundef nonnull %2, i32 noundef 2) #8
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %32, %27 ], [ %34, %33 ]
  %37 = load i64, ptr %2, align 8, !tbaa !81
  %38 = call fastcc zeroext i1 @probably_utf8_chunk(ptr noundef %36, i64 noundef %37)
  %39 = select i1 %38, ptr @PL_sv_yes, ptr @PL_sv_no
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %41 = getelementptr inbounds ptr, ptr %40, i64 %19
  store ptr %39, ptr %41, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %43 = getelementptr inbounds ptr, ptr %42, i64 %19
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !64
  ret void
}

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_HTML__Entities_UNICODE_SUPPORT(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %5 = load i32, ptr %3, align 4, !tbaa !65
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.47) #8
  br label %15

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 6
  %18 = load i8, ptr %17, align 1, !tbaa !102
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @PL_curpad, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !103
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  br label %29

27:                                               ; preds = %15
  %28 = tail call ptr @Perl_sv_newmortal() #8
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %26, %21 ], [ %28, %27 ]
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  tail call void @Perl_sv_setiv(ptr noundef %30, i64 noundef 1) #8
  %32 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !69
  %34 = and i32 %33, 4194304
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = tail call i32 @Perl_mg_set(ptr noundef %30) #8
  br label %38

38:                                               ; preds = %29, %36
  %39 = add nsw i32 %5, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %31, i64 %40
  store ptr %30, ptr %41, align 8, !tbaa !64
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %43 = getelementptr inbounds ptr, ptr %42, i64 %40
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !64
  ret void
}

declare void @Perl_call_list(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_pstate_hv(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !69
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #8
  br label %11

11:                                               ; preds = %10, %5
  %12 = tail call ptr @Perl_hv_common_key_len(ptr noundef %3, ptr noundef nonnull @.str.50, i32 noundef 17, i32 noundef 32, ptr noundef null, i32 noundef 0) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %12, align 8, !tbaa !64
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !69
  %18 = and i32 %17, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !69
  %25 = and i32 %24, 14680064
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = tail call ptr @Perl_mg_find(ptr noundef %22, i32 noundef 126) #8
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi ptr [ %28, %27 ], [ null, %20 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #8
  br label %33

33:                                               ; preds = %32, %29
  %34 = getelementptr inbounds %struct.magic, ptr %30, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #8
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, ptr %35, align 8, !tbaa !63
  %40 = icmp eq i32 %39, 369695076
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56, ptr noundef nonnull %35) #8
  br label %44

42:                                               ; preds = %14
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.53) #8
  br label %43

43:                                               ; preds = %42, %11
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.54) #8
  br label %44

44:                                               ; preds = %41, %38, %43
  %45 = phi ptr [ null, %43 ], [ %35, %38 ], [ %35, %41 ]
  ret ptr %45
}

declare ptr @Perl_markstack_grow() local_unnamed_addr #2

declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @parse(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 {
  %4 = alloca i64, align 8
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca %struct.token_pos, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.token_pos, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %10 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !104, !range !73, !noundef !74
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  call fastcc void @report_event(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %5, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %2)
  store i8 1, ptr %10, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  br label %14

14:                                               ; preds = %13, %3
  %15 = icmp eq ptr %1, null
  br i1 %15, label %16, label %170

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  %17 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %132, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !69
  %23 = and i32 %22, 65280
  %24 = icmp ne i32 %23, 0
  %25 = and i32 %22, 255
  %26 = icmp eq i32 %25, 8
  %27 = or i1 %24, %26
  %28 = and i32 %22, 16777471
  %29 = icmp eq i32 %28, 16777226
  %30 = or i1 %29, %27
  br i1 %30, label %31, label %132

31:                                               ; preds = %20
  %32 = and i32 %22, 2098176
  %33 = icmp eq i32 %32, 1024
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load ptr, ptr %18, align 8, !tbaa !77
  %36 = getelementptr inbounds %struct.xpv, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !78
  store i64 %37, ptr %4, align 8, !tbaa !81
  %38 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !68
  br label %42

40:                                               ; preds = %31
  %41 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %18, ptr noundef nonnull %4, i32 noundef 2) #8
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi ptr [ %39, %34 ], [ %41, %40 ]
  %44 = load i64, ptr %4, align 8, !tbaa !81
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  %46 = load ptr, ptr %17, align 8, !tbaa !42
  %47 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !69
  %49 = and i32 %48, 536870912
  %50 = icmp sgt i64 %44, 0
  br i1 %50, label %51, label %117

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 8
  %53 = getelementptr inbounds %struct.token_pos, ptr %7, i64 0, i32 1
  %54 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 21
  %55 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 10
  br label %56

56:                                               ; preds = %51, %85
  %57 = phi ptr [ %43, %51 ], [ %86, %85 ]
  %58 = load ptr, ptr %52, align 8, !tbaa !105
  %59 = icmp eq ptr %58, null
  br i1 %59, label %88, label %60

60:                                               ; preds = %56
  %61 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(10) @.str.57) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %117, label %63

63:                                               ; preds = %60
  %64 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(4) @.str.58) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %117, label %66

66:                                               ; preds = %63
  %67 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(7) @.str.59) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %117, label %69

69:                                               ; preds = %66
  %70 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(9) @.str.60) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %117, label %72

72:                                               ; preds = %69
  %73 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(7) @.str.61) #9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(6) @.str.62) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75, %72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store ptr %58, ptr %7, align 8, !tbaa !106
  %79 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %58) #9
  %80 = getelementptr inbounds i8, ptr %58, i64 %79
  store ptr %80, ptr %53, align 8, !tbaa !108
  call fastcc void @report_event(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %8, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %7, i32 noundef 1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  br label %83

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 11
  store ptr %58, ptr %82, align 8, !tbaa !109
  br label %83

83:                                               ; preds = %81, %78
  store ptr null, ptr %52, align 8, !tbaa !105
  %84 = call fastcc ptr @parse_buf(ptr noundef %0, ptr noundef %57, ptr noundef nonnull %45, i32 noundef %49, ptr noundef %2)
  br label %85

85:                                               ; preds = %83, %97
  %86 = phi ptr [ %84, %83 ], [ %98, %97 ]
  %87 = icmp ult ptr %86, %45
  br i1 %87, label %56, label %117, !llvm.loop !110

88:                                               ; preds = %56
  %89 = load i8, ptr %54, align 1, !tbaa !111, !range !73, !noundef !74
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %88
  %92 = load i8, ptr %55, align 1, !tbaa !112, !range !73, !noundef !74
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i8, ptr %57, align 1, !tbaa !68
  %96 = icmp eq i8 %95, 60
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  store i8 1, ptr %55, align 1, !tbaa !112
  %98 = call fastcc ptr @parse_buf(ptr noundef %0, ptr noundef nonnull %57, ptr noundef nonnull %45, i32 noundef %49, ptr noundef %2)
  br label %85

99:                                               ; preds = %94, %91
  br i1 %90, label %100, label %117

100:                                              ; preds = %99
  %101 = load i8, ptr %57, align 1, !tbaa !68
  %102 = icmp eq i8 %101, 60
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = getelementptr inbounds i8, ptr %57, i64 1
  %105 = icmp eq ptr %104, %45
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = load i8, ptr %104, align 1, !tbaa !68
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !68
  %111 = freeze i8 %110
  %112 = and i8 %111, 2
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  switch i8 %107, label %117 [
    i8 63, label %115
    i8 47, label %115
    i8 33, label %115
  ]

115:                                              ; preds = %114, %114, %114, %106, %103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  store ptr %104, ptr %9, align 8, !tbaa !106
  %116 = getelementptr inbounds %struct.token_pos, ptr %9, i64 0, i32 1
  store ptr %45, ptr %116, align 8, !tbaa !108
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %57, ptr noundef nonnull %45, i32 noundef %49, ptr noundef nonnull %9, i32 noundef 1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  br label %117

117:                                              ; preds = %85, %69, %66, %63, %60, %88, %42, %114, %115, %99, %100
  %118 = phi ptr [ %57, %99 ], [ %57, %100 ], [ %45, %115 ], [ %57, %114 ], [ %43, %42 ], [ %57, %88 ], [ %57, %60 ], [ %57, %63 ], [ %57, %66 ], [ %57, %69 ], [ %86, %85 ]
  %119 = icmp ult ptr %118, %45
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %118, ptr noundef nonnull %45, i32 noundef %49, ptr noundef null, i32 noundef 0, ptr noundef %2)
  br label %121

121:                                              ; preds = %120, %117
  %122 = load ptr, ptr %17, align 8, !tbaa !42
  %123 = icmp eq ptr %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.sv, ptr %122, i64 0, i32 1
  %126 = load i32, ptr %125, align 8, !tbaa !46
  %127 = icmp ugt i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = add i32 %126, -1
  store i32 %129, ptr %125, align 8, !tbaa !46
  br label %131

130:                                              ; preds = %124
  call void @Perl_sv_free2(ptr noundef nonnull %122, i32 noundef %126) #8
  br label %131

131:                                              ; preds = %121, %128, %130
  store ptr null, ptr %17, align 8, !tbaa !42
  br label %132

132:                                              ; preds = %20, %131, %16
  %133 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %134 = load ptr, ptr %133, align 8, !tbaa !48
  %135 = icmp eq ptr %134, null
  br i1 %135, label %148, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.sv, ptr %134, i64 0, i32 2
  %138 = load i32, ptr %137, align 4, !tbaa !69
  %139 = and i32 %138, 65280
  %140 = icmp ne i32 %139, 0
  %141 = and i32 %138, 255
  %142 = icmp eq i32 %141, 8
  %143 = or i1 %140, %142
  %144 = and i32 %138, 16777471
  %145 = icmp eq i32 %144, 16777226
  %146 = or i1 %145, %143
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  call fastcc void @flush_pending_text(ptr noundef %0, ptr noundef %2)
  br label %148

148:                                              ; preds = %136, %147, %132
  %149 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 39
  %150 = load ptr, ptr %149, align 8, !tbaa !61
  %151 = icmp eq ptr %150, null
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.sv, ptr %150, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !46
  %155 = icmp ugt i32 %154, 1
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = add i32 %154, -1
  store i32 %157, ptr %153, align 8, !tbaa !46
  br label %159

158:                                              ; preds = %152
  call void @Perl_sv_free2(ptr noundef nonnull %150, i32 noundef %154) #8
  br label %159

159:                                              ; preds = %156, %158
  store ptr null, ptr %149, align 8, !tbaa !61
  br label %160

160:                                              ; preds = %159, %148
  call fastcc void @report_event(ptr noundef %0, i32 noundef 7, ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %2)
  %161 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 2
  store i64 0, ptr %161, align 8, !tbaa !113
  %162 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 3
  %163 = load i64, ptr %162, align 8, !tbaa !95
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  store i64 1, ptr %162, align 8, !tbaa !95
  br label %166

166:                                              ; preds = %165, %160
  %167 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 4
  store i64 0, ptr %167, align 8, !tbaa !114
  store i8 0, ptr %10, align 8, !tbaa !104
  %168 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 8
  store ptr null, ptr %168, align 8, !tbaa !105
  %169 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  store i8 0, ptr %169, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  br label %359

170:                                              ; preds = %14
  %171 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 29
  %172 = load i8, ptr %171, align 1, !tbaa !116, !range !73, !noundef !74
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %1, i1 noundef zeroext false) #8
  br label %176

176:                                              ; preds = %174, %170
  %177 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !42
  %179 = icmp eq ptr %178, null
  br i1 %179, label %211, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.sv, ptr %178, i64 0, i32 2
  %182 = load i32, ptr %181, align 4, !tbaa !69
  %183 = and i32 %182, 65280
  %184 = icmp ne i32 %183, 0
  %185 = and i32 %182, 255
  %186 = icmp eq i32 %185, 8
  %187 = or i1 %184, %186
  %188 = and i32 %182, 16777471
  %189 = icmp eq i32 %188, 16777226
  %190 = or i1 %189, %187
  br i1 %190, label %191, label %211

191:                                              ; preds = %180
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %178, ptr noundef nonnull %1, i32 noundef 2) #8
  %192 = load ptr, ptr %177, align 8, !tbaa !42
  %193 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 2
  %194 = load i32, ptr %193, align 4, !tbaa !69
  %195 = and i32 %194, 2098176
  %196 = icmp eq i32 %195, 1024
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load ptr, ptr %192, align 8, !tbaa !77
  %199 = getelementptr inbounds %struct.xpv, ptr %198, i64 0, i32 2
  %200 = load i64, ptr %199, align 8, !tbaa !78
  store i64 %200, ptr %4, align 8, !tbaa !81
  %201 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !68
  br label %205

203:                                              ; preds = %191
  %204 = call ptr @Perl_sv_2pv_flags(ptr noundef %192, ptr noundef nonnull %4, i32 noundef 2) #8
  br label %205

205:                                              ; preds = %203, %197
  %206 = phi ptr [ %202, %197 ], [ %204, %203 ]
  %207 = load ptr, ptr %177, align 8, !tbaa !42
  %208 = getelementptr inbounds %struct.sv, ptr %207, i64 0, i32 2
  %209 = load i32, ptr %208, align 4, !tbaa !69
  %210 = and i32 %209, 536870912
  br label %298

211:                                              ; preds = %180, %176
  %212 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %213 = load i32, ptr %212, align 4, !tbaa !69
  %214 = and i32 %213, 2098176
  %215 = icmp eq i32 %214, 1024
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load ptr, ptr %1, align 8, !tbaa !77
  %218 = getelementptr inbounds %struct.xpv, ptr %217, i64 0, i32 2
  %219 = load i64, ptr %218, align 8, !tbaa !78
  store i64 %219, ptr %4, align 8, !tbaa !81
  %220 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %221 = load ptr, ptr %220, align 8, !tbaa !68
  br label %224

222:                                              ; preds = %211
  %223 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 2) #8
  br label %224

224:                                              ; preds = %222, %216
  %225 = phi ptr [ %221, %216 ], [ %223, %222 ]
  %226 = load i32, ptr %212, align 4, !tbaa !69
  %227 = and i32 %226, 536870912
  %228 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 2
  %229 = load i64, ptr %228, align 8, !tbaa !113
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %298

231:                                              ; preds = %224
  %232 = load i8, ptr @PL_dowarn, align 1, !tbaa !68
  %233 = and i8 %232, 1
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %298, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 35
  %237 = load i32, ptr %236, align 8, !tbaa !96
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %267, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 26
  %241 = load i8, ptr %240, align 2, !tbaa !117, !range !73, !noundef !74
  %242 = icmp ne i8 %241, 0
  %243 = icmp eq i32 %237, 7
  %244 = and i1 %243, %242
  br i1 %244, label %267, label %245

245:                                              ; preds = %239
  %246 = load i8, ptr %171, align 1, !tbaa !116, !range !73, !noundef !74
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %267

248:                                              ; preds = %245
  %249 = icmp eq i32 %227, 0
  %250 = load i64, ptr %4, align 8
  %251 = icmp ugt i64 %250, 2
  %252 = select i1 %249, i1 %251, i1 false
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %225, ptr noundef nonnull dereferenceable(4) @.str.63, i64 noundef 3) #9
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %266, label %256

256:                                              ; preds = %253, %248
  %257 = icmp ne i32 %227, 0
  %258 = icmp ugt i64 %250, 5
  %259 = select i1 %257, i1 %258, i1 false
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %225, ptr noundef nonnull dereferenceable(7) @.str.64, i64 noundef 6) #9
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %260, %256
  br i1 %257, label %267, label %264

264:                                              ; preds = %263
  %265 = call fastcc zeroext i1 @probably_utf8_chunk(ptr noundef %225, i64 noundef %250)
  br i1 %265, label %266, label %267

266:                                              ; preds = %260, %264, %253
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.65) #8
  br label %267

267:                                              ; preds = %264, %239, %266, %263, %245, %235
  %268 = icmp ne i32 %227, 0
  %269 = load i64, ptr %4, align 8
  %270 = icmp ugt i64 %269, 1
  %271 = select i1 %268, i1 %270, i1 false
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %225, ptr noundef nonnull dereferenceable(3) @.str.66, i64 noundef 2) #9
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.67) #8
  br label %276

276:                                              ; preds = %275, %272, %267
  %277 = icmp eq i32 %227, 0
  %278 = load i64, ptr %4, align 8
  %279 = icmp ugt i64 %278, 3
  %280 = select i1 %277, i1 %279, i1 false
  br i1 %280, label %281, label %288

281:                                              ; preds = %276
  %282 = load i8, ptr %225, align 1
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %281
  %285 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %225, ptr noundef nonnull dereferenceable(3) @.str.69, i64 noundef 4) #9
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %284, %281
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.70) #8
  br label %298

288:                                              ; preds = %284, %276
  %289 = icmp ugt i64 %278, 1
  %290 = select i1 %277, i1 %289, i1 false
  br i1 %290, label %291, label %298

291:                                              ; preds = %288
  %292 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %225, ptr noundef nonnull dereferenceable(3) @.str.71, i64 noundef 2) #9
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %225, ptr noundef nonnull dereferenceable(3) @.str.66, i64 noundef 2) #9
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %294, %291
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.72) #8
  br label %298

298:                                              ; preds = %224, %231, %288, %294, %297, %287, %205
  %299 = phi ptr [ %206, %205 ], [ %225, %294 ], [ %225, %297 ], [ %225, %288 ], [ %225, %287 ], [ %225, %231 ], [ %225, %224 ]
  %300 = phi i32 [ %210, %205 ], [ 0, %294 ], [ 0, %297 ], [ %227, %288 ], [ 0, %287 ], [ %227, %231 ], [ %227, %224 ]
  %301 = load i64, ptr %4, align 8, !tbaa !81
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %359, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds i8, ptr %299, i64 %301
  %305 = call fastcc ptr @parse_buf(ptr noundef %0, ptr noundef %299, ptr noundef nonnull %304, i32 noundef %300, ptr noundef %2)
  %306 = icmp eq ptr %305, %304
  br i1 %306, label %311, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 7
  %309 = load i8, ptr %308, align 2, !tbaa !80, !range !73, !noundef !74
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %322, label %311

311:                                              ; preds = %307, %303
  %312 = load ptr, ptr %177, align 8, !tbaa !42
  %313 = icmp eq ptr %312, null
  br i1 %313, label %359, label %314

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.sv, ptr %312, i64 0, i32 2
  %316 = load i32, ptr %315, align 4, !tbaa !69
  %317 = and i32 %316, 1610547455
  store i32 %317, ptr %315, align 4, !tbaa !69
  %318 = and i32 %316, 33554432
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %359, label %320

320:                                              ; preds = %314
  %321 = call i32 @Perl_sv_backoff(ptr noundef nonnull %312) #8
  br label %359

322:                                              ; preds = %307
  %323 = load ptr, ptr %177, align 8, !tbaa !42
  %324 = icmp eq ptr %323, null
  br i1 %324, label %349, label %325

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.sv, ptr %323, i64 0, i32 2
  %327 = load i32, ptr %326, align 4, !tbaa !69
  %328 = and i32 %327, 65280
  %329 = icmp ne i32 %328, 0
  %330 = and i32 %327, 255
  %331 = icmp eq i32 %330, 8
  %332 = or i1 %329, %331
  %333 = and i32 %327, 16777471
  %334 = icmp eq i32 %333, 16777226
  %335 = or i1 %334, %332
  br i1 %335, label %336, label %337

336:                                              ; preds = %325
  call void @Perl_sv_chop(ptr noundef nonnull %323, ptr noundef %305) #8
  br label %359

337:                                              ; preds = %325
  %338 = ptrtoint ptr %304 to i64
  %339 = ptrtoint ptr %305 to i64
  %340 = sub i64 %338, %339
  call void @Perl_sv_setpvn(ptr noundef nonnull %323, ptr noundef %305, i64 noundef %340) #8
  %341 = icmp eq i32 %300, 0
  %342 = load ptr, ptr %177, align 8, !tbaa !42
  %343 = getelementptr inbounds %struct.sv, ptr %342, i64 0, i32 2
  %344 = load i32, ptr %343, align 4, !tbaa !69
  br i1 %341, label %347, label %345

345:                                              ; preds = %337
  %346 = or i32 %344, 536870912
  store i32 %346, ptr %343, align 4, !tbaa !69
  br label %359

347:                                              ; preds = %337
  %348 = and i32 %344, -536870913
  store i32 %348, ptr %343, align 4, !tbaa !69
  br label %359

349:                                              ; preds = %322
  %350 = ptrtoint ptr %304 to i64
  %351 = ptrtoint ptr %305 to i64
  %352 = sub i64 %350, %351
  %353 = call ptr @Perl_newSVpv(ptr noundef %305, i64 noundef %352) #8
  store ptr %353, ptr %177, align 8, !tbaa !42
  %354 = icmp eq i32 %300, 0
  br i1 %354, label %359, label %355

355:                                              ; preds = %349
  %356 = getelementptr inbounds %struct.sv, ptr %353, i64 0, i32 2
  %357 = load i32, ptr %356, align 4, !tbaa !69
  %358 = or i32 %357, 536870912
  store i32 %358, ptr %356, align 4, !tbaa !69
  br label %359

359:                                              ; preds = %311, %349, %355, %336, %347, %345, %320, %314, %298, %166
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret void
}

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @report_event(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 !prof !34 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.token_pos, align 8
  %11 = alloca i8, align 1
  %12 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  %13 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 7
  %14 = load i8, ptr %13, align 2, !tbaa !80, !range !73, !noundef !74
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %1240

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !113
  %19 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !95
  %21 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !114
  %23 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  %25 = freeze ptr %24
  %26 = icmp eq ptr %25, null
  %27 = icmp eq i32 %1, 4
  br i1 %26, label %34, label %28

28:                                               ; preds = %16
  switch i32 %1, label %29 [
    i32 4, label %34
    i32 1, label %34
  ]

29:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  store ptr %25, ptr %10, align 8, !tbaa !106
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #9
  %31 = getelementptr inbounds i8, ptr %25, i64 %30
  %32 = getelementptr inbounds %struct.token_pos, ptr %10, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !108
  store ptr null, ptr %23, align 8, !tbaa !109
  call fastcc void @report_event(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %11, ptr noundef nonnull %11, i32 noundef 0, ptr noundef nonnull %10, i32 noundef 1, ptr noundef %7)
  %33 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8
  br label %34

34:                                               ; preds = %28, %28, %16, %29
  %35 = phi ptr [ %33, %29 ], [ %12, %28 ], [ %12, %16 ], [ %12, %28 ]
  %36 = icmp eq i32 %4, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = call i64 @Perl_utf8_distance(ptr noundef %3, ptr noundef %2) #8
  br label %43

39:                                               ; preds = %34
  %40 = ptrtoint ptr %3 to i64
  %41 = ptrtoint ptr %2 to i64
  %42 = sub i64 %40, %41
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i64 [ %38, %37 ], [ %42, %39 ]
  %45 = load i64, ptr %17, align 8, !tbaa !113
  %46 = add i64 %45, %44
  store i64 %46, ptr %17, align 8, !tbaa !113
  %47 = icmp eq i64 %20, 0
  br i1 %47, label %88, label %48

48:                                               ; preds = %43
  %49 = icmp ult ptr %2, %3
  br i1 %49, label %50, label %62

50:                                               ; preds = %48, %58
  %51 = phi ptr [ %60, %58 ], [ %2, %48 ]
  %52 = phi ptr [ %59, %58 ], [ null, %48 ]
  %53 = load i8, ptr %51, align 1, !tbaa !68
  %54 = icmp eq i8 %53, 10
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i64, ptr %19, align 8, !tbaa !95
  %57 = add i64 %56, 1
  store i64 %57, ptr %19, align 8, !tbaa !95
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi ptr [ %51, %55 ], [ %52, %50 ]
  %60 = getelementptr inbounds i8, ptr %51, i64 1
  %61 = icmp eq ptr %60, %3
  br i1 %61, label %62, label %50, !llvm.loop !118

62:                                               ; preds = %58, %48
  %63 = phi ptr [ null, %48 ], [ %59, %58 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  br i1 %36, label %68, label %66

66:                                               ; preds = %65
  %67 = call i64 @Perl_utf8_distance(ptr noundef %3, ptr noundef nonnull %63) #8
  br label %72

68:                                               ; preds = %65
  %69 = ptrtoint ptr %3 to i64
  %70 = ptrtoint ptr %63 to i64
  %71 = sub i64 %69, %70
  br label %72

72:                                               ; preds = %68, %66
  %73 = phi i64 [ %67, %66 ], [ %71, %68 ]
  %74 = add nsw i64 %73, -1
  br label %86

75:                                               ; preds = %62
  br i1 %36, label %78, label %76

76:                                               ; preds = %75
  %77 = call i64 @Perl_utf8_distance(ptr noundef %3, ptr noundef %2) #8
  br label %82

78:                                               ; preds = %75
  %79 = ptrtoint ptr %3 to i64
  %80 = ptrtoint ptr %2 to i64
  %81 = sub i64 %79, %80
  br label %82

82:                                               ; preds = %78, %76
  %83 = phi i64 [ %77, %76 ], [ %81, %78 ]
  %84 = load i64, ptr %21, align 8, !tbaa !114
  %85 = add i64 %84, %83
  br label %86

86:                                               ; preds = %82, %72
  %87 = phi i64 [ %85, %82 ], [ %74, %72 ]
  store i64 %87, ptr %21, align 8, !tbaa !114
  br label %88

88:                                               ; preds = %86, %43
  %89 = icmp eq i32 %1, 10
  br i1 %89, label %1189, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 18
  %92 = load i32, ptr %91, align 8, !tbaa !119
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %1189, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 37
  %96 = load ptr, ptr %95, align 8, !tbaa !59
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 36
  %100 = load ptr, ptr %99, align 8, !tbaa !58
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 38
  %104 = load ptr, ptr %103, align 8, !tbaa !60
  %105 = icmp eq ptr %104, null
  br i1 %105, label %187, label %106

106:                                              ; preds = %102, %98, %94
  %107 = icmp eq i32 %1, 2
  %108 = and i32 %1, -2
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %183

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 42
  %112 = load ptr, ptr %111, align 8, !tbaa !62
  %113 = load ptr, ptr %5, align 8, !tbaa !106
  %114 = getelementptr inbounds %struct.token_pos, ptr %5, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !108
  %116 = ptrtoint ptr %115 to i64
  %117 = ptrtoint ptr %113 to i64
  %118 = sub i64 %116, %117
  call void @Perl_sv_setpvn(ptr noundef %112, ptr noundef %113, i64 noundef %118) #8
  %119 = getelementptr inbounds %struct.sv, ptr %112, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !69
  %121 = and i32 %120, -536870913
  %122 = select i1 %36, i32 0, i32 536870912
  %123 = or disjoint i32 %121, %122
  store i32 %123, ptr %119, align 4, !tbaa !69
  %124 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %125 = load i8, ptr %124, align 4, !tbaa !120, !range !73, !noundef !74
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %110
  %128 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %129 = load i8, ptr %128, align 1, !tbaa !121, !range !73, !noundef !74
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = call fastcc ptr @sv_lower(ptr noundef %112)
  br label %133

133:                                              ; preds = %131, %127, %110
  %134 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 39
  %135 = load ptr, ptr %134, align 8, !tbaa !61
  %136 = icmp eq ptr %135, null
  br i1 %136, label %159, label %137

137:                                              ; preds = %133
  %138 = call i32 @Perl_sv_eq_flags(ptr noundef nonnull %135, ptr noundef %112, i32 noundef 2) #8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %1189, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 40
  %142 = load i32, ptr %141, align 8, !tbaa !122
  br i1 %107, label %143, label %145

143:                                              ; preds = %140
  %144 = add nsw i32 %142, 1
  store i32 %144, ptr %141, align 8, !tbaa !122
  br label %1189

145:                                              ; preds = %140
  %146 = add nsw i32 %142, -1
  store i32 %146, ptr %141, align 8, !tbaa !122
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %1189

148:                                              ; preds = %145
  %149 = load ptr, ptr %134, align 8, !tbaa !61
  %150 = icmp eq ptr %149, null
  br i1 %150, label %158, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.sv, ptr %149, i64 0, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !46
  %154 = icmp ugt i32 %153, 1
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = add i32 %153, -1
  store i32 %156, ptr %152, align 8, !tbaa !46
  br label %158

157:                                              ; preds = %151
  call void @Perl_sv_free2(ptr noundef nonnull %149, i32 noundef %153) #8
  br label %158

158:                                              ; preds = %148, %155, %157
  store ptr null, ptr %134, align 8, !tbaa !61
  br label %1189

159:                                              ; preds = %133
  %160 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 38
  %161 = load ptr, ptr %160, align 8, !tbaa !60
  %162 = icmp eq ptr %161, null
  br i1 %162, label %170, label %163

163:                                              ; preds = %159
  %164 = call ptr @Perl_hv_common(ptr noundef nonnull %161, ptr noundef %112, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %163
  br i1 %107, label %167, label %1189

167:                                              ; preds = %166
  %168 = call ptr @Perl_newSVsv(ptr noundef %112) #8
  store ptr %168, ptr %134, align 8, !tbaa !61
  %169 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 40
  store i32 1, ptr %169, align 8, !tbaa !122
  br label %1189

170:                                              ; preds = %163, %159
  %171 = load ptr, ptr %95, align 8, !tbaa !59
  %172 = icmp eq ptr %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = call ptr @Perl_hv_common(ptr noundef nonnull %171, ptr noundef %112, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %1189

176:                                              ; preds = %173, %170
  %177 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 36
  %178 = load ptr, ptr %177, align 8, !tbaa !58
  %179 = icmp eq ptr %178, null
  br i1 %179, label %187, label %180

180:                                              ; preds = %176
  %181 = call ptr @Perl_hv_common(ptr noundef nonnull %178, ptr noundef %112, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %182 = icmp eq ptr %181, null
  br i1 %182, label %1189, label %187

183:                                              ; preds = %106
  %184 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 39
  %185 = load ptr, ptr %184, align 8, !tbaa !61
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %1189

187:                                              ; preds = %176, %180, %183, %102
  %188 = zext nneg i32 %1 to i64
  %189 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 34, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !52
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 34, i64 8
  %194 = load ptr, ptr %193, align 8, !tbaa !52
  %195 = icmp eq ptr %194, null
  br i1 %195, label %1189, label %196

196:                                              ; preds = %192, %187
  %197 = phi ptr [ %189, %187 ], [ %193, %192 ]
  %198 = load ptr, ptr %197, align 8, !tbaa !52
  %199 = getelementptr inbounds %struct.sv, ptr %198, i64 0, i32 2
  %200 = load i32, ptr %199, align 4, !tbaa !69
  %201 = and i32 %200, 255
  %202 = icmp eq i32 %201, 11
  br i1 %202, label %256, label %203

203:                                              ; preds = %196
  %204 = icmp eq ptr %198, null
  br i1 %204, label %1240, label %205

205:                                              ; preds = %203
  %206 = and i32 %200, 2097152
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  %209 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %198, i32 noundef 2) #8
  br i1 %209, label %256, label %1240

210:                                              ; preds = %205
  %211 = and i32 %200, 65280
  %212 = icmp ne i32 %211, 0
  %213 = icmp eq i32 %201, 8
  %214 = or i1 %212, %213
  %215 = and i32 %200, 16777471
  %216 = icmp eq i32 %215, 16777226
  %217 = or i1 %216, %214
  br i1 %217, label %218, label %1240

218:                                              ; preds = %210
  %219 = and i32 %200, 1024
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %235, label %221

221:                                              ; preds = %218
  %222 = load ptr, ptr %198, align 8, !tbaa !77
  %223 = icmp eq ptr %222, null
  br i1 %223, label %1240, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.xpv, ptr %222, i64 0, i32 2
  %226 = load i64, ptr %225, align 8, !tbaa !78
  %227 = icmp ugt i64 %226, 1
  br i1 %227, label %256, label %228

228:                                              ; preds = %224
  %229 = icmp eq i64 %226, 0
  br i1 %229, label %1240, label %230

230:                                              ; preds = %228
  %231 = getelementptr inbounds %struct.sv, ptr %198, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !68
  %233 = load i8, ptr %232, align 1, !tbaa !68
  %234 = icmp eq i8 %233, 48
  br i1 %234, label %1240, label %256

235:                                              ; preds = %218
  %236 = and i32 %200, 768
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %254, label %238

238:                                              ; preds = %235
  %239 = and i32 %200, 256
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %238
  %242 = load ptr, ptr %198, align 8, !tbaa !77
  %243 = getelementptr inbounds %struct.xpviv, ptr %242, i64 0, i32 4
  %244 = load i64, ptr %243, align 8, !tbaa !68
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %256

246:                                              ; preds = %241, %238
  %247 = and i32 %200, 512
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %1240, label %249

249:                                              ; preds = %246
  %250 = load ptr, ptr %198, align 8, !tbaa !77
  %251 = getelementptr inbounds %struct.xpvnv, ptr %250, i64 0, i32 5
  %252 = load double, ptr %251, align 8, !tbaa !68
  %253 = fcmp une double %252, 0.000000e+00
  br i1 %253, label %256, label %1240

254:                                              ; preds = %235
  %255 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %198, i32 noundef 0) #8
  br i1 %255, label %256, label %1240

256:                                              ; preds = %230, %254, %249, %241, %224, %208, %196
  %257 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 25
  %258 = load i8, ptr %257, align 1, !tbaa !123, !range !73, !noundef !74
  %259 = icmp ne i8 %258, 0
  %260 = icmp eq i32 %1, 4
  %261 = and i1 %260, %259
  %262 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %263 = load ptr, ptr %262, align 8, !tbaa !48
  %264 = icmp eq ptr %263, null
  br i1 %261, label %265, label %336

265:                                              ; preds = %256
  br i1 %264, label %266, label %268

266:                                              ; preds = %265
  %267 = call ptr @Perl_newSV(i64 noundef 256) #8
  store ptr %267, ptr %262, align 8, !tbaa !48
  br label %268

268:                                              ; preds = %266, %265
  %269 = load ptr, ptr %262, align 8, !tbaa !48
  %270 = getelementptr inbounds %struct.sv, ptr %269, i64 0, i32 2
  %271 = load i32, ptr %270, align 4, !tbaa !69
  %272 = and i32 %271, 65280
  %273 = icmp ne i32 %272, 0
  %274 = and i32 %271, 255
  %275 = icmp eq i32 %274, 8
  %276 = or i1 %273, %275
  %277 = and i32 %271, 16777471
  %278 = icmp eq i32 %277, 16777226
  %279 = or i1 %278, %276
  br i1 %279, label %280, label %287

280:                                              ; preds = %268
  %281 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %282 = load i8, ptr %281, align 8, !tbaa !115, !range !73, !noundef !74
  %283 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 13
  %284 = load i8, ptr %283, align 8, !tbaa !124, !range !73, !noundef !74
  %285 = icmp eq i8 %282, %284
  br i1 %285, label %300, label %286

286:                                              ; preds = %280
  call fastcc void @flush_pending_text(ptr noundef %0, ptr noundef %7)
  br label %287

287:                                              ; preds = %268, %286
  %288 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 14
  store i64 %18, ptr %288, align 8, !tbaa !125
  %289 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 15
  store i64 %20, ptr %289, align 8, !tbaa !126
  %290 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 16
  store i64 %22, ptr %290, align 8, !tbaa !127
  %291 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %292 = load i8, ptr %291, align 8, !tbaa !115, !range !73, !noundef !74
  %293 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 13
  store i8 %292, ptr %293, align 8, !tbaa !124
  %294 = load ptr, ptr %262, align 8, !tbaa !48
  call void @Perl_sv_setpvn(ptr noundef %294, ptr noundef nonnull @.str.47, i64 noundef 0) #8
  br i1 %36, label %295, label %301

295:                                              ; preds = %287
  %296 = load ptr, ptr %262, align 8, !tbaa !48
  %297 = getelementptr inbounds %struct.sv, ptr %296, i64 0, i32 2
  %298 = load i32, ptr %297, align 4, !tbaa !69
  %299 = and i32 %298, -536870913
  store i32 %299, ptr %297, align 4, !tbaa !69
  br label %300

300:                                              ; preds = %295, %280
  br i1 %36, label %310, label %301

301:                                              ; preds = %287, %300
  %302 = load ptr, ptr %262, align 8, !tbaa !48
  %303 = getelementptr inbounds %struct.sv, ptr %302, i64 0, i32 2
  %304 = load i32, ptr %303, align 4, !tbaa !69
  %305 = and i32 %304, 536870912
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %301
  %308 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %302, i32 noundef 2, i64 noundef 0) #8
  br label %309

309:                                              ; preds = %307, %301
  br i1 %36, label %310, label %316

310:                                              ; preds = %300, %309
  %311 = load ptr, ptr %262, align 8, !tbaa !48
  %312 = getelementptr inbounds %struct.sv, ptr %311, i64 0, i32 2
  %313 = load i32, ptr %312, align 4, !tbaa !69
  %314 = and i32 %313, 536870912
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %310, %309
  %317 = load ptr, ptr %262, align 8, !tbaa !48
  %318 = ptrtoint ptr %3 to i64
  %319 = ptrtoint ptr %2 to i64
  %320 = sub i64 %318, %319
  call void @Perl_sv_catpvn_flags(ptr noundef %317, ptr noundef %2, i64 noundef %320, i32 noundef 2) #8
  br label %1240

321:                                              ; preds = %310
  %322 = ptrtoint ptr %3 to i64
  %323 = ptrtoint ptr %2 to i64
  %324 = sub i64 %322, %323
  %325 = call ptr @Perl_newSVpvn(ptr noundef %2, i64 noundef %324) #8
  %326 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %325, i32 noundef 2, i64 noundef 0) #8
  %327 = load ptr, ptr %262, align 8, !tbaa !48
  call void @Perl_sv_catsv_flags(ptr noundef %327, ptr noundef %325, i32 noundef 2) #8
  %328 = icmp eq ptr %325, null
  br i1 %328, label %1240, label %329

329:                                              ; preds = %321
  %330 = getelementptr inbounds %struct.sv, ptr %325, i64 0, i32 1
  %331 = load i32, ptr %330, align 8, !tbaa !46
  %332 = icmp ugt i32 %331, 1
  br i1 %332, label %333, label %335

333:                                              ; preds = %329
  %334 = add i32 %331, -1
  store i32 %334, ptr %330, align 8, !tbaa !46
  br label %1240

335:                                              ; preds = %329
  call void @Perl_sv_free2(ptr noundef nonnull %325, i32 noundef %331) #8
  br label %1240

336:                                              ; preds = %256
  br i1 %264, label %350, label %337

337:                                              ; preds = %336
  %338 = getelementptr inbounds %struct.sv, ptr %263, i64 0, i32 2
  %339 = load i32, ptr %338, align 4, !tbaa !69
  %340 = and i32 %339, 65280
  %341 = icmp ne i32 %340, 0
  %342 = and i32 %339, 255
  %343 = icmp eq i32 %342, 8
  %344 = or i1 %341, %343
  %345 = and i32 %339, 16777471
  %346 = icmp eq i32 %345, 16777226
  %347 = or i1 %346, %344
  br i1 %347, label %348, label %350

348:                                              ; preds = %337
  call fastcc void @flush_pending_text(ptr noundef %0, ptr noundef %7)
  %349 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !64
  br label %350

350:                                              ; preds = %337, %336, %348
  %351 = phi ptr [ %349, %348 ], [ %35, %336 ], [ %35, %337 ]
  %352 = getelementptr inbounds %struct.p_handler, ptr %197, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !54
  %354 = icmp eq ptr %353, null
  br i1 %354, label %368, label %355

355:                                              ; preds = %350
  %356 = getelementptr inbounds %struct.sv, ptr %353, i64 0, i32 2
  %357 = load i32, ptr %356, align 4, !tbaa !69
  %358 = and i32 %357, 2098176
  %359 = icmp eq i32 %358, 1024
  br i1 %359, label %360, label %366

360:                                              ; preds = %355
  %361 = load ptr, ptr %353, align 8, !tbaa !77
  %362 = getelementptr inbounds %struct.xpv, ptr %361, i64 0, i32 2
  %363 = load i64, ptr %362, align 8, !tbaa !78
  store i64 %363, ptr %9, align 8, !tbaa !81
  %364 = getelementptr inbounds %struct.sv, ptr %353, i64 0, i32 3
  %365 = load ptr, ptr %364, align 8, !tbaa !68
  br label %368

366:                                              ; preds = %355
  %367 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %353, ptr noundef nonnull %9, i32 noundef 2) #8
  br label %368

368:                                              ; preds = %350, %360, %366
  %369 = phi ptr [ %365, %360 ], [ %367, %366 ], [ @.str.47, %350 ]
  %370 = load ptr, ptr %197, align 8, !tbaa !52
  %371 = getelementptr inbounds %struct.sv, ptr %370, i64 0, i32 2
  %372 = load i32, ptr %371, align 4, !tbaa !69
  %373 = and i32 %372, 255
  %374 = icmp eq i32 %373, 11
  %375 = load i8, ptr %369, align 1, !tbaa !68
  %376 = icmp eq i8 %375, 22
  br i1 %374, label %377, label %382

377:                                              ; preds = %368
  br i1 %376, label %378, label %380

378:                                              ; preds = %377
  %379 = getelementptr inbounds i8, ptr %369, i64 1
  br label %400

380:                                              ; preds = %377
  %381 = call ptr @Perl_newSV_type(i32 noundef 11) #8
  br label %400

382:                                              ; preds = %368
  %383 = zext i1 %376 to i64
  %384 = getelementptr inbounds i8, ptr %369, i64 %383
  call void @Perl_push_scope() #8
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #8
  %385 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !81
  store i64 %385, ptr @PL_tmps_floor, align 8, !tbaa !81
  %386 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %387 = getelementptr inbounds i32, ptr %386, i64 1
  store ptr %387, ptr @PL_markstack_ptr, align 8, !tbaa !64
  %388 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !64
  %389 = icmp eq ptr %387, %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %382
  %391 = call ptr @Perl_markstack_grow() #8
  br label %392

392:                                              ; preds = %382, %390
  %393 = phi ptr [ %391, %390 ], [ %387, %382 ]
  %394 = load ptr, ptr @PL_stack_base, align 8, !tbaa !64
  %395 = ptrtoint ptr %351 to i64
  %396 = ptrtoint ptr %394 to i64
  %397 = sub i64 %395, %396
  %398 = lshr exact i64 %397, 3
  %399 = trunc i64 %398 to i32
  store i32 %399, ptr %393, align 4, !tbaa !65
  br label %400

400:                                              ; preds = %378, %380, %392
  %401 = phi ptr [ %379, %378 ], [ %369, %380 ], [ %384, %392 ]
  %402 = phi ptr [ %370, %378 ], [ %381, %380 ], [ null, %392 ]
  %403 = getelementptr inbounds [9 x ptr], ptr @event_id_str, i64 0, i64 %188
  %404 = ptrtoint ptr %3 to i64
  %405 = ptrtoint ptr %2 to i64
  %406 = sub i64 %404, %405
  %407 = ptrtoint ptr %3 to i64
  %408 = ptrtoint ptr %2 to i64
  %409 = sub i64 %407, %408
  %410 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 17
  %411 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %412 = ptrtoint ptr %3 to i64
  %413 = ptrtoint ptr %2 to i64
  %414 = sub i64 %412, %413
  %415 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %416 = ptrtoint ptr %3 to i64
  %417 = ptrtoint ptr %2 to i64
  %418 = sub i64 %416, %417
  %419 = icmp eq i32 %1, 2
  %420 = icmp sgt i32 %6, 1
  %421 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %422 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %423 = icmp eq i32 %1, 2
  %424 = icmp sgt i32 %6, 1
  %425 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 32
  %426 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 26
  %427 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 29
  %428 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 41
  %429 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 33
  %430 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %431 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %432 = icmp eq ptr %402, null
  %433 = icmp sgt i32 %6, 0
  %434 = getelementptr inbounds %struct.token_pos, ptr %5, i64 0, i32 1
  %435 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %436 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %437 = icmp ne i32 %1, 2
  %438 = getelementptr inbounds i8, ptr @.str.73, i64 %188
  %439 = icmp sgt i32 %6, 0
  %440 = shl nuw nsw i32 %6, 1
  %441 = zext nneg i32 %440 to i64
  %442 = icmp sgt i32 %6, 0
  %443 = ptrtoint ptr %2 to i64
  %444 = icmp sgt i32 %6, 0
  %445 = zext nneg i32 %6 to i64
  %446 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 33
  %447 = icmp eq ptr %402, null
  %448 = zext nneg i32 %6 to i64
  %449 = zext nneg i32 %6 to i64
  br label %450

450:                                              ; preds = %859, %400
  %451 = phi ptr [ %401, %400 ], [ %861, %859 ]
  %452 = phi ptr [ %351, %400 ], [ %860, %859 ]
  %453 = load i8, ptr %451, align 1, !tbaa !68
  switch i8 %453, label %825 [
    i8 0, label %862
    i8 1, label %454
    i8 2, label %456
    i8 3, label %491
    i8 4, label %530
    i8 5, label %530
    i8 6, label %530
    i8 7, label %557
    i8 8, label %557
    i8 9, label %701
    i8 10, label %733
    i8 11, label %740
    i8 12, label %767
    i8 13, label %772
    i8 14, label %776
    i8 15, label %779
    i8 16, label %787
    i8 17, label %794
    i8 18, label %797
    i8 19, label %800
    i8 21, label %804
    i8 20, label %823
  ]

454:                                              ; preds = %450
  %455 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef %7, i32 noundef 2) #8
  br label %829

456:                                              ; preds = %450
  br i1 %444, label %457, label %829

457:                                              ; preds = %456
  %458 = call ptr @Perl_newSV_type(i32 noundef 11) #8
  call void @Perl_av_extend(ptr noundef %458, i64 noundef %445) #8
  br label %459

459:                                              ; preds = %457, %483
  %460 = phi i64 [ 0, %457 ], [ %486, %483 ]
  %461 = phi ptr [ @PL_sv_undef, %457 ], [ %485, %483 ]
  %462 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %460
  %463 = load ptr, ptr %462, align 8, !tbaa !106
  %464 = icmp eq ptr %463, null
  br i1 %464, label %476, label %465

465:                                              ; preds = %459
  %466 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %460, i32 1
  %467 = load ptr, ptr %466, align 8, !tbaa !108
  %468 = ptrtoint ptr %467 to i64
  %469 = ptrtoint ptr %463 to i64
  %470 = sub i64 %468, %469
  %471 = call ptr @Perl_newSVpvn(ptr noundef nonnull %463, i64 noundef %470) #8
  br i1 %36, label %483, label %472

472:                                              ; preds = %465
  %473 = getelementptr inbounds %struct.sv, ptr %471, i64 0, i32 2
  %474 = load i32, ptr %473, align 4, !tbaa !69
  %475 = or i32 %474, 536870912
  store i32 %475, ptr %473, align 4, !tbaa !69
  br label %483

476:                                              ; preds = %459
  %477 = load ptr, ptr %446, align 8, !tbaa !51
  %478 = icmp eq ptr %477, null
  br i1 %478, label %481, label %479

479:                                              ; preds = %476
  %480 = call ptr @Perl_newSVsv(ptr noundef nonnull %477) #8
  br label %483

481:                                              ; preds = %476
  %482 = call ptr @Perl_newSVsv(ptr noundef %461) #8
  br label %483

483:                                              ; preds = %479, %481, %465, %472
  %484 = phi ptr [ %471, %472 ], [ %471, %465 ], [ %480, %479 ], [ %482, %481 ]
  %485 = phi ptr [ %471, %472 ], [ %471, %465 ], [ %461, %479 ], [ %461, %481 ]
  call void @Perl_av_push(ptr noundef %458, ptr noundef %484) #8
  %486 = add nuw nsw i64 %460, 1
  %487 = icmp eq i64 %486, %449
  br i1 %487, label %488, label %459, !llvm.loop !128

488:                                              ; preds = %483
  %489 = call ptr @Perl_newRV_noinc(ptr noundef %458) #8
  %490 = call ptr @Perl_sv_2mortal(ptr noundef %489) #8
  br label %829

491:                                              ; preds = %450
  br i1 %439, label %492, label %829

492:                                              ; preds = %491
  %493 = load ptr, ptr %5, align 8, !tbaa !106
  %494 = icmp ult ptr %493, %2
  br i1 %494, label %829, label %495

495:                                              ; preds = %492
  %496 = call ptr @Perl_newSV_type(i32 noundef 11) #8
  call void @Perl_av_extend(ptr noundef %496, i64 noundef %441) #8
  br i1 %442, label %497, label %527

497:                                              ; preds = %495, %522
  %498 = phi i64 [ %525, %522 ], [ 0, %495 ]
  %499 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %498
  %500 = load ptr, ptr %499, align 8, !tbaa !106
  %501 = icmp eq ptr %500, null
  br i1 %501, label %520, label %502

502:                                              ; preds = %497
  br i1 %36, label %505, label %503

503:                                              ; preds = %502
  %504 = call i64 @Perl_utf8_distance(ptr noundef nonnull %500, ptr noundef %2) #8
  br label %508

505:                                              ; preds = %502
  %506 = ptrtoint ptr %500 to i64
  %507 = sub i64 %506, %443
  br label %508

508:                                              ; preds = %505, %503
  %509 = phi i64 [ %504, %503 ], [ %507, %505 ]
  %510 = call ptr @Perl_newSViv(i64 noundef %509) #8
  call void @Perl_av_push(ptr noundef %496, ptr noundef %510) #8
  %511 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %498, i32 1
  %512 = load ptr, ptr %511, align 8, !tbaa !108
  %513 = load ptr, ptr %499, align 8, !tbaa !106
  br i1 %36, label %516, label %514

514:                                              ; preds = %508
  %515 = call i64 @Perl_utf8_distance(ptr noundef %512, ptr noundef %513) #8
  br label %522

516:                                              ; preds = %508
  %517 = ptrtoint ptr %512 to i64
  %518 = ptrtoint ptr %513 to i64
  %519 = sub i64 %517, %518
  br label %522

520:                                              ; preds = %497
  %521 = call ptr @Perl_newSViv(i64 noundef 0) #8
  call void @Perl_av_push(ptr noundef %496, ptr noundef %521) #8
  br label %522

522:                                              ; preds = %514, %516, %520
  %523 = phi i64 [ 0, %520 ], [ %515, %514 ], [ %519, %516 ]
  %524 = call ptr @Perl_newSViv(i64 noundef %523) #8
  call void @Perl_av_push(ptr noundef %496, ptr noundef %524) #8
  %525 = add nuw nsw i64 %498, 1
  %526 = icmp eq i64 %525, %448
  br i1 %526, label %527, label %497, !llvm.loop !129

527:                                              ; preds = %522, %495
  %528 = call ptr @Perl_newRV_noinc(ptr noundef %496) #8
  %529 = call ptr @Perl_sv_2mortal(ptr noundef %528) #8
  br label %829

530:                                              ; preds = %450, %450, %450
  br i1 %433, label %531, label %829

531:                                              ; preds = %530
  %532 = load ptr, ptr %5, align 8, !tbaa !106
  %533 = load ptr, ptr %434, align 8, !tbaa !108
  %534 = ptrtoint ptr %533 to i64
  %535 = ptrtoint ptr %532 to i64
  %536 = sub i64 %534, %535
  %537 = call ptr @Perl_newSVpvn(ptr noundef %532, i64 noundef %536) #8
  %538 = call ptr @Perl_sv_2mortal(ptr noundef %537) #8
  br i1 %36, label %543, label %539

539:                                              ; preds = %531
  %540 = getelementptr inbounds %struct.sv, ptr %538, i64 0, i32 2
  %541 = load i32, ptr %540, align 4, !tbaa !69
  %542 = or i32 %541, 536870912
  store i32 %542, ptr %540, align 4, !tbaa !69
  br label %543

543:                                              ; preds = %539, %531
  %544 = load i8, ptr %435, align 4, !tbaa !120, !range !73, !noundef !74
  %545 = icmp eq i8 %544, 0
  br i1 %545, label %546, label %553

546:                                              ; preds = %543
  %547 = load i8, ptr %436, align 1, !tbaa !121, !range !73, !noundef !74
  %548 = icmp eq i8 %547, 0
  %549 = icmp ne i8 %453, 4
  %550 = and i1 %549, %548
  br i1 %550, label %551, label %553

551:                                              ; preds = %546
  %552 = call fastcc ptr @sv_lower(ptr noundef %538)
  br label %553

553:                                              ; preds = %551, %546, %543
  %554 = icmp eq i8 %453, 6
  %555 = and i1 %437, %554
  br i1 %555, label %556, label %829

556:                                              ; preds = %553
  call void @Perl_sv_insert_flags(ptr noundef %538, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %438, i64 noundef 1, i32 noundef 2) #8
  br label %829

557:                                              ; preds = %450, %450
  br i1 %423, label %558, label %698

558:                                              ; preds = %557
  %559 = icmp eq i8 %453, 7
  br i1 %559, label %560, label %564

560:                                              ; preds = %558
  %561 = call ptr @Perl_newSV_type(i32 noundef 12) #8
  %562 = call ptr @Perl_newRV_noinc(ptr noundef %561) #8
  %563 = call ptr @Perl_sv_2mortal(ptr noundef %562) #8
  br label %564

564:                                              ; preds = %558, %560
  %565 = phi i32 [ 1, %560 ], [ 0, %558 ]
  %566 = phi ptr [ %563, %560 ], [ null, %558 ]
  %567 = phi ptr [ %561, %560 ], [ null, %558 ]
  br i1 %424, label %568, label %829

568:                                              ; preds = %564, %693
  %569 = phi i64 [ %695, %693 ], [ 1, %564 ]
  %570 = phi ptr [ %694, %693 ], [ %452, %564 ]
  %571 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %569
  %572 = load ptr, ptr %571, align 8, !tbaa !106
  %573 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %569, i32 1
  %574 = load ptr, ptr %573, align 8, !tbaa !108
  %575 = ptrtoint ptr %574 to i64
  %576 = ptrtoint ptr %572 to i64
  %577 = sub i64 %575, %576
  %578 = call ptr @Perl_newSVpvn(ptr noundef %572, i64 noundef %577) #8
  br i1 %36, label %583, label %579

579:                                              ; preds = %568
  %580 = getelementptr inbounds %struct.sv, ptr %578, i64 0, i32 2
  %581 = load i32, ptr %580, align 4, !tbaa !69
  %582 = or i32 %581, 536870912
  store i32 %582, ptr %580, align 4, !tbaa !69
  br label %583

583:                                              ; preds = %579, %568
  %584 = getelementptr %struct.token_pos, ptr %571, i64 1
  %585 = load ptr, ptr %584, align 8, !tbaa !106
  %586 = icmp eq ptr %585, null
  br i1 %586, label %625, label %587

587:                                              ; preds = %583
  %588 = getelementptr %struct.token_pos, ptr %571, i64 1, i32 1
  %589 = load ptr, ptr %588, align 8, !tbaa !108
  %590 = ptrtoint ptr %589 to i64
  %591 = ptrtoint ptr %585 to i64
  %592 = sub i64 %590, %591
  %593 = load i8, ptr %585, align 1, !tbaa !68
  switch i8 %593, label %600 [
    i8 34, label %597
    i8 39, label %597
    i8 96, label %594
  ]

594:                                              ; preds = %587
  %595 = load i8, ptr %425, align 4, !tbaa !130, !range !73, !noundef !74
  %596 = icmp eq i8 %595, 0
  br i1 %596, label %600, label %597

597:                                              ; preds = %587, %587, %594
  %598 = getelementptr inbounds i8, ptr %585, i64 1
  %599 = add i64 %592, -2
  br label %600

600:                                              ; preds = %594, %587, %597
  %601 = phi ptr [ %598, %597 ], [ %585, %587 ], [ %585, %594 ]
  %602 = phi i64 [ %599, %597 ], [ %592, %587 ], [ %592, %594 ]
  %603 = call ptr @Perl_newSVpvn(ptr noundef nonnull %601, i64 noundef %602) #8
  br i1 %36, label %608, label %604

604:                                              ; preds = %600
  %605 = getelementptr inbounds %struct.sv, ptr %603, i64 0, i32 2
  %606 = load i32, ptr %605, align 4, !tbaa !69
  %607 = or i32 %606, 536870912
  store i32 %607, ptr %605, align 4, !tbaa !69
  br label %608

608:                                              ; preds = %604, %600
  %609 = load i8, ptr %426, align 2, !tbaa !117, !range !73, !noundef !74
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %611, label %632

611:                                              ; preds = %608
  %612 = load i8, ptr %427, align 1, !tbaa !116, !range !73, !noundef !74
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %616, label %614

614:                                              ; preds = %611
  %615 = call zeroext i1 @Perl_sv_utf8_decode(ptr noundef %603) #8
  br label %616

616:                                              ; preds = %614, %611
  %617 = load ptr, ptr %428, align 8, !tbaa !70
  %618 = call fastcc ptr @decode_entities(ptr noundef %603, ptr noundef %617, i1 noundef zeroext false)
  %619 = load i8, ptr %427, align 1, !tbaa !116, !range !73, !noundef !74
  %620 = icmp eq i8 %619, 0
  br i1 %620, label %632, label %621

621:                                              ; preds = %616
  %622 = getelementptr inbounds %struct.sv, ptr %603, i64 0, i32 2
  %623 = load i32, ptr %622, align 4, !tbaa !69
  %624 = and i32 %623, -536870913
  store i32 %624, ptr %622, align 4, !tbaa !69
  br label %632

625:                                              ; preds = %583
  %626 = load ptr, ptr %429, align 8, !tbaa !51
  %627 = icmp eq ptr %626, null
  br i1 %627, label %630, label %628

628:                                              ; preds = %625
  %629 = call ptr @Perl_newSVsv(ptr noundef nonnull %626) #8
  br label %632

630:                                              ; preds = %625
  %631 = call ptr @Perl_newSVsv(ptr noundef %578) #8
  br label %632

632:                                              ; preds = %608, %621, %616, %628, %630
  %633 = phi ptr [ %629, %628 ], [ %631, %630 ], [ %603, %616 ], [ %603, %621 ], [ %603, %608 ]
  %634 = load i8, ptr %430, align 4, !tbaa !120, !range !73, !noundef !74
  %635 = icmp eq i8 %634, 0
  br i1 %635, label %636, label %641

636:                                              ; preds = %632
  %637 = load i8, ptr %431, align 1, !tbaa !121, !range !73, !noundef !74
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %639, label %641

639:                                              ; preds = %636
  %640 = call fastcc ptr @sv_lower(ptr noundef %578)
  br label %641

641:                                              ; preds = %639, %636, %632
  br i1 %559, label %642, label %668

642:                                              ; preds = %641
  %643 = call ptr @Perl_hv_common(ptr noundef %567, ptr noundef %578, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #8
  %644 = icmp eq ptr %643, null
  br i1 %644, label %645, label %650

645:                                              ; preds = %642
  %646 = call ptr @Perl_hv_common(ptr noundef %567, ptr noundef %578, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %633, i32 noundef 0) #8
  %647 = icmp ne ptr %646, null
  %648 = icmp eq ptr %633, null
  %649 = select i1 %647, i1 true, i1 %648
  br i1 %649, label %659, label %652

650:                                              ; preds = %642
  %651 = icmp eq ptr %633, null
  br i1 %651, label %659, label %652

652:                                              ; preds = %645, %650
  %653 = getelementptr inbounds %struct.sv, ptr %633, i64 0, i32 1
  %654 = load i32, ptr %653, align 8, !tbaa !46
  %655 = icmp ugt i32 %654, 1
  br i1 %655, label %656, label %658

656:                                              ; preds = %652
  %657 = add i32 %654, -1
  store i32 %657, ptr %653, align 8, !tbaa !46
  br label %659

658:                                              ; preds = %652
  call void @Perl_sv_free2(ptr noundef nonnull %633, i32 noundef %654) #8
  br label %659

659:                                              ; preds = %658, %656, %650, %645
  %660 = icmp eq ptr %578, null
  br i1 %660, label %693, label %661

661:                                              ; preds = %659
  %662 = getelementptr inbounds %struct.sv, ptr %578, i64 0, i32 1
  %663 = load i32, ptr %662, align 8, !tbaa !46
  %664 = icmp ugt i32 %663, 1
  br i1 %664, label %665, label %667

665:                                              ; preds = %661
  %666 = add i32 %663, -1
  store i32 %666, ptr %662, align 8, !tbaa !46
  br label %693

667:                                              ; preds = %661
  call void @Perl_sv_free2(ptr noundef nonnull %578, i32 noundef %663) #8
  br label %693

668:                                              ; preds = %641
  br i1 %432, label %670, label %669

669:                                              ; preds = %668
  call void @Perl_av_push(ptr noundef nonnull %402, ptr noundef %578) #8
  call void @Perl_av_push(ptr noundef nonnull %402, ptr noundef %633) #8
  br label %693

670:                                              ; preds = %668
  %671 = load ptr, ptr @PL_stack_max, align 8, !tbaa !64
  %672 = ptrtoint ptr %671 to i64
  %673 = ptrtoint ptr %570 to i64
  %674 = sub i64 %672, %673
  %675 = icmp slt i64 %674, 8
  br i1 %675, label %676, label %678

676:                                              ; preds = %670
  %677 = call ptr @Perl_stack_grow(ptr noundef %570, ptr noundef %570, i64 noundef 1) #8
  br label %678

678:                                              ; preds = %670, %676
  %679 = phi ptr [ %677, %676 ], [ %570, %670 ]
  %680 = call ptr @Perl_sv_2mortal(ptr noundef %578) #8
  %681 = getelementptr inbounds ptr, ptr %679, i64 1
  store ptr %680, ptr %681, align 8, !tbaa !64
  %682 = load ptr, ptr @PL_stack_max, align 8, !tbaa !64
  %683 = ptrtoint ptr %682 to i64
  %684 = ptrtoint ptr %681 to i64
  %685 = sub i64 %683, %684
  %686 = icmp slt i64 %685, 8
  br i1 %686, label %687, label %689

687:                                              ; preds = %678
  %688 = call ptr @Perl_stack_grow(ptr noundef nonnull %681, ptr noundef nonnull %681, i64 noundef 1) #8
  br label %689

689:                                              ; preds = %678, %687
  %690 = phi ptr [ %688, %687 ], [ %681, %678 ]
  %691 = call ptr @Perl_sv_2mortal(ptr noundef %633) #8
  %692 = getelementptr inbounds ptr, ptr %690, i64 1
  store ptr %691, ptr %692, align 8, !tbaa !64
  br label %693

693:                                              ; preds = %667, %665, %659, %669, %689
  %694 = phi ptr [ %570, %669 ], [ %692, %689 ], [ %570, %659 ], [ %570, %665 ], [ %570, %667 ]
  %695 = add nuw i64 %569, 2
  %696 = trunc i64 %695 to i32
  %697 = icmp slt i32 %696, %6
  br i1 %697, label %568, label %829, !llvm.loop !131

698:                                              ; preds = %557
  %699 = icmp ne i8 %453, 8
  %700 = zext i1 %699 to i32
  br label %829

701:                                              ; preds = %450
  br i1 %419, label %702, label %829

702:                                              ; preds = %701
  %703 = call ptr @Perl_newSV_type(i32 noundef 11) #8
  br i1 %420, label %704, label %730

704:                                              ; preds = %702, %726
  %705 = phi i64 [ %727, %726 ], [ 1, %702 ]
  %706 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %705
  %707 = load ptr, ptr %706, align 8, !tbaa !106
  %708 = getelementptr inbounds %struct.token_pos, ptr %5, i64 %705, i32 1
  %709 = load ptr, ptr %708, align 8, !tbaa !108
  %710 = ptrtoint ptr %709 to i64
  %711 = ptrtoint ptr %707 to i64
  %712 = sub i64 %710, %711
  %713 = call ptr @Perl_newSVpvn(ptr noundef %707, i64 noundef %712) #8
  br i1 %36, label %718, label %714

714:                                              ; preds = %704
  %715 = getelementptr inbounds %struct.sv, ptr %713, i64 0, i32 2
  %716 = load i32, ptr %715, align 4, !tbaa !69
  %717 = or i32 %716, 536870912
  store i32 %717, ptr %715, align 4, !tbaa !69
  br label %718

718:                                              ; preds = %714, %704
  %719 = load i8, ptr %421, align 4, !tbaa !120, !range !73, !noundef !74
  %720 = icmp eq i8 %719, 0
  br i1 %720, label %721, label %726

721:                                              ; preds = %718
  %722 = load i8, ptr %422, align 1, !tbaa !121, !range !73, !noundef !74
  %723 = icmp eq i8 %722, 0
  br i1 %723, label %724, label %726

724:                                              ; preds = %721
  %725 = call fastcc ptr @sv_lower(ptr noundef %713)
  br label %726

726:                                              ; preds = %724, %721, %718
  call void @Perl_av_push(ptr noundef %703, ptr noundef %713) #8
  %727 = add nuw i64 %705, 2
  %728 = trunc i64 %727 to i32
  %729 = icmp slt i32 %728, %6
  br i1 %729, label %704, label %730, !llvm.loop !132

730:                                              ; preds = %726, %702
  %731 = call ptr @Perl_newRV_noinc(ptr noundef %703) #8
  %732 = call ptr @Perl_sv_2mortal(ptr noundef %731) #8
  br label %829

733:                                              ; preds = %450
  %734 = call ptr @Perl_newSVpvn(ptr noundef %2, i64 noundef %418) #8
  %735 = call ptr @Perl_sv_2mortal(ptr noundef %734) #8
  br i1 %36, label %829, label %736

736:                                              ; preds = %733
  %737 = getelementptr inbounds %struct.sv, ptr %735, i64 0, i32 2
  %738 = load i32, ptr %737, align 4, !tbaa !69
  %739 = or i32 %738, 536870912
  store i32 %739, ptr %737, align 4, !tbaa !69
  br label %829

740:                                              ; preds = %450
  br i1 %260, label %741, label %829

741:                                              ; preds = %740
  %742 = call ptr @Perl_newSVpvn(ptr noundef %2, i64 noundef %414) #8
  %743 = call ptr @Perl_sv_2mortal(ptr noundef %742) #8
  br i1 %36, label %748, label %744

744:                                              ; preds = %741
  %745 = getelementptr inbounds %struct.sv, ptr %743, i64 0, i32 2
  %746 = load i32, ptr %745, align 4, !tbaa !69
  %747 = or i32 %746, 536870912
  store i32 %747, ptr %745, align 4, !tbaa !69
  br label %748

748:                                              ; preds = %744, %741
  %749 = load i8, ptr %415, align 8, !tbaa !115, !range !73, !noundef !74
  %750 = icmp eq i8 %749, 0
  br i1 %750, label %751, label %829

751:                                              ; preds = %748
  %752 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 29
  %753 = load i8, ptr %752, align 1, !tbaa !116, !range !73, !noundef !74
  %754 = icmp eq i8 %753, 0
  br i1 %754, label %757, label %755

755:                                              ; preds = %751
  %756 = call zeroext i1 @Perl_sv_utf8_decode(ptr noundef %743) #8
  br label %757

757:                                              ; preds = %755, %751
  %758 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 41
  %759 = load ptr, ptr %758, align 8, !tbaa !70
  %760 = call fastcc ptr @decode_entities(ptr noundef %743, ptr noundef %759, i1 noundef zeroext true)
  %761 = load i8, ptr %752, align 1, !tbaa !116, !range !73, !noundef !74
  %762 = icmp eq i8 %761, 0
  br i1 %762, label %829, label %763

763:                                              ; preds = %757
  %764 = getelementptr inbounds %struct.sv, ptr %743, i64 0, i32 2
  %765 = load i32, ptr %764, align 4, !tbaa !69
  %766 = and i32 %765, -536870913
  store i32 %766, ptr %764, align 4, !tbaa !69
  br label %829

767:                                              ; preds = %450
  br i1 %260, label %768, label %829

768:                                              ; preds = %767
  %769 = load i8, ptr %411, align 8, !tbaa !115, !range !73, !noundef !74
  %770 = icmp eq i8 %769, 0
  %771 = select i1 %770, ptr @PL_sv_no, ptr @PL_sv_yes
  br label %829

772:                                              ; preds = %450
  %773 = load ptr, ptr %410, align 8, !tbaa !49
  %774 = call ptr @Perl_sv_2mortal(ptr noundef %773) #8
  %775 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.47, i64 noundef 0) #8
  store ptr %775, ptr %410, align 8, !tbaa !49
  br label %829

776:                                              ; preds = %450
  %777 = call ptr @Perl_newSViv(i64 noundef %18) #8
  %778 = call ptr @Perl_sv_2mortal(ptr noundef %777) #8
  br label %829

779:                                              ; preds = %450
  br i1 %36, label %782, label %780

780:                                              ; preds = %779
  %781 = call i64 @Perl_utf8_distance(ptr noundef %3, ptr noundef %2) #8
  br label %782

782:                                              ; preds = %779, %780
  %783 = phi i64 [ %781, %780 ], [ %409, %779 ]
  %784 = add i64 %783, %18
  %785 = call ptr @Perl_newSViv(i64 noundef %784) #8
  %786 = call ptr @Perl_sv_2mortal(ptr noundef %785) #8
  br label %829

787:                                              ; preds = %450
  br i1 %36, label %790, label %788

788:                                              ; preds = %787
  %789 = call i64 @Perl_utf8_distance(ptr noundef %3, ptr noundef %2) #8
  br label %790

790:                                              ; preds = %787, %788
  %791 = phi i64 [ %789, %788 ], [ %406, %787 ]
  %792 = call ptr @Perl_newSViv(i64 noundef %791) #8
  %793 = call ptr @Perl_sv_2mortal(ptr noundef %792) #8
  br label %829

794:                                              ; preds = %450
  %795 = call ptr @Perl_newSViv(i64 noundef %20) #8
  %796 = call ptr @Perl_sv_2mortal(ptr noundef %795) #8
  br label %829

797:                                              ; preds = %450
  %798 = call ptr @Perl_newSViv(i64 noundef %22) #8
  %799 = call ptr @Perl_sv_2mortal(ptr noundef %798) #8
  br label %829

800:                                              ; preds = %450
  %801 = load ptr, ptr %403, align 8, !tbaa !64
  %802 = call ptr @Perl_newSVpv(ptr noundef %801, i64 noundef 0) #8
  %803 = call ptr @Perl_sv_2mortal(ptr noundef %802) #8
  br label %829

804:                                              ; preds = %450
  %805 = getelementptr inbounds i8, ptr %451, i64 1
  %806 = load i8, ptr %805, align 1, !tbaa !68
  %807 = zext i8 %806 to i64
  %808 = getelementptr inbounds i8, ptr %451, i64 2
  %809 = call ptr @Perl_newSVpvn(ptr noundef nonnull %808, i64 noundef %807) #8
  %810 = call ptr @Perl_sv_2mortal(ptr noundef %809) #8
  %811 = load ptr, ptr %352, align 8, !tbaa !54
  %812 = getelementptr inbounds %struct.sv, ptr %811, i64 0, i32 2
  %813 = load i32, ptr %812, align 4, !tbaa !69
  %814 = and i32 %813, 536870912
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %820, label %816

816:                                              ; preds = %804
  %817 = getelementptr inbounds %struct.sv, ptr %810, i64 0, i32 2
  %818 = load i32, ptr %817, align 4, !tbaa !69
  %819 = or i32 %818, 536870912
  store i32 %819, ptr %817, align 4, !tbaa !69
  br label %820

820:                                              ; preds = %816, %804
  %821 = add nuw nsw i64 %807, 1
  %822 = getelementptr inbounds i8, ptr %451, i64 %821
  br label %829

823:                                              ; preds = %450
  %824 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull @PL_sv_undef, i32 noundef 2) #8
  br label %829

825:                                              ; preds = %450
  %826 = sext i8 %453 to i32
  %827 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.74, i32 noundef %826) #8
  %828 = call ptr @Perl_sv_2mortal(ptr noundef %827) #8
  br label %829

829:                                              ; preds = %693, %564, %698, %767, %768, %740, %757, %763, %748, %733, %736, %701, %730, %530, %556, %553, %491, %492, %527, %456, %488, %825, %823, %820, %800, %797, %794, %790, %782, %776, %772, %454
  %830 = phi i32 [ 1, %825 ], [ 1, %823 ], [ 1, %820 ], [ 1, %800 ], [ 1, %797 ], [ 1, %794 ], [ 1, %790 ], [ 1, %782 ], [ 1, %776 ], [ 1, %772 ], [ 1, %768 ], [ 1, %767 ], [ 1, %748 ], [ 1, %763 ], [ 1, %757 ], [ 1, %740 ], [ 1, %736 ], [ 1, %733 ], [ 1, %730 ], [ 1, %701 ], [ 1, %556 ], [ 1, %553 ], [ 1, %530 ], [ 1, %527 ], [ 1, %492 ], [ 1, %491 ], [ 1, %488 ], [ 1, %456 ], [ 1, %454 ], [ %700, %698 ], [ %565, %564 ], [ %565, %693 ]
  %831 = phi ptr [ %828, %825 ], [ %824, %823 ], [ %810, %820 ], [ %803, %800 ], [ %799, %797 ], [ %796, %794 ], [ %793, %790 ], [ %786, %782 ], [ %778, %776 ], [ %774, %772 ], [ %771, %768 ], [ null, %767 ], [ %743, %748 ], [ %743, %763 ], [ %743, %757 ], [ null, %740 ], [ %735, %736 ], [ %735, %733 ], [ %732, %730 ], [ null, %701 ], [ %538, %556 ], [ %538, %553 ], [ null, %530 ], [ %529, %527 ], [ null, %492 ], [ null, %491 ], [ %490, %488 ], [ null, %456 ], [ %455, %454 ], [ null, %698 ], [ %566, %564 ], [ %566, %693 ]
  %832 = phi ptr [ %451, %825 ], [ %451, %823 ], [ %822, %820 ], [ %451, %800 ], [ %451, %797 ], [ %451, %794 ], [ %451, %790 ], [ %451, %782 ], [ %451, %776 ], [ %451, %772 ], [ %451, %768 ], [ %451, %767 ], [ %451, %748 ], [ %451, %763 ], [ %451, %757 ], [ %451, %740 ], [ %451, %736 ], [ %451, %733 ], [ %451, %730 ], [ %451, %701 ], [ %451, %556 ], [ %451, %553 ], [ %451, %530 ], [ %451, %527 ], [ %451, %492 ], [ %451, %491 ], [ %451, %488 ], [ %451, %456 ], [ %451, %454 ], [ %451, %698 ], [ %451, %564 ], [ %451, %693 ]
  %833 = phi ptr [ %452, %825 ], [ %452, %823 ], [ %452, %820 ], [ %452, %800 ], [ %452, %797 ], [ %452, %794 ], [ %452, %790 ], [ %452, %782 ], [ %452, %776 ], [ %452, %772 ], [ %452, %768 ], [ %452, %767 ], [ %452, %748 ], [ %452, %763 ], [ %452, %757 ], [ %452, %740 ], [ %452, %736 ], [ %452, %733 ], [ %452, %730 ], [ %452, %701 ], [ %452, %556 ], [ %452, %553 ], [ %452, %530 ], [ %452, %527 ], [ %452, %492 ], [ %452, %491 ], [ %452, %488 ], [ %452, %456 ], [ %452, %454 ], [ %452, %698 ], [ %452, %564 ], [ %694, %693 ]
  %834 = icmp eq i32 %830, 0
  br i1 %834, label %859, label %835

835:                                              ; preds = %829
  %836 = icmp eq ptr %831, null
  br i1 %836, label %837, label %839

837:                                              ; preds = %835
  %838 = call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull @PL_sv_undef, i32 noundef 2) #8
  br label %839

839:                                              ; preds = %837, %835
  %840 = phi ptr [ %831, %835 ], [ %838, %837 ]
  br i1 %447, label %848, label %841

841:                                              ; preds = %839
  %842 = icmp eq ptr %840, null
  br i1 %842, label %847, label %843

843:                                              ; preds = %841
  %844 = getelementptr inbounds %struct.sv, ptr %840, i64 0, i32 1
  %845 = load i32, ptr %844, align 8, !tbaa !46
  %846 = add i32 %845, 1
  store i32 %846, ptr %844, align 8, !tbaa !46
  br label %847

847:                                              ; preds = %841, %843
  call void @Perl_av_push(ptr noundef nonnull %402, ptr noundef %840) #8
  br label %859

848:                                              ; preds = %839
  %849 = load ptr, ptr @PL_stack_max, align 8, !tbaa !64
  %850 = ptrtoint ptr %849 to i64
  %851 = ptrtoint ptr %833 to i64
  %852 = sub i64 %850, %851
  %853 = icmp slt i64 %852, 8
  br i1 %853, label %854, label %856

854:                                              ; preds = %848
  %855 = call ptr @Perl_stack_grow(ptr noundef %833, ptr noundef %833, i64 noundef 1) #8
  br label %856

856:                                              ; preds = %848, %854
  %857 = phi ptr [ %855, %854 ], [ %833, %848 ]
  %858 = getelementptr inbounds ptr, ptr %857, i64 1
  store ptr %840, ptr %858, align 8, !tbaa !64
  br label %859

859:                                              ; preds = %847, %856, %829
  %860 = phi ptr [ %833, %847 ], [ %858, %856 ], [ %833, %829 ]
  %861 = getelementptr inbounds i8, ptr %832, i64 1
  br label %450, !llvm.loop !133

862:                                              ; preds = %450
  %863 = icmp eq ptr %402, null
  br i1 %863, label %869, label %864

864:                                              ; preds = %862
  %865 = load ptr, ptr %197, align 8, !tbaa !52
  %866 = icmp eq ptr %402, %865
  br i1 %866, label %1182, label %867

867:                                              ; preds = %864
  %868 = call ptr @Perl_newRV_noinc(ptr noundef nonnull %402) #8
  call void @Perl_av_push(ptr noundef %865, ptr noundef %868) #8
  br label %1182

869:                                              ; preds = %862
  store ptr %452, ptr @PL_stack_sp, align 8, !tbaa !64
  %870 = load i8, ptr %401, align 1, !tbaa !68
  %871 = icmp eq i8 %870, 1
  br i1 %871, label %872, label %892

872:                                              ; preds = %869
  %873 = load ptr, ptr %197, align 8, !tbaa !52
  %874 = getelementptr inbounds %struct.sv, ptr %873, i64 0, i32 2
  %875 = load i32, ptr %874, align 4, !tbaa !69
  %876 = and i32 %875, 2048
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %878, label %892

878:                                              ; preds = %872
  %879 = and i32 %875, 2098176
  %880 = icmp eq i32 %879, 1024
  br i1 %880, label %881, label %887

881:                                              ; preds = %878
  %882 = load ptr, ptr %873, align 8, !tbaa !77
  %883 = getelementptr inbounds %struct.xpv, ptr %882, i64 0, i32 2
  %884 = load i64, ptr %883, align 8, !tbaa !78
  store i64 %884, ptr %9, align 8, !tbaa !81
  %885 = getelementptr inbounds %struct.sv, ptr %873, i64 0, i32 3
  %886 = load ptr, ptr %885, align 8, !tbaa !68
  br label %889

887:                                              ; preds = %878
  %888 = call ptr @Perl_sv_2pv_flags(ptr noundef %873, ptr noundef nonnull %9, i32 noundef 2) #8
  br label %889

889:                                              ; preds = %887, %881
  %890 = phi ptr [ %886, %881 ], [ %888, %887 ]
  %891 = call i32 @Perl_call_method(ptr noundef %890, i32 noundef 13) #8
  br label %895

892:                                              ; preds = %872, %869
  %893 = load ptr, ptr %197, align 8, !tbaa !52
  %894 = call i32 @Perl_call_sv(ptr noundef %893, i32 noundef 13) #8
  br label %895

895:                                              ; preds = %892, %889
  %896 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %897 = getelementptr inbounds %struct.gv, ptr %896, i64 0, i32 3
  %898 = load ptr, ptr %897, align 8, !tbaa !68
  %899 = load ptr, ptr %898, align 8, !tbaa !75
  %900 = icmp eq ptr %899, null
  br i1 %900, label %901, label %905

901:                                              ; preds = %895
  %902 = call ptr @Perl_gv_add_by_type(ptr noundef %896, i32 noundef 0) #8
  %903 = getelementptr inbounds %struct.gv, ptr %902, i64 0, i32 3
  %904 = load ptr, ptr %903, align 8, !tbaa !68
  br label %905

905:                                              ; preds = %895, %901
  %906 = phi ptr [ %904, %901 ], [ %898, %895 ]
  %907 = load ptr, ptr %906, align 8, !tbaa !64
  %908 = icmp eq ptr %907, null
  br i1 %908, label %1176, label %909

909:                                              ; preds = %905
  %910 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %911 = getelementptr inbounds %struct.gv, ptr %910, i64 0, i32 3
  %912 = load ptr, ptr %911, align 8, !tbaa !68
  %913 = load ptr, ptr %912, align 8, !tbaa !75
  %914 = icmp eq ptr %913, null
  br i1 %914, label %915, label %919

915:                                              ; preds = %909
  %916 = call ptr @Perl_gv_add_by_type(ptr noundef %910, i32 noundef 0) #8
  %917 = getelementptr inbounds %struct.gv, ptr %916, i64 0, i32 3
  %918 = load ptr, ptr %917, align 8, !tbaa !68
  br label %919

919:                                              ; preds = %909, %915
  %920 = phi ptr [ %918, %915 ], [ %912, %909 ]
  %921 = load ptr, ptr %920, align 8, !tbaa !64
  %922 = getelementptr inbounds %struct.sv, ptr %921, i64 0, i32 2
  %923 = load i32, ptr %922, align 4, !tbaa !69
  %924 = and i32 %923, 2097152
  %925 = icmp eq i32 %924, 0
  %926 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %927 = getelementptr inbounds %struct.gv, ptr %926, i64 0, i32 3
  %928 = load ptr, ptr %927, align 8, !tbaa !68
  %929 = load ptr, ptr %928, align 8, !tbaa !75
  %930 = icmp eq ptr %929, null
  br i1 %925, label %940, label %931

931:                                              ; preds = %919
  br i1 %930, label %932, label %936

932:                                              ; preds = %931
  %933 = call ptr @Perl_gv_add_by_type(ptr noundef %926, i32 noundef 0) #8
  %934 = getelementptr inbounds %struct.gv, ptr %933, i64 0, i32 3
  %935 = load ptr, ptr %934, align 8, !tbaa !68
  br label %936

936:                                              ; preds = %931, %932
  %937 = phi ptr [ %935, %932 ], [ %928, %931 ]
  %938 = load ptr, ptr %937, align 8, !tbaa !64
  %939 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %938, i32 noundef 2) #8
  br i1 %939, label %1175, label %1176

940:                                              ; preds = %919
  br i1 %930, label %941, label %945

941:                                              ; preds = %940
  %942 = call ptr @Perl_gv_add_by_type(ptr noundef %926, i32 noundef 0) #8
  %943 = getelementptr inbounds %struct.gv, ptr %942, i64 0, i32 3
  %944 = load ptr, ptr %943, align 8, !tbaa !68
  br label %945

945:                                              ; preds = %940, %941
  %946 = phi ptr [ %944, %941 ], [ %928, %940 ]
  %947 = load ptr, ptr %946, align 8, !tbaa !64
  %948 = getelementptr inbounds %struct.sv, ptr %947, i64 0, i32 2
  %949 = load i32, ptr %948, align 4, !tbaa !69
  %950 = and i32 %949, 65280
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %952, label %986

952:                                              ; preds = %945
  %953 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %954 = getelementptr inbounds %struct.gv, ptr %953, i64 0, i32 3
  %955 = load ptr, ptr %954, align 8, !tbaa !68
  %956 = load ptr, ptr %955, align 8, !tbaa !75
  %957 = icmp eq ptr %956, null
  br i1 %957, label %958, label %962

958:                                              ; preds = %952
  %959 = call ptr @Perl_gv_add_by_type(ptr noundef %953, i32 noundef 0) #8
  %960 = getelementptr inbounds %struct.gv, ptr %959, i64 0, i32 3
  %961 = load ptr, ptr %960, align 8, !tbaa !68
  br label %962

962:                                              ; preds = %952, %958
  %963 = phi ptr [ %961, %958 ], [ %955, %952 ]
  %964 = load ptr, ptr %963, align 8, !tbaa !64
  %965 = getelementptr inbounds %struct.sv, ptr %964, i64 0, i32 2
  %966 = load i32, ptr %965, align 4, !tbaa !69
  %967 = and i32 %966, 255
  %968 = icmp eq i32 %967, 8
  br i1 %968, label %986, label %969

969:                                              ; preds = %962
  %970 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %971 = getelementptr inbounds %struct.gv, ptr %970, i64 0, i32 3
  %972 = load ptr, ptr %971, align 8, !tbaa !68
  %973 = load ptr, ptr %972, align 8, !tbaa !75
  %974 = icmp eq ptr %973, null
  br i1 %974, label %975, label %979

975:                                              ; preds = %969
  %976 = call ptr @Perl_gv_add_by_type(ptr noundef %970, i32 noundef 0) #8
  %977 = getelementptr inbounds %struct.gv, ptr %976, i64 0, i32 3
  %978 = load ptr, ptr %977, align 8, !tbaa !68
  br label %979

979:                                              ; preds = %969, %975
  %980 = phi ptr [ %978, %975 ], [ %972, %969 ]
  %981 = load ptr, ptr %980, align 8, !tbaa !64
  %982 = getelementptr inbounds %struct.sv, ptr %981, i64 0, i32 2
  %983 = load i32, ptr %982, align 4, !tbaa !69
  %984 = and i32 %983, 16826623
  %985 = icmp eq i32 %984, 16777226
  br i1 %985, label %986, label %1176

986:                                              ; preds = %979, %962, %945
  %987 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %988 = getelementptr inbounds %struct.gv, ptr %987, i64 0, i32 3
  %989 = load ptr, ptr %988, align 8, !tbaa !68
  %990 = load ptr, ptr %989, align 8, !tbaa !75
  %991 = icmp eq ptr %990, null
  br i1 %991, label %992, label %996

992:                                              ; preds = %986
  %993 = call ptr @Perl_gv_add_by_type(ptr noundef %987, i32 noundef 0) #8
  %994 = getelementptr inbounds %struct.gv, ptr %993, i64 0, i32 3
  %995 = load ptr, ptr %994, align 8, !tbaa !68
  br label %996

996:                                              ; preds = %986, %992
  %997 = phi ptr [ %995, %992 ], [ %989, %986 ]
  %998 = load ptr, ptr %997, align 8, !tbaa !64
  %999 = getelementptr inbounds %struct.sv, ptr %998, i64 0, i32 2
  %1000 = load i32, ptr %999, align 4, !tbaa !69
  %1001 = and i32 %1000, 1024
  %1002 = icmp eq i32 %1001, 0
  %1003 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %1004 = getelementptr inbounds %struct.gv, ptr %1003, i64 0, i32 3
  %1005 = load ptr, ptr %1004, align 8, !tbaa !68
  %1006 = load ptr, ptr %1005, align 8, !tbaa !75
  %1007 = icmp eq ptr %1006, null
  br i1 %1002, label %1069, label %1008

1008:                                             ; preds = %996
  br i1 %1007, label %1009, label %1013

1009:                                             ; preds = %1008
  %1010 = call ptr @Perl_gv_add_by_type(ptr noundef %1003, i32 noundef 0) #8
  %1011 = getelementptr inbounds %struct.gv, ptr %1010, i64 0, i32 3
  %1012 = load ptr, ptr %1011, align 8, !tbaa !68
  br label %1013

1013:                                             ; preds = %1008, %1009
  %1014 = phi ptr [ %1012, %1009 ], [ %1005, %1008 ]
  %1015 = load ptr, ptr %1014, align 8, !tbaa !64
  %1016 = load ptr, ptr %1015, align 8, !tbaa !77
  %1017 = icmp eq ptr %1016, null
  br i1 %1017, label %1176, label %1018

1018:                                             ; preds = %1013
  %1019 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %1020 = getelementptr inbounds %struct.gv, ptr %1019, i64 0, i32 3
  %1021 = load ptr, ptr %1020, align 8, !tbaa !68
  %1022 = load ptr, ptr %1021, align 8, !tbaa !75
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %1024, label %1028

1024:                                             ; preds = %1018
  %1025 = call ptr @Perl_gv_add_by_type(ptr noundef %1019, i32 noundef 0) #8
  %1026 = getelementptr inbounds %struct.gv, ptr %1025, i64 0, i32 3
  %1027 = load ptr, ptr %1026, align 8, !tbaa !68
  br label %1028

1028:                                             ; preds = %1018, %1024
  %1029 = phi ptr [ %1027, %1024 ], [ %1021, %1018 ]
  %1030 = load ptr, ptr %1029, align 8, !tbaa !64
  %1031 = load ptr, ptr %1030, align 8, !tbaa !77
  %1032 = getelementptr inbounds %struct.xpv, ptr %1031, i64 0, i32 2
  %1033 = load i64, ptr %1032, align 8, !tbaa !78
  %1034 = icmp ugt i64 %1033, 1
  br i1 %1034, label %1175, label %1035

1035:                                             ; preds = %1028
  %1036 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %1037 = getelementptr inbounds %struct.gv, ptr %1036, i64 0, i32 3
  %1038 = load ptr, ptr %1037, align 8, !tbaa !68
  %1039 = load ptr, ptr %1038, align 8, !tbaa !75
  %1040 = icmp eq ptr %1039, null
  br i1 %1040, label %1041, label %1045

1041:                                             ; preds = %1035
  %1042 = call ptr @Perl_gv_add_by_type(ptr noundef %1036, i32 noundef 0) #8
  %1043 = getelementptr inbounds %struct.gv, ptr %1042, i64 0, i32 3
  %1044 = load ptr, ptr %1043, align 8, !tbaa !68
  br label %1045

1045:                                             ; preds = %1035, %1041
  %1046 = phi ptr [ %1044, %1041 ], [ %1038, %1035 ]
  %1047 = load ptr, ptr %1046, align 8, !tbaa !64
  %1048 = load ptr, ptr %1047, align 8, !tbaa !77
  %1049 = getelementptr inbounds %struct.xpv, ptr %1048, i64 0, i32 2
  %1050 = load i64, ptr %1049, align 8, !tbaa !78
  %1051 = icmp eq i64 %1050, 0
  br i1 %1051, label %1176, label %1052

1052:                                             ; preds = %1045
  %1053 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %1054 = getelementptr inbounds %struct.gv, ptr %1053, i64 0, i32 3
  %1055 = load ptr, ptr %1054, align 8, !tbaa !68
  %1056 = load ptr, ptr %1055, align 8, !tbaa !75
  %1057 = icmp eq ptr %1056, null
  br i1 %1057, label %1058, label %1062

1058:                                             ; preds = %1052
  %1059 = call ptr @Perl_gv_add_by_type(ptr noundef %1053, i32 noundef 0) #8
  %1060 = getelementptr inbounds %struct.gv, ptr %1059, i64 0, i32 3
  %1061 = load ptr, ptr %1060, align 8, !tbaa !68
  br label %1062

1062:                                             ; preds = %1052, %1058
  %1063 = phi ptr [ %1061, %1058 ], [ %1055, %1052 ]
  %1064 = load ptr, ptr %1063, align 8, !tbaa !64
  %1065 = getelementptr inbounds %struct.sv, ptr %1064, i64 0, i32 3
  %1066 = load ptr, ptr %1065, align 8, !tbaa !68
  %1067 = load i8, ptr %1066, align 1, !tbaa !68
  %1068 = icmp eq i8 %1067, 48
  br i1 %1068, label %1176, label %1175

1069:                                             ; preds = %996
  br i1 %1007, label %1070, label %1074

1070:                                             ; preds = %1069
  %1071 = call ptr @Perl_gv_add_by_type(ptr noundef %1003, i32 noundef 0) #8
  %1072 = getelementptr inbounds %struct.gv, ptr %1071, i64 0, i32 3
  %1073 = load ptr, ptr %1072, align 8, !tbaa !68
  br label %1074

1074:                                             ; preds = %1069, %1070
  %1075 = phi ptr [ %1073, %1070 ], [ %1005, %1069 ]
  %1076 = load ptr, ptr %1075, align 8, !tbaa !64
  %1077 = getelementptr inbounds %struct.sv, ptr %1076, i64 0, i32 2
  %1078 = load i32, ptr %1077, align 4, !tbaa !69
  %1079 = and i32 %1078, 768
  %1080 = icmp eq i32 %1079, 0
  %1081 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %1082 = getelementptr inbounds %struct.gv, ptr %1081, i64 0, i32 3
  %1083 = load ptr, ptr %1082, align 8, !tbaa !68
  %1084 = load ptr, ptr %1083, align 8, !tbaa !75
  %1085 = icmp eq ptr %1084, null
  br i1 %1080, label %1166, label %1086

1086:                                             ; preds = %1074
  br i1 %1085, label %1087, label %1091

1087:                                             ; preds = %1086
  %1088 = call ptr @Perl_gv_add_by_type(ptr noundef %1081, i32 noundef 0) #8
  %1089 = getelementptr inbounds %struct.gv, ptr %1088, i64 0, i32 3
  %1090 = load ptr, ptr %1089, align 8, !tbaa !68
  br label %1091

1091:                                             ; preds = %1086, %1087
  %1092 = phi ptr [ %1090, %1087 ], [ %1083, %1086 ]
  %1093 = load ptr, ptr %1092, align 8, !tbaa !64
  %1094 = getelementptr inbounds %struct.sv, ptr %1093, i64 0, i32 2
  %1095 = load i32, ptr %1094, align 4, !tbaa !69
  %1096 = and i32 %1095, 256
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1115, label %1098

1098:                                             ; preds = %1091
  %1099 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %1100 = getelementptr inbounds %struct.gv, ptr %1099, i64 0, i32 3
  %1101 = load ptr, ptr %1100, align 8, !tbaa !68
  %1102 = load ptr, ptr %1101, align 8, !tbaa !75
  %1103 = icmp eq ptr %1102, null
  br i1 %1103, label %1104, label %1108

1104:                                             ; preds = %1098
  %1105 = call ptr @Perl_gv_add_by_type(ptr noundef %1099, i32 noundef 0) #8
  %1106 = getelementptr inbounds %struct.gv, ptr %1105, i64 0, i32 3
  %1107 = load ptr, ptr %1106, align 8, !tbaa !68
  br label %1108

1108:                                             ; preds = %1098, %1104
  %1109 = phi ptr [ %1107, %1104 ], [ %1101, %1098 ]
  %1110 = load ptr, ptr %1109, align 8, !tbaa !64
  %1111 = load ptr, ptr %1110, align 8, !tbaa !77
  %1112 = getelementptr inbounds %struct.xpviv, ptr %1111, i64 0, i32 4
  %1113 = load i64, ptr %1112, align 8, !tbaa !68
  %1114 = icmp eq i64 %1113, 0
  br i1 %1114, label %1115, label %1175

1115:                                             ; preds = %1108, %1091
  %1116 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %1117 = getelementptr inbounds %struct.gv, ptr %1116, i64 0, i32 3
  %1118 = load ptr, ptr %1117, align 8, !tbaa !68
  %1119 = load ptr, ptr %1118, align 8, !tbaa !75
  %1120 = icmp eq ptr %1119, null
  br i1 %1120, label %1121, label %1125

1121:                                             ; preds = %1115
  %1122 = call ptr @Perl_gv_add_by_type(ptr noundef %1116, i32 noundef 0) #8
  %1123 = getelementptr inbounds %struct.gv, ptr %1122, i64 0, i32 3
  %1124 = load ptr, ptr %1123, align 8, !tbaa !68
  br label %1125

1125:                                             ; preds = %1115, %1121
  %1126 = phi ptr [ %1124, %1121 ], [ %1118, %1115 ]
  %1127 = load ptr, ptr %1126, align 8, !tbaa !64
  %1128 = getelementptr inbounds %struct.sv, ptr %1127, i64 0, i32 2
  %1129 = load i32, ptr %1128, align 4, !tbaa !69
  %1130 = and i32 %1129, 512
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1176, label %1132

1132:                                             ; preds = %1125
  %1133 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %1134 = getelementptr inbounds %struct.gv, ptr %1133, i64 0, i32 3
  %1135 = load ptr, ptr %1134, align 8, !tbaa !68
  %1136 = load ptr, ptr %1135, align 8, !tbaa !75
  %1137 = icmp eq ptr %1136, null
  br i1 %1137, label %1138, label %1142

1138:                                             ; preds = %1132
  %1139 = call ptr @Perl_gv_add_by_type(ptr noundef %1133, i32 noundef 0) #8
  %1140 = getelementptr inbounds %struct.gv, ptr %1139, i64 0, i32 3
  %1141 = load ptr, ptr %1140, align 8, !tbaa !68
  br label %1142

1142:                                             ; preds = %1132, %1138
  %1143 = phi ptr [ %1141, %1138 ], [ %1135, %1132 ]
  %1144 = load ptr, ptr %1143, align 8, !tbaa !64
  %1145 = load ptr, ptr %1144, align 8, !tbaa !77
  %1146 = getelementptr inbounds %struct.xpvnv, ptr %1145, i64 0, i32 5
  %1147 = load double, ptr %1146, align 8, !tbaa !68
  %1148 = fcmp uno double %1147, 0.000000e+00
  br i1 %1148, label %1175, label %1149

1149:                                             ; preds = %1142
  %1150 = load ptr, ptr @PL_errgv, align 8, !tbaa !64
  %1151 = getelementptr inbounds %struct.gv, ptr %1150, i64 0, i32 3
  %1152 = load ptr, ptr %1151, align 8, !tbaa !68
  %1153 = load ptr, ptr %1152, align 8, !tbaa !75
  %1154 = icmp eq ptr %1153, null
  br i1 %1154, label %1155, label %1159

1155:                                             ; preds = %1149
  %1156 = call ptr @Perl_gv_add_by_type(ptr noundef %1150, i32 noundef 0) #8
  %1157 = getelementptr inbounds %struct.gv, ptr %1156, i64 0, i32 3
  %1158 = load ptr, ptr %1157, align 8, !tbaa !68
  br label %1159

1159:                                             ; preds = %1149, %1155
  %1160 = phi ptr [ %1158, %1155 ], [ %1152, %1149 ]
  %1161 = load ptr, ptr %1160, align 8, !tbaa !64
  %1162 = load ptr, ptr %1161, align 8, !tbaa !77
  %1163 = getelementptr inbounds %struct.xpvnv, ptr %1162, i64 0, i32 5
  %1164 = load double, ptr %1163, align 8, !tbaa !68
  %1165 = fcmp une double %1164, 0.000000e+00
  br i1 %1165, label %1175, label %1176

1166:                                             ; preds = %1074
  br i1 %1085, label %1167, label %1171

1167:                                             ; preds = %1166
  %1168 = call ptr @Perl_gv_add_by_type(ptr noundef %1081, i32 noundef 0) #8
  %1169 = getelementptr inbounds %struct.gv, ptr %1168, i64 0, i32 3
  %1170 = load ptr, ptr %1169, align 8, !tbaa !68
  br label %1171

1171:                                             ; preds = %1166, %1167
  %1172 = phi ptr [ %1170, %1167 ], [ %1083, %1166 ]
  %1173 = load ptr, ptr %1172, align 8, !tbaa !64
  %1174 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %1173, i32 noundef 0) #8
  br i1 %1174, label %1175, label %1176

1175:                                             ; preds = %1142, %1062, %1171, %1159, %1108, %1028, %936
  call void (ptr, ...) @Perl_croak(ptr noundef null) #8
  br label %1176

1176:                                             ; preds = %1171, %1159, %979, %905, %1175, %1125, %1062, %1045, %1013, %936
  %1177 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !81
  %1178 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !81
  %1179 = icmp sgt i64 %1177, %1178
  br i1 %1179, label %1180, label %1181

1180:                                             ; preds = %1176
  call void @Perl_free_tmps() #8
  br label %1181

1181:                                             ; preds = %1180, %1176
  call void @Perl_pop_scope() #8
  br label %1182

1182:                                             ; preds = %864, %867, %1181
  %1183 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 17
  %1184 = load ptr, ptr %1183, align 8, !tbaa !49
  %1185 = icmp eq ptr %1184, null
  br i1 %1185, label %1240, label %1186

1186:                                             ; preds = %1182
  %1187 = load ptr, ptr %1184, align 8, !tbaa !77
  %1188 = getelementptr inbounds %struct.xpv, ptr %1187, i64 0, i32 2
  store i64 0, ptr %1188, align 8, !tbaa !78
  br label %1240

1189:                                             ; preds = %192, %143, %158, %145, %137, %167, %166, %173, %180, %183, %90, %88
  %1190 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 17
  %1191 = load ptr, ptr %1190, align 8, !tbaa !49
  %1192 = icmp eq ptr %1191, null
  br i1 %1192, label %1240, label %1193

1193:                                             ; preds = %1189
  br i1 %27, label %1210, label %1194

1194:                                             ; preds = %1193
  %1195 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %1196 = load ptr, ptr %1195, align 8, !tbaa !48
  %1197 = icmp eq ptr %1196, null
  br i1 %1197, label %1210, label %1198

1198:                                             ; preds = %1194
  %1199 = getelementptr inbounds %struct.sv, ptr %1196, i64 0, i32 2
  %1200 = load i32, ptr %1199, align 4, !tbaa !69
  %1201 = and i32 %1200, 65280
  %1202 = icmp ne i32 %1201, 0
  %1203 = and i32 %1200, 255
  %1204 = icmp eq i32 %1203, 8
  %1205 = or i1 %1202, %1204
  %1206 = and i32 %1200, 16777471
  %1207 = icmp eq i32 %1206, 16777226
  %1208 = or i1 %1207, %1205
  br i1 %1208, label %1209, label %1210

1209:                                             ; preds = %1198
  call fastcc void @flush_pending_text(ptr noundef %0, ptr noundef %7)
  br label %1210

1210:                                             ; preds = %1198, %1209, %1194, %1193
  %1211 = load ptr, ptr %1190, align 8, !tbaa !49
  %1212 = getelementptr inbounds %struct.sv, ptr %1211, i64 0, i32 2
  %1213 = load i32, ptr %1212, align 4, !tbaa !69
  %1214 = and i32 %1213, 536870912
  %1215 = icmp eq i32 %1214, 0
  br i1 %36, label %1219, label %1216

1216:                                             ; preds = %1210
  br i1 %1215, label %1217, label %1220

1217:                                             ; preds = %1216
  %1218 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %1211, i32 noundef 2, i64 noundef 0) #8
  br label %1220

1219:                                             ; preds = %1210
  br i1 %1215, label %1220, label %1225

1220:                                             ; preds = %1216, %1217, %1219
  %1221 = load ptr, ptr %1190, align 8, !tbaa !49
  %1222 = ptrtoint ptr %3 to i64
  %1223 = ptrtoint ptr %2 to i64
  %1224 = sub i64 %1222, %1223
  call void @Perl_sv_catpvn_flags(ptr noundef %1221, ptr noundef %2, i64 noundef %1224, i32 noundef 2) #8
  br label %1240

1225:                                             ; preds = %1219
  %1226 = ptrtoint ptr %3 to i64
  %1227 = ptrtoint ptr %2 to i64
  %1228 = sub i64 %1226, %1227
  %1229 = call ptr @Perl_newSVpvn(ptr noundef %2, i64 noundef %1228) #8
  %1230 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %1229, i32 noundef 2, i64 noundef 0) #8
  %1231 = load ptr, ptr %1190, align 8, !tbaa !49
  call void @Perl_sv_catsv_flags(ptr noundef %1231, ptr noundef %1229, i32 noundef 2) #8
  %1232 = icmp eq ptr %1229, null
  br i1 %1232, label %1240, label %1233

1233:                                             ; preds = %1225
  %1234 = getelementptr inbounds %struct.sv, ptr %1229, i64 0, i32 1
  %1235 = load i32, ptr %1234, align 8, !tbaa !46
  %1236 = icmp ugt i32 %1235, 1
  br i1 %1236, label %1237, label %1239

1237:                                             ; preds = %1233
  %1238 = add i32 %1235, -1
  store i32 %1238, ptr %1234, align 8, !tbaa !46
  br label %1240

1239:                                             ; preds = %1233
  call void @Perl_sv_free2(ptr noundef nonnull %1229, i32 noundef %1235) #8
  br label %1240

1240:                                             ; preds = %254, %249, %208, %1239, %1237, %1225, %335, %333, %321, %1189, %1220, %1182, %1186, %316, %221, %228, %230, %246, %203, %210, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @parse_buf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !34 {
  %6 = ptrtoint ptr %2 to i64
  %7 = alloca %struct.token_pos, align 8
  %8 = alloca [4 x %struct.token_pos], align 16
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca %struct.token_pos, align 8
  %12 = alloca %struct.token_pos, align 8
  %13 = alloca %struct.token_pos, align 8
  %14 = alloca [8 x %struct.token_pos], align 16
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca %struct.token_pos, align 8
  %18 = alloca %struct.token_pos, align 8
  %19 = alloca %struct.token_pos, align 8
  %20 = alloca [16 x %struct.token_pos], align 16
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 8
  %23 = alloca %struct.token_pos, align 8
  %24 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 7
  %25 = load i8, ptr %24, align 2, !tbaa !80, !range !73, !noundef !74
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %1426

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 8
  %29 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 18
  %30 = ptrtoint ptr %2 to i64
  br label %31

31:                                               ; preds = %134, %27
  %32 = phi ptr [ %1, %27 ], [ %135, %134 ]
  %33 = phi ptr [ %1, %27 ], [ %136, %134 ]
  %34 = ptrtoint ptr %33 to i64
  %35 = load ptr, ptr %28, align 8, !tbaa !105
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, ptr %29, align 8, !tbaa !119
  %39 = and i32 %38, -2
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %143, label %137

41:                                               ; preds = %31
  %42 = icmp ult ptr %33, %2
  br i1 %42, label %43, label %54

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %33, i64 %6
  %45 = sub i64 0, %34
  %46 = getelementptr i8, ptr %44, i64 %45
  br label %47

47:                                               ; preds = %43, %51
  %48 = phi ptr [ %52, %51 ], [ %33, %43 ]
  %49 = load i8, ptr %48, align 1, !tbaa !68
  %50 = icmp eq i8 %49, 60
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  %53 = icmp eq ptr %52, %46
  br i1 %53, label %54, label %47, !llvm.loop !134

54:                                               ; preds = %47, %51, %41
  %55 = phi ptr [ %33, %41 ], [ %48, %47 ], [ %46, %51 ]
  %56 = icmp eq ptr %55, %2
  br i1 %56, label %131, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %55, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !68
  %60 = icmp eq i8 %59, 47
  br i1 %60, label %61, label %131

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, ptr %55, i64 2
  %63 = load i8, ptr %35, align 1, !tbaa !68
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %101, label %65

65:                                               ; preds = %61
  %66 = load i8, ptr %62, align 1, !tbaa !68
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !65
  %70 = and i32 %69, 16400
  %71 = icmp eq i32 %70, 16400
  %72 = add i8 %66, 32
  %73 = zext i8 %72 to i32
  %74 = sext i8 %66 to i32
  %75 = select i1 %71, i32 %73, i32 %74
  %76 = sext i8 %63 to i32
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %91, label %98

78:                                               ; preds = %91
  %79 = load i8, ptr %94, align 1, !tbaa !68
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !65
  %83 = and i32 %82, 16400
  %84 = icmp eq i32 %83, 16400
  %85 = add i8 %79, 32
  %86 = zext i8 %85 to i32
  %87 = sext i8 %79 to i32
  %88 = select i1 %84, i32 %86, i32 %87
  %89 = sext i8 %96 to i32
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98, !llvm.loop !135

91:                                               ; preds = %65, %78
  %92 = phi ptr [ %95, %78 ], [ %35, %65 ]
  %93 = phi ptr [ %94, %78 ], [ %62, %65 ]
  %94 = getelementptr inbounds i8, ptr %93, i64 1
  %95 = getelementptr inbounds i8, ptr %92, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !68
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %78, !llvm.loop !135

98:                                               ; preds = %78, %65
  %99 = phi i1 [ %64, %65 ], [ %97, %78 ]
  %100 = phi ptr [ %62, %65 ], [ %94, %78 ]
  br i1 %99, label %101, label %131

101:                                              ; preds = %91, %61, %98
  %102 = phi ptr [ %100, %98 ], [ %62, %61 ], [ %94, %91 ]
  %103 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(10) @.str.57) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 28
  %107 = load i8, ptr %106, align 8, !tbaa !136, !range !73, !noundef !74
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %131, label %109

109:                                              ; preds = %105, %101
  %110 = getelementptr inbounds %struct.token_pos, ptr %23, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #8
  store ptr %62, ptr %23, align 8, !tbaa !106
  store ptr %102, ptr %110, align 8, !tbaa !108
  br label %111

111:                                              ; preds = %111, %109
  %112 = phi ptr [ %102, %109 ], [ %119, %111 ]
  %113 = load i8, ptr %112, align 1, !tbaa !68
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !68
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  %119 = getelementptr inbounds i8, ptr %112, i64 1
  br i1 %118, label %120, label %111, !llvm.loop !137

120:                                              ; preds = %111
  %121 = icmp eq i8 %113, 62
  br i1 %121, label %122, label %128

122:                                              ; preds = %120
  %123 = getelementptr inbounds i8, ptr %112, i64 1
  %124 = icmp eq ptr %32, %55
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %32, ptr noundef %55, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4)
  br label %126

126:                                              ; preds = %125, %122
  %127 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  call fastcc void @report_event(ptr noundef %0, i32 noundef 3, ptr noundef %55, ptr noundef nonnull %123, i32 noundef %3, ptr noundef nonnull %23, i32 noundef 1, ptr noundef %4)
  store ptr null, ptr %28, align 8, !tbaa !105
  store i8 0, ptr %127, align 8, !tbaa !115
  br label %128

128:                                              ; preds = %126, %120
  %129 = phi ptr [ %123, %126 ], [ %32, %120 ]
  %130 = phi ptr [ %123, %126 ], [ %112, %120 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #8
  br label %131

131:                                              ; preds = %54, %57, %128, %105, %98
  %132 = phi ptr [ %32, %98 ], [ %129, %128 ], [ %32, %105 ], [ %32, %57 ], [ %32, %54 ]
  %133 = phi ptr [ %100, %98 ], [ %130, %128 ], [ %102, %105 ], [ %58, %57 ], [ %32, %54 ]
  br i1 %56, label %1426, label %134

134:                                              ; preds = %131, %1421
  %135 = phi ptr [ %132, %131 ], [ %1422, %1421 ]
  %136 = phi ptr [ %133, %131 ], [ %1423, %1421 ]
  br label %31, !llvm.loop !138

137:                                              ; preds = %196, %37
  %138 = phi ptr [ %32, %37 ], [ %197, %196 ]
  %139 = phi ptr [ %33, %37 ], [ %198, %196 ]
  %140 = icmp ult ptr %139, %2
  br i1 %140, label %141, label %246

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 18
  br label %202

143:                                              ; preds = %37, %196
  %144 = phi ptr [ %198, %196 ], [ %33, %37 ]
  %145 = phi ptr [ %197, %196 ], [ %32, %37 ]
  %146 = icmp ult ptr %144, %2
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = ptrtoint ptr %144 to i64
  %149 = getelementptr i8, ptr %144, i64 %6
  %150 = sub i64 0, %148
  %151 = getelementptr i8, ptr %149, i64 %150
  br label %152

152:                                              ; preds = %147, %156
  %153 = phi ptr [ %157, %156 ], [ %144, %147 ]
  %154 = load i8, ptr %153, align 1, !tbaa !68
  %155 = icmp eq i8 %154, 93
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds i8, ptr %153, i64 1
  %158 = icmp eq ptr %157, %151
  br i1 %158, label %159, label %152, !llvm.loop !139

159:                                              ; preds = %152, %156, %143
  %160 = phi ptr [ %144, %143 ], [ %153, %152 ], [ %151, %156 ]
  %161 = load i8, ptr %160, align 1, !tbaa !68
  %162 = icmp eq i8 %161, 93
  br i1 %162, label %163, label %192

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, ptr %160, i64 1
  %165 = load i8, ptr %164, align 1, !tbaa !68
  %166 = icmp eq i8 %165, 93
  br i1 %166, label %167, label %188

167:                                              ; preds = %163
  %168 = getelementptr inbounds i8, ptr %160, i64 2
  %169 = load i8, ptr %168, align 1, !tbaa !68
  %170 = icmp eq i8 %169, 62
  br i1 %170, label %171, label %188

171:                                              ; preds = %167
  %172 = getelementptr inbounds i8, ptr %160, i64 3
  %173 = icmp eq ptr %145, %160
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %145, ptr noundef nonnull %160, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4)
  br label %175

175:                                              ; preds = %174, %171
  %176 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  call fastcc void @report_event(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %160, ptr noundef nonnull %172, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4)
  %177 = load ptr, ptr %176, align 8, !tbaa !50
  %178 = call ptr @Perl_av_pop(ptr noundef %177) #8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %187, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.sv, ptr %178, i64 0, i32 1
  %182 = load i32, ptr %181, align 8, !tbaa !46
  %183 = icmp ugt i32 %182, 1
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = add i32 %182, -1
  store i32 %185, ptr %181, align 8, !tbaa !46
  br label %187

186:                                              ; preds = %180
  call void @Perl_sv_free2(ptr noundef nonnull %178, i32 noundef %182) #8
  br label %187

187:                                              ; preds = %175, %184, %186
  call fastcc void @marked_section_update(ptr noundef %0)
  br label %188, !llvm.loop !140

188:                                              ; preds = %163, %167, %187
  %189 = phi ptr [ %172, %187 ], [ %145, %167 ], [ %145, %163 ]
  %190 = phi i1 [ false, %187 ], [ true, %167 ], [ true, %163 ]
  %191 = phi ptr [ %172, %187 ], [ %164, %167 ], [ %164, %163 ]
  br i1 %190, label %192, label %196

192:                                              ; preds = %159, %188
  %193 = phi ptr [ %189, %188 ], [ %145, %159 ]
  %194 = phi ptr [ %191, %188 ], [ %160, %159 ]
  %195 = icmp eq ptr %194, %2
  br i1 %195, label %1426, label %196

196:                                              ; preds = %192, %188
  %197 = phi ptr [ %193, %192 ], [ %189, %188 ]
  %198 = phi ptr [ %194, %192 ], [ %191, %188 ]
  %199 = load i32, ptr %29, align 8, !tbaa !119
  %200 = and i32 %199, -2
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %143, label %137, !llvm.loop !140

202:                                              ; preds = %141, %242
  %203 = phi ptr [ %244, %242 ], [ %139, %141 ]
  %204 = phi ptr [ %243, %242 ], [ %138, %141 ]
  %205 = load i8, ptr %203, align 1, !tbaa !68
  %206 = icmp eq i8 %205, 60
  br i1 %206, label %246, label %207

207:                                              ; preds = %202
  %208 = load i32, ptr %142, align 8, !tbaa !119
  %209 = icmp ne i32 %208, 0
  %210 = icmp eq i8 %205, 93
  %211 = and i1 %210, %209
  br i1 %211, label %212, label %238

212:                                              ; preds = %207
  %213 = getelementptr inbounds i8, ptr %203, i64 1
  %214 = load i8, ptr %213, align 1, !tbaa !68
  %215 = icmp eq i8 %214, 93
  br i1 %215, label %216, label %234

216:                                              ; preds = %212
  %217 = getelementptr inbounds i8, ptr %203, i64 2
  %218 = load i8, ptr %217, align 1, !tbaa !68
  %219 = icmp eq i8 %218, 62
  br i1 %219, label %220, label %234

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  %222 = getelementptr inbounds i8, ptr %203, i64 3
  call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %204, ptr noundef nonnull %203, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4)
  call fastcc void @report_event(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %203, ptr noundef nonnull %222, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4)
  %223 = load ptr, ptr %221, align 8, !tbaa !50
  %224 = call ptr @Perl_av_pop(ptr noundef %223) #8
  %225 = icmp eq ptr %224, null
  br i1 %225, label %233, label %226

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.sv, ptr %224, i64 0, i32 1
  %228 = load i32, ptr %227, align 8, !tbaa !46
  %229 = icmp ugt i32 %228, 1
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = add i32 %228, -1
  store i32 %231, ptr %227, align 8, !tbaa !46
  br label %233

232:                                              ; preds = %226
  call void @Perl_sv_free2(ptr noundef nonnull %224, i32 noundef %228) #8
  br label %233

233:                                              ; preds = %220, %230, %232
  call fastcc void @marked_section_update(ptr noundef %0)
  br label %234, !llvm.loop !141

234:                                              ; preds = %212, %216, %233
  %235 = phi ptr [ %222, %233 ], [ %204, %216 ], [ %204, %212 ]
  %236 = phi i1 [ false, %233 ], [ true, %216 ], [ true, %212 ]
  %237 = phi ptr [ %222, %233 ], [ %217, %216 ], [ %213, %212 ]
  br i1 %236, label %238, label %242

238:                                              ; preds = %234, %207
  %239 = phi ptr [ %235, %234 ], [ %204, %207 ]
  %240 = phi ptr [ %237, %234 ], [ %203, %207 ]
  %241 = getelementptr inbounds i8, ptr %240, i64 1
  br label %242

242:                                              ; preds = %238, %234
  %243 = phi ptr [ %235, %234 ], [ %239, %238 ]
  %244 = phi ptr [ %237, %234 ], [ %241, %238 ]
  %245 = icmp ult ptr %244, %2
  br i1 %245, label %202, label %246, !llvm.loop !141

246:                                              ; preds = %202, %242, %137
  %247 = phi ptr [ %138, %137 ], [ %204, %202 ], [ %243, %242 ]
  %248 = phi ptr [ %139, %137 ], [ %203, %202 ], [ %244, %242 ]
  %249 = icmp eq ptr %248, %247
  br i1 %249, label %306, label %250

250:                                              ; preds = %246
  %251 = load i8, ptr %248, align 1, !tbaa !68
  %252 = icmp eq i8 %251, 60
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %247, ptr noundef nonnull %248, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4)
  br label %306

254:                                              ; preds = %250
  %255 = getelementptr inbounds i8, ptr %248, i64 -1
  %256 = load i8, ptr %255, align 1, !tbaa !68
  %257 = zext i8 %256 to i64
  %258 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !68
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  %262 = icmp ult ptr %255, %247
  br i1 %261, label %264, label %263

263:                                              ; preds = %254
  br i1 %262, label %301, label %265

264:                                              ; preds = %254
  br i1 %262, label %287, label %276

265:                                              ; preds = %263, %273
  %266 = phi ptr [ %274, %273 ], [ %255, %263 ]
  %267 = load i8, ptr %266, align 1, !tbaa !68
  %268 = zext i8 %267 to i64
  %269 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !68
  %271 = and i8 %270, 1
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %301, label %273

273:                                              ; preds = %265
  %274 = getelementptr inbounds i8, ptr %266, i64 -1
  %275 = icmp ult ptr %274, %247
  br i1 %275, label %301, label %265, !llvm.loop !142

276:                                              ; preds = %264, %284
  %277 = phi ptr [ %285, %284 ], [ %255, %264 ]
  %278 = load i8, ptr %277, align 1, !tbaa !68
  %279 = zext i8 %278 to i64
  %280 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !68
  %282 = and i8 %281, 1
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %276
  %285 = getelementptr inbounds i8, ptr %277, i64 -1
  %286 = icmp ult ptr %285, %247
  br i1 %286, label %287, label %276, !llvm.loop !143

287:                                              ; preds = %276, %284, %264
  %288 = phi ptr [ %255, %264 ], [ %277, %276 ], [ %285, %284 ]
  %289 = icmp ult ptr %288, %247
  br i1 %289, label %301, label %290

290:                                              ; preds = %287, %298
  %291 = phi ptr [ %299, %298 ], [ %288, %287 ]
  %292 = load i8, ptr %291, align 1, !tbaa !68
  %293 = zext i8 %292 to i64
  %294 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !68
  %296 = and i8 %295, 1
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %290
  %299 = getelementptr inbounds i8, ptr %291, i64 -1
  %300 = icmp ult ptr %299, %247
  br i1 %300, label %301, label %290, !llvm.loop !144

301:                                              ; preds = %273, %265, %298, %290, %263, %287
  %302 = phi ptr [ %288, %287 ], [ %255, %263 ], [ %291, %290 ], [ %299, %298 ], [ %266, %265 ], [ %274, %273 ]
  %303 = getelementptr inbounds i8, ptr %302, i64 1
  %304 = icmp eq ptr %303, %247
  br i1 %304, label %1426, label %305

305:                                              ; preds = %301
  call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %247, ptr noundef nonnull %303, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4)
  br label %1426

306:                                              ; preds = %253, %246
  %307 = phi ptr [ %248, %253 ], [ %247, %246 ]
  %308 = ptrtoint ptr %307 to i64
  %309 = ptrtoint ptr %248 to i64
  %310 = sub i64 %30, %309
  %311 = icmp slt i64 %310, 3
  br i1 %311, label %1426, label %312

312:                                              ; preds = %306
  %313 = getelementptr inbounds i8, ptr %248, i64 1
  %314 = load i8, ptr %313, align 1, !tbaa !68
  %315 = zext i8 %314 to i64
  %316 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !68
  %318 = and i8 %317, 2
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %694, label %320

320:                                              ; preds = %312
  %321 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #8
  store i32 16, ptr %21, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #8
  store ptr %20, ptr %22, align 8, !tbaa !64
  %322 = load i8, ptr %321, align 4, !tbaa !120, !range !73, !noundef !74
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 22
  %326 = load i8, ptr %325, align 2, !tbaa !145, !range !73, !noundef !74
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %324
  br label %329

329:                                              ; preds = %328, %324, %320
  %330 = phi i32 [ 8, %328 ], [ 4, %324 ], [ 4, %320 ]
  %331 = phi i32 [ 8, %328 ], [ 2, %324 ], [ 2, %320 ]
  %332 = phi i32 [ 16, %328 ], [ 4, %324 ], [ 4, %320 ]
  %333 = getelementptr inbounds i8, ptr %307, i64 2
  %334 = icmp ult ptr %333, %2
  br i1 %334, label %335, label %364

335:                                              ; preds = %329
  %336 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 30
  %337 = getelementptr i8, ptr %307, i64 %6
  %338 = sub i64 0, %308
  %339 = getelementptr i8, ptr %337, i64 %338
  br label %340

340:                                              ; preds = %335, %361
  %341 = phi ptr [ %362, %361 ], [ %333, %335 ]
  %342 = load i8, ptr %341, align 1, !tbaa !68
  %343 = zext i8 %342 to i64
  %344 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !68
  %346 = zext i8 %345 to i32
  %347 = and i32 %330, %346
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %364, label %349

349:                                              ; preds = %340
  %350 = icmp eq i8 %342, 47
  br i1 %350, label %351, label %361

351:                                              ; preds = %349
  br i1 %323, label %352, label %355

352:                                              ; preds = %351
  %353 = load i8, ptr %336, align 2, !tbaa !146, !range !73, !noundef !74
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %361, label %355

355:                                              ; preds = %352, %351
  %356 = getelementptr inbounds i8, ptr %341, i64 1
  %357 = icmp eq ptr %356, %2
  br i1 %357, label %686, label %358

358:                                              ; preds = %355
  %359 = load i8, ptr %356, align 1, !tbaa !68
  %360 = icmp eq i8 %359, 62
  br i1 %360, label %364, label %361

361:                                              ; preds = %358, %352, %349
  %362 = getelementptr inbounds i8, ptr %341, i64 1
  %363 = icmp eq ptr %362, %339
  br i1 %363, label %364, label %340, !llvm.loop !147

364:                                              ; preds = %358, %340, %361, %329
  %365 = phi ptr [ %333, %329 ], [ %341, %358 ], [ %341, %340 ], [ %339, %361 ]
  %366 = getelementptr inbounds i8, ptr %307, i64 1
  %367 = load ptr, ptr %22, align 8, !tbaa !64
  store ptr %366, ptr %367, align 8, !tbaa !106
  %368 = getelementptr inbounds %struct.token_pos, ptr %367, i64 0, i32 1
  store ptr %365, ptr %368, align 8, !tbaa !108
  br label %369

369:                                              ; preds = %369, %364
  %370 = phi ptr [ %365, %364 ], [ %377, %369 ]
  %371 = load i8, ptr %370, align 1, !tbaa !68
  %372 = zext i8 %371 to i64
  %373 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %372
  %374 = load i8, ptr %373, align 1, !tbaa !68
  %375 = and i8 %374, 1
  %376 = icmp eq i8 %375, 0
  %377 = getelementptr inbounds i8, ptr %370, i64 1
  br i1 %376, label %378, label %369, !llvm.loop !148

378:                                              ; preds = %369
  %379 = icmp eq ptr %370, %2
  br i1 %379, label %686, label %380

380:                                              ; preds = %378
  %381 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 30
  %382 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 30
  br label %383

383:                                              ; preds = %380, %600
  %384 = phi i32 [ %601, %600 ], [ 1, %380 ]
  %385 = phi ptr [ %603, %600 ], [ %370, %380 ]
  %386 = ptrtoint ptr %385 to i64
  %387 = load i8, ptr %385, align 1, !tbaa !68
  %388 = zext i8 %387 to i64
  %389 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !68
  %391 = zext i8 %390 to i32
  %392 = and i32 %331, %391
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %604, label %394

394:                                              ; preds = %383
  %395 = icmp eq i8 %387, 47
  br i1 %395, label %396, label %408

396:                                              ; preds = %394
  %397 = load i8, ptr %321, align 4, !tbaa !120, !range !73, !noundef !74
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %396
  %400 = load i8, ptr %381, align 2, !tbaa !146, !range !73, !noundef !74
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %408, label %402

402:                                              ; preds = %399, %396
  %403 = getelementptr inbounds i8, ptr %385, i64 1
  %404 = icmp eq ptr %403, %2
  br i1 %404, label %600, label %405

405:                                              ; preds = %402
  %406 = load i8, ptr %403, align 1, !tbaa !68
  %407 = icmp eq i8 %406, 62
  br i1 %407, label %600, label %408

408:                                              ; preds = %399, %405, %394
  %409 = getelementptr inbounds i8, ptr %385, i64 1
  %410 = icmp ult ptr %409, %2
  br i1 %410, label %411, label %442

411:                                              ; preds = %408
  %412 = getelementptr i8, ptr %385, i64 %6
  %413 = sub i64 0, %386
  %414 = getelementptr i8, ptr %412, i64 %413
  br label %415

415:                                              ; preds = %411, %439
  %416 = phi ptr [ %440, %439 ], [ %409, %411 ]
  %417 = phi ptr [ %416, %439 ], [ %385, %411 ]
  %418 = load i8, ptr %416, align 1, !tbaa !68
  %419 = zext i8 %418 to i64
  %420 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !68
  %422 = zext i8 %421 to i32
  %423 = and i32 %332, %422
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %442, label %425

425:                                              ; preds = %415
  %426 = icmp eq i8 %418, 47
  br i1 %426, label %427, label %439

427:                                              ; preds = %425
  %428 = load i8, ptr %321, align 4, !tbaa !120, !range !73, !noundef !74
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %427
  %431 = load i8, ptr %382, align 2, !tbaa !146, !range !73, !noundef !74
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %439, label %433

433:                                              ; preds = %430, %427
  %434 = getelementptr inbounds i8, ptr %417, i64 2
  %435 = icmp eq ptr %434, %2
  br i1 %435, label %600, label %436

436:                                              ; preds = %433
  %437 = load i8, ptr %434, align 1, !tbaa !68
  %438 = icmp eq i8 %437, 62
  br i1 %438, label %442, label %439

439:                                              ; preds = %436, %430, %425
  %440 = getelementptr inbounds i8, ptr %416, i64 1
  %441 = icmp eq ptr %440, %414
  br i1 %441, label %442, label %415, !llvm.loop !149

442:                                              ; preds = %439, %415, %436, %408
  %443 = phi ptr [ %409, %408 ], [ %414, %439 ], [ %416, %415 ], [ %416, %436 ]
  %444 = ptrtoint ptr %443 to i64
  %445 = icmp eq ptr %443, %2
  br i1 %445, label %600, label %446

446:                                              ; preds = %442
  %447 = add nsw i32 %384, 1
  %448 = load i32, ptr %21, align 4, !tbaa !65
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %453

450:                                              ; preds = %446
  %451 = load ptr, ptr %22, align 8, !tbaa !64
  %452 = icmp ne ptr %451, %20
  call fastcc void @tokens_grow(ptr noundef nonnull %22, ptr noundef nonnull %21, i1 noundef zeroext %452)
  br label %453

453:                                              ; preds = %450, %446
  %454 = load ptr, ptr %22, align 8, !tbaa !64
  %455 = sext i32 %384 to i64
  %456 = getelementptr inbounds %struct.token_pos, ptr %454, i64 %455
  store ptr %385, ptr %456, align 8, !tbaa !106
  %457 = getelementptr inbounds %struct.token_pos, ptr %454, i64 %455, i32 1
  store ptr %443, ptr %457, align 8, !tbaa !108
  br label %458

458:                                              ; preds = %458, %453
  %459 = phi ptr [ %443, %453 ], [ %466, %458 ]
  %460 = load i8, ptr %459, align 1, !tbaa !68
  %461 = zext i8 %460 to i64
  %462 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %461
  %463 = load i8, ptr %462, align 1, !tbaa !68
  %464 = and i8 %463, 1
  %465 = icmp eq i8 %464, 0
  %466 = getelementptr inbounds i8, ptr %459, i64 1
  br i1 %465, label %467, label %458, !llvm.loop !150

467:                                              ; preds = %458
  %468 = icmp eq ptr %459, %2
  br i1 %468, label %600, label %469

469:                                              ; preds = %467
  %470 = icmp eq i8 %460, 61
  br i1 %470, label %471, label %590

471:                                              ; preds = %469, %471
  %472 = phi ptr [ %473, %471 ], [ %459, %469 ]
  %473 = getelementptr inbounds i8, ptr %472, i64 1
  %474 = load i8, ptr %473, align 1, !tbaa !68
  %475 = zext i8 %474 to i64
  %476 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %475
  %477 = load i8, ptr %476, align 1, !tbaa !68
  %478 = and i8 %477, 1
  %479 = icmp eq i8 %478, 0
  br i1 %479, label %480, label %471, !llvm.loop !151

480:                                              ; preds = %471
  %481 = icmp eq ptr %473, %2
  br i1 %481, label %600, label %482

482:                                              ; preds = %480
  switch i8 %474, label %524 [
    i8 62, label %483
    i8 34, label %498
    i8 39, label %498
    i8 96, label %494
  ]

483:                                              ; preds = %482
  %484 = add nsw i32 %384, 2
  %485 = load i32, ptr %21, align 4, !tbaa !65
  %486 = icmp eq i32 %484, %485
  br i1 %486, label %487, label %489

487:                                              ; preds = %483
  %488 = icmp ne ptr %454, %20
  call fastcc void @tokens_grow(ptr noundef nonnull %22, ptr noundef nonnull %21, i1 noundef zeroext %488)
  br label %489

489:                                              ; preds = %487, %483
  %490 = load ptr, ptr %22, align 8, !tbaa !64
  %491 = sext i32 %447 to i64
  %492 = getelementptr inbounds %struct.token_pos, ptr %490, i64 %491
  store ptr %473, ptr %492, align 8, !tbaa !106
  %493 = getelementptr inbounds %struct.token_pos, ptr %490, i64 %491, i32 1
  store ptr %473, ptr %493, align 8, !tbaa !108
  br label %600

494:                                              ; preds = %482
  %495 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 32
  %496 = load i8, ptr %495, align 4, !tbaa !130, !range !73, !noundef !74
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %524, label %498

498:                                              ; preds = %494, %482, %482
  br label %499

499:                                              ; preds = %498, %503
  %500 = phi ptr [ %501, %503 ], [ %473, %498 ]
  %501 = getelementptr inbounds i8, ptr %500, i64 1
  %502 = icmp ult ptr %501, %2
  br i1 %502, label %503, label %506

503:                                              ; preds = %499
  %504 = load i8, ptr %501, align 1, !tbaa !68
  %505 = icmp eq i8 %504, %474
  br i1 %505, label %506, label %499, !llvm.loop !152

506:                                              ; preds = %503, %499
  %507 = icmp eq ptr %501, %2
  br i1 %507, label %520, label %508

508:                                              ; preds = %506
  %509 = getelementptr inbounds i8, ptr %500, i64 2
  %510 = add nsw i32 %384, 2
  %511 = load i32, ptr %21, align 4, !tbaa !65
  %512 = icmp eq i32 %510, %511
  br i1 %512, label %513, label %515

513:                                              ; preds = %508
  %514 = icmp ne ptr %454, %20
  call fastcc void @tokens_grow(ptr noundef nonnull %22, ptr noundef nonnull %21, i1 noundef zeroext %514)
  br label %515

515:                                              ; preds = %513, %508
  %516 = load ptr, ptr %22, align 8, !tbaa !64
  %517 = sext i32 %447 to i64
  %518 = getelementptr inbounds %struct.token_pos, ptr %516, i64 %517
  store ptr %473, ptr %518, align 8, !tbaa !106
  %519 = getelementptr inbounds %struct.token_pos, ptr %516, i64 %517, i32 1
  store ptr %509, ptr %519, align 8, !tbaa !108
  br label %520

520:                                              ; preds = %515, %506
  %521 = phi i32 [ %510, %515 ], [ %447, %506 ]
  %522 = phi i32 [ 0, %515 ], [ 4, %506 ]
  %523 = phi ptr [ %509, %515 ], [ %501, %506 ]
  br i1 %507, label %600, label %575

524:                                              ; preds = %494, %482
  %525 = icmp ult ptr %473, %2
  br i1 %525, label %526, label %556

526:                                              ; preds = %524
  %527 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 30
  %528 = getelementptr i8, ptr %443, i64 %6
  %529 = sub i64 0, %444
  %530 = getelementptr i8, ptr %528, i64 %529
  br label %531

531:                                              ; preds = %526, %553
  %532 = phi ptr [ %554, %553 ], [ %473, %526 ]
  %533 = load i8, ptr %532, align 1, !tbaa !68
  %534 = zext i8 %533 to i64
  %535 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %534
  %536 = load i8, ptr %535, align 1, !tbaa !68
  %537 = and i8 %536, 8
  %538 = icmp eq i8 %537, 0
  br i1 %538, label %556, label %539

539:                                              ; preds = %531
  %540 = icmp eq i8 %533, 47
  br i1 %540, label %541, label %553

541:                                              ; preds = %539
  %542 = load i8, ptr %321, align 4, !tbaa !120, !range !73, !noundef !74
  %543 = icmp eq i8 %542, 0
  br i1 %543, label %544, label %547

544:                                              ; preds = %541
  %545 = load i8, ptr %527, align 2, !tbaa !146, !range !73, !noundef !74
  %546 = icmp eq i8 %545, 0
  br i1 %546, label %553, label %547

547:                                              ; preds = %544, %541
  %548 = getelementptr inbounds i8, ptr %532, i64 1
  %549 = icmp eq ptr %548, %2
  br i1 %549, label %570, label %550

550:                                              ; preds = %547
  %551 = load i8, ptr %548, align 1, !tbaa !68
  %552 = icmp eq i8 %551, 62
  br i1 %552, label %556, label %553

553:                                              ; preds = %550, %544, %539
  %554 = getelementptr inbounds i8, ptr %532, i64 1
  %555 = icmp ult ptr %554, %2
  br i1 %555, label %531, label %556, !llvm.loop !153

556:                                              ; preds = %553, %531, %550, %524
  %557 = phi ptr [ %473, %524 ], [ %530, %553 ], [ %532, %531 ], [ %532, %550 ]
  %558 = icmp eq ptr %557, %2
  br i1 %558, label %570, label %559

559:                                              ; preds = %556
  %560 = add nsw i32 %384, 2
  %561 = load i32, ptr %21, align 4, !tbaa !65
  %562 = icmp eq i32 %560, %561
  br i1 %562, label %563, label %565

563:                                              ; preds = %559
  %564 = icmp ne ptr %454, %20
  call fastcc void @tokens_grow(ptr noundef nonnull %22, ptr noundef nonnull %21, i1 noundef zeroext %564)
  br label %565

565:                                              ; preds = %563, %559
  %566 = load ptr, ptr %22, align 8, !tbaa !64
  %567 = sext i32 %447 to i64
  %568 = getelementptr inbounds %struct.token_pos, ptr %566, i64 %567
  store ptr %473, ptr %568, align 8, !tbaa !106
  %569 = getelementptr inbounds %struct.token_pos, ptr %566, i64 %567, i32 1
  store ptr %557, ptr %569, align 8, !tbaa !108
  br label %570

570:                                              ; preds = %547, %565, %556
  %571 = phi ptr [ %557, %565 ], [ %557, %556 ], [ %532, %547 ]
  %572 = phi i32 [ %560, %565 ], [ %447, %556 ], [ %447, %547 ]
  %573 = phi i1 [ true, %565 ], [ false, %556 ], [ false, %547 ]
  %574 = phi i32 [ 0, %565 ], [ 4, %556 ], [ 4, %547 ]
  br i1 %573, label %575, label %600

575:                                              ; preds = %570, %520
  %576 = phi i32 [ %521, %520 ], [ %572, %570 ]
  %577 = phi ptr [ %523, %520 ], [ %571, %570 ]
  br label %578

578:                                              ; preds = %578, %575
  %579 = phi ptr [ %577, %575 ], [ %586, %578 ]
  %580 = load i8, ptr %579, align 1, !tbaa !68
  %581 = zext i8 %580 to i64
  %582 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %581
  %583 = load i8, ptr %582, align 1, !tbaa !68
  %584 = and i8 %583, 1
  %585 = icmp eq i8 %584, 0
  %586 = getelementptr inbounds i8, ptr %579, i64 1
  br i1 %585, label %587, label %578, !llvm.loop !154

587:                                              ; preds = %578
  %588 = icmp eq ptr %579, %2
  %589 = select i1 %588, i32 4, i32 0
  br label %600

590:                                              ; preds = %469
  %591 = add nsw i32 %384, 2
  %592 = load i32, ptr %21, align 4, !tbaa !65
  %593 = icmp eq i32 %591, %592
  br i1 %593, label %594, label %596

594:                                              ; preds = %590
  %595 = icmp ne ptr %454, %20
  call fastcc void @tokens_grow(ptr noundef nonnull %22, ptr noundef nonnull %21, i1 noundef zeroext %595)
  br label %596

596:                                              ; preds = %594, %590
  %597 = load ptr, ptr %22, align 8, !tbaa !64
  %598 = sext i32 %447 to i64
  %599 = getelementptr inbounds %struct.token_pos, ptr %597, i64 %598
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %599, i8 0, i64 16, i1 false)
  br label %600

600:                                              ; preds = %433, %570, %596, %587, %520, %489, %480, %467, %442, %405, %402
  %601 = phi i32 [ %484, %489 ], [ %521, %520 ], [ %384, %402 ], [ %384, %405 ], [ %384, %442 ], [ %447, %467 ], [ %447, %480 ], [ %591, %596 ], [ %576, %587 ], [ %572, %570 ], [ %384, %433 ]
  %602 = phi i32 [ 10, %489 ], [ %522, %520 ], [ 4, %402 ], [ 10, %405 ], [ 4, %442 ], [ 4, %467 ], [ 4, %480 ], [ 0, %596 ], [ %589, %587 ], [ %574, %570 ], [ 4, %433 ]
  %603 = phi ptr [ %473, %489 ], [ %523, %520 ], [ %385, %402 ], [ %385, %405 ], [ %443, %442 ], [ %459, %467 ], [ %473, %480 ], [ %459, %596 ], [ %579, %587 ], [ %571, %570 ], [ %416, %433 ]
  switch i32 %602, label %692 [
    i32 0, label %383
    i32 10, label %604
    i32 4, label %686
  ], !llvm.loop !155

604:                                              ; preds = %600, %383
  %605 = phi i32 [ %384, %383 ], [ %601, %600 ]
  %606 = phi ptr [ %385, %383 ], [ %603, %600 ]
  %607 = load i8, ptr %321, align 4, !tbaa !120, !range !73, !noundef !74
  %608 = icmp eq i8 %607, 0
  br i1 %608, label %609, label %613

609:                                              ; preds = %604
  %610 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 30
  %611 = load i8, ptr %610, align 2, !tbaa !146, !range !73, !noundef !74
  %612 = icmp eq i8 %611, 0
  br i1 %612, label %619, label %613

613:                                              ; preds = %609, %604
  %614 = load i8, ptr %606, align 1, !tbaa !68
  %615 = icmp eq i8 %614, 47
  br i1 %615, label %616, label %619

616:                                              ; preds = %613
  %617 = getelementptr inbounds i8, ptr %606, i64 1
  %618 = icmp eq ptr %617, %2
  br i1 %618, label %686, label %619

619:                                              ; preds = %609, %616, %613
  %620 = phi i1 [ true, %613 ], [ false, %616 ], [ true, %609 ]
  %621 = phi ptr [ %606, %613 ], [ %617, %616 ], [ %606, %609 ]
  %622 = load i8, ptr %621, align 1, !tbaa !68
  %623 = icmp eq i8 %622, 62
  br i1 %623, label %624, label %683

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, ptr %621, i64 1
  %626 = load ptr, ptr %22, align 8, !tbaa !64
  call fastcc void @report_event(ptr noundef %0, i32 noundef 2, ptr noundef %307, ptr noundef nonnull %625, i32 noundef %3, ptr noundef %626, i32 noundef %605, ptr noundef %4)
  br i1 %620, label %629, label %627

627:                                              ; preds = %624
  %628 = load ptr, ptr %22, align 8, !tbaa !64
  call fastcc void @report_event(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %625, ptr noundef nonnull %625, i32 noundef %3, ptr noundef %628, i32 noundef 1, ptr noundef %4)
  br label %680

629:                                              ; preds = %624
  %630 = load i8, ptr %321, align 4, !tbaa !120, !range !73, !noundef !74
  %631 = icmp eq i8 %630, 0
  br i1 %631, label %632, label %680

632:                                              ; preds = %629
  %633 = load ptr, ptr %22, align 8, !tbaa !64
  %634 = getelementptr inbounds %struct.token_pos, ptr %633, i64 0, i32 1
  %635 = load ptr, ptr %634, align 8, !tbaa !108
  %636 = load ptr, ptr %633, align 8, !tbaa !106
  %637 = ptrtoint ptr %635 to i64
  %638 = ptrtoint ptr %636 to i64
  %639 = sub i64 %637, %638
  %640 = trunc i64 %639 to i32
  br label %641

641:                                              ; preds = %632, %675
  %642 = phi i64 [ 0, %632 ], [ %676, %675 ]
  %643 = phi i32 [ 6, %632 ], [ %678, %675 ]
  %644 = icmp eq i32 %643, %640
  br i1 %644, label %645, label %675

645:                                              ; preds = %641
  %646 = getelementptr inbounds [8 x %struct.literal_tag], ptr @literal_mode_elem, i64 0, i64 %642, i32 1
  %647 = load ptr, ptr %646, align 8, !tbaa !156
  br label %648

648:                                              ; preds = %665, %645
  %649 = phi ptr [ %366, %645 ], [ %666, %665 ]
  %650 = phi ptr [ %647, %645 ], [ %667, %665 ]
  %651 = phi i32 [ %640, %645 ], [ %668, %665 ]
  %652 = load i8, ptr %649, align 1, !tbaa !68
  %653 = zext i8 %652 to i64
  %654 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %653
  %655 = load i32, ptr %654, align 4, !tbaa !65
  %656 = and i32 %655, 16400
  %657 = icmp eq i32 %656, 16400
  %658 = add i8 %652, 32
  %659 = zext i8 %658 to i32
  %660 = sext i8 %652 to i32
  %661 = select i1 %657, i32 %659, i32 %660
  %662 = load i8, ptr %650, align 1, !tbaa !68
  %663 = sext i8 %662 to i32
  %664 = icmp eq i32 %661, %663
  br i1 %664, label %665, label %675

665:                                              ; preds = %648
  %666 = getelementptr inbounds i8, ptr %649, i64 1
  %667 = getelementptr inbounds i8, ptr %650, i64 1
  %668 = add nsw i32 %651, -1
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %648, !llvm.loop !158

670:                                              ; preds = %665
  %671 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %672 = trunc i64 %642 to i32
  store ptr %647, ptr %28, align 8, !tbaa !105
  %673 = icmp ult i32 %672, 5
  %674 = zext i1 %673 to i8
  store i8 %674, ptr %671, align 8, !tbaa !115
  br label %680

675:                                              ; preds = %648, %641
  %676 = add nuw nsw i64 %642, 1
  %677 = getelementptr inbounds [8 x %struct.literal_tag], ptr @literal_mode_elem, i64 0, i64 %676
  %678 = load i32, ptr %677, align 8, !tbaa !159
  %679 = icmp eq i64 %676, 7
  br i1 %679, label %680, label %641, !llvm.loop !160

680:                                              ; preds = %675, %670, %629, %627
  %681 = load ptr, ptr %22, align 8, !tbaa !64
  %682 = icmp eq ptr %681, %20
  br i1 %682, label %692, label %689

683:                                              ; preds = %619
  %684 = load ptr, ptr %22, align 8, !tbaa !64
  %685 = icmp eq ptr %684, %20
  br i1 %685, label %692, label %689

686:                                              ; preds = %355, %600, %616, %378
  %687 = load ptr, ptr %22, align 8, !tbaa !64
  %688 = icmp eq ptr %687, %20
  br i1 %688, label %692, label %689

689:                                              ; preds = %686, %683, %680
  %690 = phi ptr [ %681, %680 ], [ %684, %683 ], [ %687, %686 ]
  %691 = phi ptr [ %625, %680 ], [ null, %683 ], [ %307, %686 ]
  call void @Perl_safesysfree(ptr noundef %690) #8
  br label %692

692:                                              ; preds = %600, %689, %680, %683, %686
  %693 = phi ptr [ %625, %680 ], [ null, %683 ], [ %307, %686 ], [ %691, %689 ], [ undef, %600 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %20) #8
  br label %1416

694:                                              ; preds = %312
  switch i8 %314, label %1416 [
    i8 47, label %695
    i8 33, label %825
    i8 63, label %1378
  ]

695:                                              ; preds = %694
  %696 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %697 = getelementptr inbounds i8, ptr %307, i64 2
  %698 = load i8, ptr %696, align 4, !tbaa !120, !range !73, !noundef !74
  %699 = icmp eq i8 %698, 0
  br i1 %699, label %700, label %706

700:                                              ; preds = %695
  %701 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 22
  %702 = load i8, ptr %701, align 2, !tbaa !145, !range !73, !noundef !74
  %703 = icmp eq i8 %702, 0
  %704 = select i1 %703, i32 8, i32 2
  %705 = select i1 %703, i32 8, i32 4
  br label %706

706:                                              ; preds = %700, %695
  %707 = phi i32 [ 2, %695 ], [ %704, %700 ]
  %708 = phi i32 [ 4, %695 ], [ %705, %700 ]
  %709 = load i8, ptr %697, align 1, !tbaa !68
  %710 = zext i8 %709 to i64
  %711 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %710
  %712 = load i8, ptr %711, align 1, !tbaa !68
  %713 = zext i8 %712 to i32
  %714 = and i32 %707, %713
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %788, label %716

716:                                              ; preds = %706
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #8
  store ptr %697, ptr %18, align 8, !tbaa !106
  %717 = getelementptr inbounds i8, ptr %307, i64 3
  %718 = icmp ult ptr %717, %2
  br i1 %718, label %719, label %735

719:                                              ; preds = %716
  %720 = getelementptr i8, ptr %307, i64 %6
  %721 = sub i64 0, %308
  %722 = getelementptr i8, ptr %720, i64 %721
  br label %723

723:                                              ; preds = %719, %732
  %724 = phi ptr [ %733, %732 ], [ %717, %719 ]
  %725 = load i8, ptr %724, align 1, !tbaa !68
  %726 = zext i8 %725 to i64
  %727 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %726
  %728 = load i8, ptr %727, align 1, !tbaa !68
  %729 = zext i8 %728 to i32
  %730 = and i32 %708, %729
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %735, label %732

732:                                              ; preds = %723
  %733 = getelementptr inbounds i8, ptr %724, i64 1
  %734 = icmp eq ptr %733, %722
  br i1 %734, label %735, label %723, !llvm.loop !161

735:                                              ; preds = %732, %723, %716
  %736 = phi ptr [ %717, %716 ], [ %722, %732 ], [ %724, %723 ]
  %737 = getelementptr inbounds %struct.token_pos, ptr %18, i64 0, i32 1
  %738 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 23
  %739 = ptrtoint ptr %736 to i64
  store ptr %736, ptr %737, align 8, !tbaa !108
  %740 = load i8, ptr %738, align 1, !tbaa !162, !range !73, !noundef !74
  %741 = icmp eq i8 %740, 0
  br i1 %741, label %742, label %748

742:                                              ; preds = %735
  %743 = icmp ult ptr %736, %2
  br i1 %743, label %744, label %777

744:                                              ; preds = %742
  %745 = getelementptr i8, ptr %736, i64 %6
  %746 = sub i64 0, %739
  %747 = getelementptr i8, ptr %745, i64 %746
  br label %757

748:                                              ; preds = %735, %748
  %749 = phi ptr [ %756, %748 ], [ %736, %735 ]
  %750 = load i8, ptr %749, align 1, !tbaa !68
  %751 = zext i8 %750 to i64
  %752 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %751
  %753 = load i8, ptr %752, align 1, !tbaa !68
  %754 = and i8 %753, 1
  %755 = icmp eq i8 %754, 0
  %756 = getelementptr inbounds i8, ptr %749, i64 1
  br i1 %755, label %777, label %748, !llvm.loop !163

757:                                              ; preds = %744, %773
  %758 = phi i8 [ %766, %773 ], [ 32, %744 ]
  %759 = phi i8 [ %774, %773 ], [ 0, %744 ]
  %760 = phi ptr [ %775, %773 ], [ %736, %744 ]
  %761 = icmp ne i8 %759, 0
  br i1 %761, label %765, label %762

762:                                              ; preds = %757
  %763 = load i8, ptr %760, align 1, !tbaa !68
  %764 = icmp eq i8 %763, 62
  br i1 %764, label %777, label %765

765:                                              ; preds = %762, %757
  %766 = load i8, ptr %760, align 1, !tbaa !68
  switch i8 %766, label %773 [
    i8 34, label %767
    i8 39, label %767
  ]

767:                                              ; preds = %765, %765
  %768 = icmp eq i8 %766, %759
  %769 = or i1 %761, %768
  %770 = select i1 %768, i8 0, i8 %759
  br i1 %769, label %773, label %771

771:                                              ; preds = %767
  switch i8 %758, label %773 [
    i8 61, label %772
    i8 32, label %772
  ]

772:                                              ; preds = %771, %771
  br label %773

773:                                              ; preds = %767, %772, %771, %765
  %774 = phi i8 [ %766, %772 ], [ 0, %771 ], [ %759, %765 ], [ %770, %767 ]
  %775 = getelementptr inbounds i8, ptr %760, i64 1
  %776 = icmp eq ptr %775, %747
  br i1 %776, label %777, label %757, !llvm.loop !164

777:                                              ; preds = %748, %762, %773, %742
  %778 = phi ptr [ %2, %742 ], [ %2, %773 ], [ %760, %762 ], [ %749, %748 ]
  %779 = icmp ult ptr %778, %2
  br i1 %779, label %780, label %785

780:                                              ; preds = %777
  %781 = load i8, ptr %778, align 1, !tbaa !68
  %782 = icmp eq i8 %781, 62
  br i1 %782, label %783, label %785

783:                                              ; preds = %780
  %784 = getelementptr inbounds i8, ptr %778, i64 1
  call fastcc void @report_event(ptr noundef %0, i32 noundef 3, ptr noundef %307, ptr noundef nonnull %784, i32 noundef %3, ptr noundef nonnull %18, i32 noundef 1, ptr noundef %4)
  br label %785

785:                                              ; preds = %783, %780, %777
  %786 = phi ptr [ %784, %783 ], [ %307, %777 ], [ undef, %780 ]
  %787 = phi i1 [ false, %783 ], [ false, %777 ], [ true, %780 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #8
  br i1 %787, label %824, label %1416

788:                                              ; preds = %706
  %789 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 21
  %790 = load i8, ptr %789, align 1, !tbaa !111, !range !73, !noundef !74
  %791 = icmp eq i8 %790, 0
  br i1 %791, label %792, label %824

792:                                              ; preds = %788
  %793 = icmp ult ptr %697, %2
  br i1 %793, label %794, label %818

794:                                              ; preds = %792
  %795 = getelementptr i8, ptr %307, i64 %6
  %796 = sub i64 0, %308
  %797 = getelementptr i8, ptr %795, i64 %796
  br label %798

798:                                              ; preds = %794, %814
  %799 = phi i8 [ %807, %814 ], [ 32, %794 ]
  %800 = phi i8 [ %815, %814 ], [ 0, %794 ]
  %801 = phi ptr [ %816, %814 ], [ %697, %794 ]
  %802 = icmp ne i8 %800, 0
  br i1 %802, label %806, label %803

803:                                              ; preds = %798
  %804 = load i8, ptr %801, align 1, !tbaa !68
  %805 = icmp eq i8 %804, 62
  br i1 %805, label %818, label %806

806:                                              ; preds = %803, %798
  %807 = load i8, ptr %801, align 1, !tbaa !68
  switch i8 %807, label %814 [
    i8 34, label %808
    i8 39, label %808
  ]

808:                                              ; preds = %806, %806
  %809 = icmp eq i8 %807, %800
  %810 = or i1 %802, %809
  %811 = select i1 %809, i8 0, i8 %800
  br i1 %810, label %814, label %812

812:                                              ; preds = %808
  switch i8 %799, label %814 [
    i8 61, label %813
    i8 32, label %813
  ]

813:                                              ; preds = %812, %812
  br label %814

814:                                              ; preds = %808, %813, %812, %806
  %815 = phi i8 [ %807, %813 ], [ 0, %812 ], [ %800, %806 ], [ %811, %808 ]
  %816 = getelementptr inbounds i8, ptr %801, i64 1
  %817 = icmp eq ptr %816, %797
  br i1 %817, label %818, label %798, !llvm.loop !164

818:                                              ; preds = %814, %803, %792
  %819 = phi ptr [ %2, %792 ], [ %2, %814 ], [ %801, %803 ]
  %820 = icmp ult ptr %819, %2
  br i1 %820, label %821, label %1416

821:                                              ; preds = %818
  %822 = getelementptr inbounds %struct.token_pos, ptr %19, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #8
  store ptr %697, ptr %19, align 8, !tbaa !106
  store ptr %819, ptr %822, align 8, !tbaa !108
  %823 = getelementptr inbounds i8, ptr %819, i64 1
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef %307, ptr noundef nonnull %823, i32 noundef %3, ptr noundef nonnull %19, i32 noundef 1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #8
  br label %1416

824:                                              ; preds = %788, %785
  br label %1416

825:                                              ; preds = %694
  %826 = getelementptr inbounds i8, ptr %307, i64 2
  %827 = load i8, ptr %826, align 1, !tbaa !68
  switch i8 %827, label %1134 [
    i8 45, label %828
    i8 91, label %995
    i8 62, label %1131
  ]

828:                                              ; preds = %825
  %829 = getelementptr inbounds i8, ptr %307, i64 3
  %830 = icmp eq ptr %829, %2
  br i1 %830, label %991, label %831

831:                                              ; preds = %828
  %832 = load i8, ptr %829, align 1, !tbaa !68
  %833 = icmp eq i8 %832, 45
  br i1 %833, label %834, label %991

834:                                              ; preds = %831
  %835 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 21
  %836 = getelementptr inbounds i8, ptr %307, i64 4
  %837 = load i8, ptr %835, align 1, !tbaa !111, !range !73, !noundef !74
  %838 = icmp eq i8 %837, 0
  br i1 %838, label %907, label %839

839:                                              ; preds = %834
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 4, ptr %9, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  store ptr %8, ptr %10, align 8, !tbaa !64
  br label %840

840:                                              ; preds = %897, %839
  %841 = phi ptr [ %888, %897 ], [ %836, %839 ]
  %842 = phi i32 [ %891, %897 ], [ 0, %839 ]
  %843 = phi ptr [ null, %897 ], [ %836, %839 ]
  br label %844

844:                                              ; preds = %840, %887
  %845 = phi ptr [ %841, %840 ], [ %888, %887 ]
  %846 = phi ptr [ %843, %840 ], [ %888, %887 ]
  %847 = icmp eq ptr %846, null
  br label %848

848:                                              ; preds = %844, %884
  %849 = phi ptr [ %873, %884 ], [ %845, %844 ]
  br label %850

850:                                              ; preds = %874, %848
  %851 = phi ptr [ %849, %848 ], [ %873, %874 ]
  %852 = icmp ult ptr %851, %2
  br i1 %852, label %853, label %864

853:                                              ; preds = %850
  %854 = ptrtoint ptr %851 to i64
  %855 = getelementptr i8, ptr %851, i64 %6
  %856 = sub i64 0, %854
  %857 = getelementptr i8, ptr %855, i64 %856
  br label %858

858:                                              ; preds = %853, %861
  %859 = phi ptr [ %862, %861 ], [ %851, %853 ]
  %860 = load i8, ptr %859, align 1, !tbaa !68
  switch i8 %860, label %861 [
    i8 45, label %864
    i8 62, label %864
  ]

861:                                              ; preds = %858
  %862 = getelementptr inbounds i8, ptr %859, i64 1
  %863 = icmp eq ptr %862, %857
  br i1 %863, label %864, label %858, !llvm.loop !165

864:                                              ; preds = %861, %858, %858, %850
  %865 = phi ptr [ %851, %850 ], [ %857, %861 ], [ %859, %858 ], [ %859, %858 ]
  %866 = icmp eq ptr %865, %2
  br i1 %866, label %867, label %870

867:                                              ; preds = %864
  %868 = load ptr, ptr %10, align 8, !tbaa !64
  %869 = icmp eq ptr %868, %8
  br i1 %869, label %905, label %902

870:                                              ; preds = %864
  %871 = load i8, ptr %865, align 1, !tbaa !68
  %872 = icmp eq i8 %871, 62
  %873 = getelementptr inbounds i8, ptr %865, i64 1
  br i1 %872, label %874, label %879

874:                                              ; preds = %870
  br i1 %847, label %875, label %850

875:                                              ; preds = %874
  %876 = load ptr, ptr %10, align 8, !tbaa !64
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %307, ptr noundef nonnull %873, i32 noundef %3, ptr noundef %876, i32 noundef %842, ptr noundef %4)
  %877 = load ptr, ptr %10, align 8, !tbaa !64
  %878 = icmp eq ptr %877, %8
  br i1 %878, label %905, label %902

879:                                              ; preds = %870
  %880 = icmp eq ptr %873, %2
  br i1 %880, label %881, label %884

881:                                              ; preds = %879
  %882 = load ptr, ptr %10, align 8, !tbaa !64
  %883 = icmp eq ptr %882, %8
  br i1 %883, label %905, label %902

884:                                              ; preds = %879
  %885 = load i8, ptr %873, align 1, !tbaa !68
  %886 = icmp eq i8 %885, 45
  br i1 %886, label %887, label %848, !llvm.loop !166

887:                                              ; preds = %884
  %888 = getelementptr inbounds i8, ptr %865, i64 2
  %889 = icmp eq ptr %846, null
  br i1 %889, label %844, label %890, !llvm.loop !166

890:                                              ; preds = %887
  %891 = add nuw nsw i32 %842, 1
  %892 = load i32, ptr %9, align 4, !tbaa !65
  %893 = icmp eq i32 %891, %892
  br i1 %893, label %894, label %897

894:                                              ; preds = %890
  %895 = load ptr, ptr %10, align 8, !tbaa !64
  %896 = icmp ne ptr %895, %8
  call fastcc void @tokens_grow(ptr noundef nonnull %10, ptr noundef nonnull %9, i1 noundef zeroext %896)
  br label %897

897:                                              ; preds = %894, %890
  %898 = load ptr, ptr %10, align 8, !tbaa !64
  %899 = zext nneg i32 %842 to i64
  %900 = getelementptr inbounds %struct.token_pos, ptr %898, i64 %899
  store ptr %846, ptr %900, align 8, !tbaa !106
  %901 = getelementptr inbounds %struct.token_pos, ptr %898, i64 %899, i32 1
  store ptr %865, ptr %901, align 8, !tbaa !108
  br label %840, !llvm.loop !166

902:                                              ; preds = %881, %875, %867
  %903 = phi ptr [ %868, %867 ], [ %877, %875 ], [ %882, %881 ]
  %904 = phi ptr [ %836, %867 ], [ %873, %875 ], [ %836, %881 ]
  call void @Perl_safesysfree(ptr noundef %903) #8
  br label %905

905:                                              ; preds = %902, %881, %875, %867
  %906 = phi ptr [ %836, %867 ], [ %873, %875 ], [ %836, %881 ], [ %904, %902 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  br label %987

907:                                              ; preds = %834
  %908 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 10
  %909 = load i8, ptr %908, align 1, !tbaa !112, !range !73, !noundef !74
  %910 = icmp eq i8 %909, 0
  br i1 %910, label %932, label %911

911:                                              ; preds = %907
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8
  store ptr %836, ptr %11, align 8, !tbaa !106
  %912 = icmp ult ptr %836, %2
  br i1 %912, label %913, label %927

913:                                              ; preds = %911
  %914 = getelementptr i8, ptr %307, i64 %6
  %915 = sub i64 0, %308
  %916 = getelementptr i8, ptr %914, i64 %915
  br label %917

917:                                              ; preds = %913, %921
  %918 = phi ptr [ %922, %921 ], [ %836, %913 ]
  %919 = load i8, ptr %918, align 1, !tbaa !68
  %920 = icmp eq i8 %919, 62
  br i1 %920, label %924, label %921

921:                                              ; preds = %917
  %922 = getelementptr inbounds i8, ptr %918, i64 1
  %923 = icmp eq ptr %922, %916
  br i1 %923, label %927, label %917, !llvm.loop !167

924:                                              ; preds = %917
  %925 = getelementptr inbounds %struct.token_pos, ptr %11, i64 0, i32 1
  store ptr %918, ptr %925, align 8, !tbaa !108
  %926 = getelementptr inbounds i8, ptr %918, i64 1
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %307, ptr noundef nonnull %926, i32 noundef %3, ptr noundef nonnull %11, i32 noundef 1, ptr noundef %4)
  br label %930

927:                                              ; preds = %921, %911
  %928 = phi ptr [ %836, %911 ], [ %916, %921 ]
  %929 = getelementptr inbounds %struct.token_pos, ptr %11, i64 0, i32 1
  store ptr %928, ptr %929, align 8, !tbaa !108
  br label %930

930:                                              ; preds = %927, %924
  %931 = phi ptr [ %926, %924 ], [ %836, %927 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8
  br label %987

932:                                              ; preds = %907
  %933 = getelementptr inbounds %struct.token_pos, ptr %12, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8
  store ptr %836, ptr %12, align 8, !tbaa !106
  br label %934

934:                                              ; preds = %975, %932
  %935 = phi ptr [ %836, %932 ], [ %957, %975 ]
  %936 = icmp ult ptr %935, %2
  br i1 %936, label %937, label %978

937:                                              ; preds = %934
  %938 = ptrtoint ptr %935 to i64
  %939 = getelementptr i8, ptr %935, i64 %6
  %940 = sub i64 0, %938
  %941 = getelementptr i8, ptr %939, i64 %940
  %942 = load i8, ptr %935, align 1, !tbaa !68
  %943 = icmp eq i8 %942, 45
  br i1 %943, label %953, label %947

944:                                              ; preds = %947
  %945 = load i8, ptr %949, align 1, !tbaa !68
  %946 = icmp eq i8 %945, 45
  br i1 %946, label %951, label %947, !llvm.loop !168

947:                                              ; preds = %937, %944
  %948 = phi ptr [ %949, %944 ], [ %935, %937 ]
  %949 = getelementptr inbounds i8, ptr %948, i64 1
  %950 = icmp eq ptr %949, %941
  br i1 %950, label %978, label %944, !llvm.loop !168

951:                                              ; preds = %944
  %952 = icmp ult ptr %949, %2
  br label %953

953:                                              ; preds = %951, %937
  %954 = phi i1 [ %952, %951 ], [ %936, %937 ]
  %955 = phi ptr [ %949, %951 ], [ %935, %937 ]
  store ptr %955, ptr %933, align 8, !tbaa !108
  br i1 %954, label %956, label %981

956:                                              ; preds = %953
  %957 = getelementptr inbounds i8, ptr %955, i64 1
  %958 = load i8, ptr %957, align 1, !tbaa !68
  %959 = icmp eq i8 %958, 45
  br i1 %959, label %960, label %975

960:                                              ; preds = %956
  %961 = getelementptr inbounds i8, ptr %955, i64 2
  br label %962

962:                                              ; preds = %962, %960
  %963 = phi ptr [ %961, %960 ], [ %970, %962 ]
  %964 = load i8, ptr %963, align 1, !tbaa !68
  %965 = zext i8 %964 to i64
  %966 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %965
  %967 = load i8, ptr %966, align 1, !tbaa !68
  %968 = and i8 %967, 1
  %969 = icmp eq i8 %968, 0
  %970 = getelementptr inbounds i8, ptr %963, i64 1
  br i1 %969, label %971, label %962, !llvm.loop !169

971:                                              ; preds = %962
  %972 = icmp eq i8 %964, 62
  br i1 %972, label %973, label %975

973:                                              ; preds = %971
  %974 = getelementptr inbounds i8, ptr %963, i64 1
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %307, ptr noundef nonnull %974, i32 noundef %3, ptr noundef nonnull %12, i32 noundef 1, ptr noundef %4)
  br label %985

975:                                              ; preds = %971, %956
  %976 = phi ptr [ %963, %971 ], [ %957, %956 ]
  %977 = icmp ult ptr %976, %2
  br i1 %977, label %934, label %981

978:                                              ; preds = %934, %947
  %979 = phi ptr [ %941, %947 ], [ %935, %934 ]
  %980 = getelementptr inbounds %struct.token_pos, ptr %12, i64 0, i32 1
  store ptr %979, ptr %980, align 8, !tbaa !108
  br label %981

981:                                              ; preds = %975, %953, %978
  %982 = phi ptr [ %979, %978 ], [ %976, %975 ], [ %955, %953 ]
  %983 = icmp eq ptr %982, %2
  %984 = select i1 %983, ptr %836, ptr null
  br label %985

985:                                              ; preds = %981, %973
  %986 = phi ptr [ %974, %973 ], [ %984, %981 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8
  br label %987

987:                                              ; preds = %985, %930, %905
  %988 = phi ptr [ %906, %905 ], [ %931, %930 ], [ %986, %985 ]
  %989 = icmp eq ptr %988, %836
  %990 = select i1 %989, ptr %307, ptr %988
  br label %991

991:                                              ; preds = %987, %831, %828
  %992 = phi i1 [ false, %987 ], [ false, %828 ], [ true, %831 ]
  %993 = phi ptr [ %836, %987 ], [ %829, %828 ], [ %829, %831 ]
  %994 = phi ptr [ %990, %987 ], [ %307, %828 ], [ undef, %831 ]
  br i1 %992, label %1356, label %1416

995:                                              ; preds = %825
  %996 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 20
  %997 = load i8, ptr %996, align 8, !tbaa !170, !range !73, !noundef !74
  %998 = icmp eq i8 %997, 0
  br i1 %998, label %1128, label %999

999:                                              ; preds = %995
  %1000 = getelementptr inbounds i8, ptr %307, i64 3
  br label %1001

1001:                                             ; preds = %1091, %999
  %1002 = phi ptr [ null, %999 ], [ %1014, %1091 ]
  %1003 = phi ptr [ %1000, %999 ], [ %1092, %1091 ]
  br label %1004

1004:                                             ; preds = %1004, %1001
  %1005 = phi ptr [ %1003, %1001 ], [ %1012, %1004 ]
  %1006 = load i8, ptr %1005, align 1, !tbaa !68
  %1007 = zext i8 %1006 to i64
  %1008 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %1007
  %1009 = load i8, ptr %1008, align 1, !tbaa !68
  %1010 = and i8 %1009, 1
  %1011 = icmp eq i8 %1010, 0
  %1012 = getelementptr inbounds i8, ptr %1005, i64 1
  br i1 %1011, label %1013, label %1004, !llvm.loop !171

1013:                                             ; preds = %1004, %1059
  %1014 = phi ptr [ %1061, %1059 ], [ %1002, %1004 ]
  %1015 = phi ptr [ %1032, %1059 ], [ %1005, %1004 ]
  %1016 = load i8, ptr %1015, align 1, !tbaa !68
  %1017 = zext i8 %1016 to i64
  %1018 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %1017
  %1019 = load i8, ptr %1018, align 1, !tbaa !68
  %1020 = and i8 %1019, 2
  %1021 = icmp eq i8 %1020, 0
  br i1 %1021, label %1062, label %1022

1022:                                             ; preds = %1013, %1022
  %1023 = phi ptr [ %1024, %1022 ], [ %1015, %1013 ]
  %1024 = getelementptr inbounds i8, ptr %1023, i64 1
  %1025 = load i8, ptr %1024, align 1, !tbaa !68
  %1026 = zext i8 %1025 to i64
  %1027 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %1026
  %1028 = load i8, ptr %1027, align 1, !tbaa !68
  %1029 = and i8 %1028, 4
  %1030 = icmp eq i8 %1029, 0
  br i1 %1030, label %1031, label %1022, !llvm.loop !172

1031:                                             ; preds = %1022, %1031
  %1032 = phi ptr [ %1039, %1031 ], [ %1024, %1022 ]
  %1033 = load i8, ptr %1032, align 1, !tbaa !68
  %1034 = zext i8 %1033 to i64
  %1035 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %1034
  %1036 = load i8, ptr %1035, align 1, !tbaa !68
  %1037 = and i8 %1036, 1
  %1038 = icmp eq i8 %1037, 0
  %1039 = getelementptr inbounds i8, ptr %1032, i64 1
  br i1 %1038, label %1040, label %1031, !llvm.loop !173

1040:                                             ; preds = %1031
  %1041 = icmp eq ptr %1032, %2
  br i1 %1041, label %1059, label %1042

1042:                                             ; preds = %1040
  %1043 = icmp eq ptr %1014, null
  br i1 %1043, label %1044, label %1046

1044:                                             ; preds = %1042
  %1045 = call ptr @Perl_newSV_type(i32 noundef 11) #8
  br label %1046

1046:                                             ; preds = %1044, %1042
  %1047 = phi ptr [ %1014, %1042 ], [ %1045, %1044 ]
  %1048 = icmp eq i32 %3, 0
  %1049 = ptrtoint ptr %1024 to i64
  %1050 = ptrtoint ptr %1015 to i64
  %1051 = sub i64 %1049, %1050
  %1052 = call ptr @Perl_newSVpvn(ptr noundef nonnull %1015, i64 noundef %1051) #8
  br i1 %1048, label %1057, label %1053

1053:                                             ; preds = %1046
  %1054 = getelementptr inbounds %struct.sv, ptr %1052, i64 0, i32 2
  %1055 = load i32, ptr %1054, align 4, !tbaa !69
  %1056 = or i32 %1055, 536870912
  store i32 %1056, ptr %1054, align 4, !tbaa !69
  br label %1057

1057:                                             ; preds = %1053, %1046
  %1058 = call fastcc ptr @sv_lower(ptr noundef %1052)
  call void @Perl_av_push(ptr noundef %1047, ptr noundef %1052) #8
  br label %1059

1059:                                             ; preds = %1057, %1040
  %1060 = phi i32 [ 0, %1057 ], [ 11, %1040 ]
  %1061 = phi ptr [ %1047, %1057 ], [ %1014, %1040 ]
  switch i32 %1060, label %1128 [
    i32 0, label %1013
    i32 11, label %1118
  ], !llvm.loop !174

1062:                                             ; preds = %1013
  switch i8 %1016, label %1109 [
    i8 45, label %1063
    i8 91, label %1093
  ]

1063:                                             ; preds = %1062
  %1064 = getelementptr inbounds i8, ptr %1015, i64 1
  %1065 = load i8, ptr %1064, align 1, !tbaa !68
  %1066 = icmp eq i8 %1065, 45
  br i1 %1066, label %1067, label %1109

1067:                                             ; preds = %1063
  %1068 = getelementptr inbounds i8, ptr %1015, i64 2
  br label %1069

1069:                                             ; preds = %1087, %1067
  %1070 = phi ptr [ %1068, %1067 ], [ %1088, %1087 ]
  %1071 = icmp ult ptr %1070, %2
  br i1 %1071, label %1072, label %1084

1072:                                             ; preds = %1069
  %1073 = ptrtoint ptr %1070 to i64
  %1074 = getelementptr i8, ptr %1070, i64 %6
  %1075 = sub i64 0, %1073
  %1076 = getelementptr i8, ptr %1074, i64 %1075
  br label %1077

1077:                                             ; preds = %1072, %1081
  %1078 = phi ptr [ %1082, %1081 ], [ %1070, %1072 ]
  %1079 = load i8, ptr %1078, align 1, !tbaa !68
  %1080 = icmp eq i8 %1079, 45
  br i1 %1080, label %1084, label %1081

1081:                                             ; preds = %1077
  %1082 = getelementptr inbounds i8, ptr %1078, i64 1
  %1083 = icmp eq ptr %1082, %1076
  br i1 %1083, label %1084, label %1077, !llvm.loop !175

1084:                                             ; preds = %1081, %1077, %1069
  %1085 = phi ptr [ %1070, %1069 ], [ %1076, %1081 ], [ %1078, %1077 ]
  %1086 = icmp eq ptr %1085, %2
  br i1 %1086, label %1118, label %1087

1087:                                             ; preds = %1084
  %1088 = getelementptr inbounds i8, ptr %1085, i64 1
  %1089 = load i8, ptr %1088, align 1, !tbaa !68
  %1090 = icmp eq i8 %1089, 45
  br i1 %1090, label %1091, label %1069, !llvm.loop !176

1091:                                             ; preds = %1087
  %1092 = getelementptr inbounds i8, ptr %1085, i64 2
  br label %1001

1093:                                             ; preds = %1062
  %1094 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  %1095 = getelementptr inbounds i8, ptr %1015, i64 1
  %1096 = icmp eq ptr %1014, null
  br i1 %1096, label %1097, label %1100

1097:                                             ; preds = %1093
  %1098 = call ptr @Perl_newSV_type(i32 noundef 11) #8
  %1099 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.83, i64 noundef 7) #8
  call void @Perl_av_push(ptr noundef %1098, ptr noundef %1099) #8
  br label %1100

1100:                                             ; preds = %1097, %1093
  %1101 = phi ptr [ %1014, %1093 ], [ %1098, %1097 ]
  %1102 = load ptr, ptr %1094, align 8, !tbaa !50
  %1103 = icmp eq ptr %1102, null
  br i1 %1103, label %1104, label %1106

1104:                                             ; preds = %1100
  %1105 = call ptr @Perl_newSV_type(i32 noundef 11) #8
  store ptr %1105, ptr %1094, align 8, !tbaa !50
  br label %1106

1106:                                             ; preds = %1104, %1100
  %1107 = load ptr, ptr %1094, align 8, !tbaa !50
  %1108 = call ptr @Perl_newRV_noinc(ptr noundef %1101) #8
  call void @Perl_av_push(ptr noundef %1107, ptr noundef %1108) #8
  call fastcc void @marked_section_update(ptr noundef %0)
  call fastcc void @report_event(ptr noundef %0, i32 noundef 10, ptr noundef %307, ptr noundef nonnull %1095, i32 noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %4)
  br label %1128

1109:                                             ; preds = %1063, %1062
  %1110 = icmp eq ptr %1014, null
  br i1 %1110, label %1128, label %1111

1111:                                             ; preds = %1109
  %1112 = getelementptr inbounds %struct.sv, ptr %1014, i64 0, i32 1
  %1113 = load i32, ptr %1112, align 8, !tbaa !46
  %1114 = icmp ugt i32 %1113, 1
  br i1 %1114, label %1115, label %1117

1115:                                             ; preds = %1111
  %1116 = add i32 %1113, -1
  store i32 %1116, ptr %1112, align 8, !tbaa !46
  br label %1128

1117:                                             ; preds = %1111
  call void @Perl_sv_free2(ptr noundef nonnull %1014, i32 noundef %1113) #8
  br label %1128

1118:                                             ; preds = %1059, %1084
  %1119 = phi ptr [ %1014, %1084 ], [ %1061, %1059 ]
  %1120 = icmp eq ptr %1119, null
  br i1 %1120, label %1128, label %1121

1121:                                             ; preds = %1118
  %1122 = getelementptr inbounds %struct.sv, ptr %1119, i64 0, i32 1
  %1123 = load i32, ptr %1122, align 8, !tbaa !46
  %1124 = icmp ugt i32 %1123, 1
  br i1 %1124, label %1125, label %1127

1125:                                             ; preds = %1121
  %1126 = add i32 %1123, -1
  store i32 %1126, ptr %1122, align 8, !tbaa !46
  br label %1128

1127:                                             ; preds = %1121
  call void @Perl_sv_free2(ptr noundef nonnull %1119, i32 noundef %1123) #8
  br label %1128

1128:                                             ; preds = %1059, %1118, %1127, %1125, %1117, %1115, %1109, %1106, %995
  %1129 = phi ptr [ %1095, %1106 ], [ null, %995 ], [ null, %1109 ], [ null, %1115 ], [ null, %1117 ], [ %307, %1125 ], [ %307, %1127 ], [ %307, %1118 ], [ undef, %1059 ]
  %1130 = icmp eq ptr %1129, null
  br i1 %1130, label %1356, label %1416

1131:                                             ; preds = %825
  %1132 = getelementptr inbounds %struct.token_pos, ptr %13, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8
  store ptr %826, ptr %13, align 8, !tbaa !106
  store ptr %826, ptr %1132, align 8, !tbaa !108
  %1133 = getelementptr inbounds i8, ptr %307, i64 3
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef %307, ptr noundef nonnull %1133, i32 noundef %3, ptr noundef nonnull %13, i32 noundef 1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8
  br label %1416

1134:                                             ; preds = %825
  %1135 = zext i8 %827 to i64
  %1136 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1135
  %1137 = load i32, ptr %1136, align 4, !tbaa !65
  %1138 = and i32 %1137, 16388
  %1139 = icmp eq i32 %1138, 16388
  br i1 %1139, label %1140, label %1356

1140:                                             ; preds = %1134
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  store i32 8, ptr %15, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  store ptr %14, ptr %16, align 8, !tbaa !64
  %1141 = getelementptr inbounds i8, ptr %307, i64 3
  %1142 = icmp ult ptr %1141, %2
  br i1 %1142, label %1143, label %1158

1143:                                             ; preds = %1140
  %1144 = getelementptr i8, ptr %307, i64 %6
  %1145 = sub i64 0, %308
  %1146 = getelementptr i8, ptr %1144, i64 %1145
  br label %1147

1147:                                             ; preds = %1143, %1155
  %1148 = phi ptr [ %1156, %1155 ], [ %1141, %1143 ]
  %1149 = load i8, ptr %1148, align 1, !tbaa !68
  %1150 = zext i8 %1149 to i64
  %1151 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %1150
  %1152 = load i8, ptr %1151, align 1, !tbaa !68
  %1153 = and i8 %1152, 4
  %1154 = icmp eq i8 %1153, 0
  br i1 %1154, label %1158, label %1155

1155:                                             ; preds = %1147
  %1156 = getelementptr inbounds i8, ptr %1148, i64 1
  %1157 = icmp eq ptr %1156, %1146
  br i1 %1157, label %1158, label %1147, !llvm.loop !177

1158:                                             ; preds = %1155, %1147, %1140
  %1159 = phi ptr [ %1141, %1140 ], [ %1146, %1155 ], [ %1148, %1147 ]
  %1160 = ptrtoint ptr %1159 to i64
  %1161 = ptrtoint ptr %826 to i64
  %1162 = sub i64 %1160, %1161
  %1163 = icmp eq ptr %1159, %2
  br i1 %1163, label %1343, label %1164

1164:                                             ; preds = %1158
  switch i64 %1162, label %1339 [
    i64 7, label %1165
    i64 6, label %1180
  ]

1165:                                             ; preds = %1164
  %1166 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %1167 = load i8, ptr %1166, align 4, !tbaa !120, !range !73, !noundef !74
  %1168 = icmp eq i8 %1167, 0
  br i1 %1168, label %1169, label %1174

1169:                                             ; preds = %1165
  %1170 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %1171 = load i8, ptr %1170, align 1, !tbaa !121, !range !73, !noundef !74
  %1172 = xor i8 %1171, 1
  %1173 = zext nneg i8 %1172 to i32
  br label %1174

1174:                                             ; preds = %1169, %1165
  %1175 = phi i32 [ 0, %1165 ], [ %1173, %1169 ]
  %1176 = call fastcc i32 @strnEQx(ptr noundef nonnull %826, ptr noundef nonnull @.str.88, i64 noundef 7, i32 noundef %1175), !range !178
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1178, label %1193

1178:                                             ; preds = %1174
  %1179 = icmp eq i64 %1162, 6
  br i1 %1179, label %1180, label %1339

1180:                                             ; preds = %1178, %1164
  %1181 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %1182 = load i8, ptr %1181, align 4, !tbaa !120, !range !73, !noundef !74
  %1183 = icmp eq i8 %1182, 0
  br i1 %1183, label %1184, label %1189

1184:                                             ; preds = %1180
  %1185 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 27
  %1186 = load i8, ptr %1185, align 1, !tbaa !121, !range !73, !noundef !74
  %1187 = xor i8 %1186, 1
  %1188 = zext nneg i8 %1187 to i32
  br label %1189

1189:                                             ; preds = %1184, %1180
  %1190 = phi i32 [ 0, %1180 ], [ %1188, %1184 ]
  %1191 = call fastcc i32 @strnEQx(ptr noundef nonnull %826, ptr noundef nonnull @.str.89, i64 noundef 6, i32 noundef %1190), !range !178
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %1339, label %1193

1193:                                             ; preds = %1174, %1189
  %1194 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 32
  %1195 = load ptr, ptr %16, align 8, !tbaa !64
  store ptr %826, ptr %1195, align 8, !tbaa !106
  %1196 = getelementptr inbounds %struct.token_pos, ptr %1195, i64 0, i32 1
  store ptr %1159, ptr %1196, align 8, !tbaa !108
  br label %1197

1197:                                             ; preds = %1331, %1193
  %1198 = phi i32 [ 1, %1193 ], [ %1332, %1331 ]
  %1199 = phi ptr [ %1159, %1193 ], [ %1333, %1331 ]
  %1200 = icmp ult ptr %1199, %2
  br i1 %1200, label %1201, label %1217

1201:                                             ; preds = %1197
  %1202 = ptrtoint ptr %1199 to i64
  %1203 = getelementptr i8, ptr %1199, i64 %6
  %1204 = sub i64 0, %1202
  %1205 = getelementptr i8, ptr %1203, i64 %1204
  br label %1206

1206:                                             ; preds = %1201, %1214
  %1207 = phi ptr [ %1215, %1214 ], [ %1199, %1201 ]
  %1208 = load i8, ptr %1207, align 1, !tbaa !68
  %1209 = zext i8 %1208 to i64
  %1210 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %1209
  %1211 = load i8, ptr %1210, align 1, !tbaa !68
  %1212 = and i8 %1211, 1
  %1213 = icmp eq i8 %1212, 0
  br i1 %1213, label %1217, label %1214

1214:                                             ; preds = %1206
  %1215 = getelementptr inbounds i8, ptr %1207, i64 1
  %1216 = icmp eq ptr %1215, %1205
  br i1 %1216, label %1217, label %1206, !llvm.loop !179

1217:                                             ; preds = %1214, %1206, %1197
  %1218 = phi ptr [ %1199, %1197 ], [ %1205, %1214 ], [ %1207, %1206 ]
  %1219 = icmp eq ptr %1218, %2
  br i1 %1219, label %1343, label %1220

1220:                                             ; preds = %1217
  %1221 = load i8, ptr %1218, align 1, !tbaa !68
  switch i8 %1221, label %1222 [
    i8 34, label %1226
    i8 39, label %1226
    i8 96, label %1223
    i8 45, label %1254
    i8 62, label %1334
  ]

1222:                                             ; preds = %1253, %1220
  br label %1303

1223:                                             ; preds = %1220
  %1224 = load i8, ptr %1194, align 4, !tbaa !130, !range !73, !noundef !74
  %1225 = icmp eq i8 %1224, 0
  br i1 %1225, label %1253, label %1226

1226:                                             ; preds = %1220, %1220, %1223
  br label %1227

1227:                                             ; preds = %1226, %1231
  %1228 = phi ptr [ %1229, %1231 ], [ %1218, %1226 ]
  %1229 = getelementptr inbounds i8, ptr %1228, i64 1
  %1230 = icmp ult ptr %1229, %2
  br i1 %1230, label %1231, label %1234

1231:                                             ; preds = %1227
  %1232 = load i8, ptr %1229, align 1, !tbaa !68
  %1233 = icmp eq i8 %1232, %1221
  br i1 %1233, label %1234, label %1227, !llvm.loop !180

1234:                                             ; preds = %1231, %1227
  %1235 = icmp eq ptr %1229, %2
  br i1 %1235, label %1249, label %1236

1236:                                             ; preds = %1234
  %1237 = getelementptr inbounds i8, ptr %1228, i64 2
  %1238 = add nsw i32 %1198, 1
  %1239 = load i32, ptr %15, align 4, !tbaa !65
  %1240 = icmp eq i32 %1238, %1239
  br i1 %1240, label %1241, label %1244

1241:                                             ; preds = %1236
  %1242 = load ptr, ptr %16, align 8, !tbaa !64
  %1243 = icmp ne ptr %1242, %14
  call fastcc void @tokens_grow(ptr noundef nonnull %16, ptr noundef nonnull %15, i1 noundef zeroext %1243)
  br label %1244

1244:                                             ; preds = %1241, %1236
  %1245 = load ptr, ptr %16, align 8, !tbaa !64
  %1246 = sext i32 %1198 to i64
  %1247 = getelementptr inbounds %struct.token_pos, ptr %1245, i64 %1246
  store ptr %1218, ptr %1247, align 8, !tbaa !106
  %1248 = getelementptr inbounds %struct.token_pos, ptr %1245, i64 %1246, i32 1
  store ptr %1237, ptr %1248, align 8, !tbaa !108
  br label %1249

1249:                                             ; preds = %1244, %1234
  %1250 = phi i32 [ %1238, %1244 ], [ %1198, %1234 ]
  %1251 = phi i32 [ 0, %1244 ], [ 5, %1234 ]
  %1252 = phi ptr [ %1237, %1244 ], [ %1229, %1234 ]
  switch i32 %1251, label %1352 [
    i32 0, label %1331
    i32 5, label %1343
  ]

1253:                                             ; preds = %1223
  switch i8 %1221, label %1222 [
    i8 45, label %1254
    i8 62, label %1334
  ]

1254:                                             ; preds = %1220, %1253
  %1255 = getelementptr inbounds i8, ptr %1218, i64 1
  %1256 = icmp eq ptr %1255, %2
  br i1 %1256, label %1299, label %1257

1257:                                             ; preds = %1254
  %1258 = load i8, ptr %1255, align 1, !tbaa !68
  %1259 = icmp eq i8 %1258, 45
  br i1 %1259, label %1260, label %1299

1260:                                             ; preds = %1257
  %1261 = getelementptr inbounds i8, ptr %1218, i64 2
  br label %1262

1262:                                             ; preds = %1283, %1260
  %1263 = phi ptr [ %1261, %1260 ], [ %1281, %1283 ]
  %1264 = icmp ult ptr %1263, %2
  br i1 %1264, label %1265, label %1277

1265:                                             ; preds = %1262
  %1266 = ptrtoint ptr %1263 to i64
  %1267 = getelementptr i8, ptr %1263, i64 %6
  %1268 = sub i64 0, %1266
  %1269 = getelementptr i8, ptr %1267, i64 %1268
  br label %1270

1270:                                             ; preds = %1265, %1274
  %1271 = phi ptr [ %1275, %1274 ], [ %1263, %1265 ]
  %1272 = load i8, ptr %1271, align 1, !tbaa !68
  %1273 = icmp eq i8 %1272, 45
  br i1 %1273, label %1277, label %1274

1274:                                             ; preds = %1270
  %1275 = getelementptr inbounds i8, ptr %1271, i64 1
  %1276 = icmp eq ptr %1275, %1269
  br i1 %1276, label %1277, label %1270, !llvm.loop !181

1277:                                             ; preds = %1274, %1270, %1262
  %1278 = phi ptr [ %1263, %1262 ], [ %1269, %1274 ], [ %1271, %1270 ]
  %1279 = icmp eq ptr %1278, %2
  br i1 %1279, label %1299, label %1280

1280:                                             ; preds = %1277
  %1281 = getelementptr inbounds i8, ptr %1278, i64 1
  %1282 = icmp eq ptr %1281, %2
  br i1 %1282, label %1299, label %1283

1283:                                             ; preds = %1280
  %1284 = load i8, ptr %1281, align 1, !tbaa !68
  %1285 = icmp eq i8 %1284, 45
  br i1 %1285, label %1286, label %1262, !llvm.loop !182

1286:                                             ; preds = %1283
  %1287 = getelementptr inbounds i8, ptr %1278, i64 2
  %1288 = add nsw i32 %1198, 1
  %1289 = load i32, ptr %15, align 4, !tbaa !65
  %1290 = icmp eq i32 %1288, %1289
  br i1 %1290, label %1291, label %1294

1291:                                             ; preds = %1286
  %1292 = load ptr, ptr %16, align 8, !tbaa !64
  %1293 = icmp ne ptr %1292, %14
  call fastcc void @tokens_grow(ptr noundef nonnull %16, ptr noundef nonnull %15, i1 noundef zeroext %1293)
  br label %1294

1294:                                             ; preds = %1291, %1286
  %1295 = load ptr, ptr %16, align 8, !tbaa !64
  %1296 = sext i32 %1198 to i64
  %1297 = getelementptr inbounds %struct.token_pos, ptr %1295, i64 %1296
  store ptr %1218, ptr %1297, align 8, !tbaa !106
  %1298 = getelementptr inbounds %struct.token_pos, ptr %1295, i64 %1296, i32 1
  store ptr %1287, ptr %1298, align 8, !tbaa !108
  br label %1299

1299:                                             ; preds = %1280, %1277, %1294, %1257, %1254
  %1300 = phi i32 [ %1288, %1294 ], [ %1198, %1254 ], [ %1198, %1257 ], [ %1198, %1277 ], [ %1198, %1280 ]
  %1301 = phi i32 [ 0, %1294 ], [ 5, %1254 ], [ 6, %1257 ], [ 5, %1277 ], [ 5, %1280 ]
  %1302 = phi ptr [ %1287, %1294 ], [ %1255, %1254 ], [ %1255, %1257 ], [ %1281, %1280 ], [ %1278, %1277 ]
  switch i32 %1301, label %1352 [
    i32 0, label %1331
    i32 6, label %1339
    i32 5, label %1343
  ]

1303:                                             ; preds = %1222, %1307
  %1304 = phi ptr [ %1305, %1307 ], [ %1218, %1222 ]
  %1305 = getelementptr inbounds i8, ptr %1304, i64 1
  %1306 = icmp ult ptr %1305, %2
  br i1 %1306, label %1307, label %1314

1307:                                             ; preds = %1303
  %1308 = load i8, ptr %1305, align 1, !tbaa !68
  %1309 = zext i8 %1308 to i64
  %1310 = getelementptr inbounds [256 x i8], ptr @hctype, i64 0, i64 %1309
  %1311 = load i8, ptr %1310, align 1, !tbaa !68
  %1312 = and i8 %1311, 8
  %1313 = icmp eq i8 %1312, 0
  br i1 %1313, label %1314, label %1303, !llvm.loop !183

1314:                                             ; preds = %1307, %1303
  %1315 = icmp eq ptr %1305, %2
  br i1 %1315, label %1328, label %1316

1316:                                             ; preds = %1314
  %1317 = add nsw i32 %1198, 1
  %1318 = load i32, ptr %15, align 4, !tbaa !65
  %1319 = icmp eq i32 %1317, %1318
  br i1 %1319, label %1320, label %1323

1320:                                             ; preds = %1316
  %1321 = load ptr, ptr %16, align 8, !tbaa !64
  %1322 = icmp ne ptr %1321, %14
  call fastcc void @tokens_grow(ptr noundef nonnull %16, ptr noundef nonnull %15, i1 noundef zeroext %1322)
  br label %1323

1323:                                             ; preds = %1320, %1316
  %1324 = load ptr, ptr %16, align 8, !tbaa !64
  %1325 = sext i32 %1198 to i64
  %1326 = getelementptr inbounds %struct.token_pos, ptr %1324, i64 %1325
  store ptr %1218, ptr %1326, align 8, !tbaa !106
  %1327 = getelementptr inbounds %struct.token_pos, ptr %1324, i64 %1325, i32 1
  store ptr %1305, ptr %1327, align 8, !tbaa !108
  br label %1328

1328:                                             ; preds = %1323, %1314
  %1329 = phi i32 [ %1317, %1323 ], [ %1198, %1314 ]
  %1330 = phi i32 [ 0, %1323 ], [ 5, %1314 ]
  switch i32 %1330, label %1352 [
    i32 0, label %1331
    i32 5, label %1343
  ]

1331:                                             ; preds = %1328, %1299, %1249
  %1332 = phi i32 [ %1250, %1249 ], [ %1300, %1299 ], [ %1329, %1328 ]
  %1333 = phi ptr [ %1252, %1249 ], [ %1302, %1299 ], [ %1305, %1328 ]
  br label %1197, !llvm.loop !184

1334:                                             ; preds = %1220, %1253
  %1335 = getelementptr inbounds i8, ptr %1218, i64 1
  %1336 = load ptr, ptr %16, align 8, !tbaa !64
  call fastcc void @report_event(ptr noundef %0, i32 noundef 0, ptr noundef %307, ptr noundef nonnull %1335, i32 noundef %3, ptr noundef %1336, i32 noundef %1198, ptr noundef %4)
  %1337 = load ptr, ptr %16, align 8, !tbaa !64
  %1338 = icmp eq ptr %1337, %14
  br i1 %1338, label %1352, label %1347

1339:                                             ; preds = %1299, %1189, %1178, %1164
  %1340 = phi ptr [ %1159, %1164 ], [ %1159, %1178 ], [ %1159, %1189 ], [ %1302, %1299 ]
  %1341 = load ptr, ptr %16, align 8, !tbaa !64
  %1342 = icmp eq ptr %1341, %14
  br i1 %1342, label %1352, label %1347

1343:                                             ; preds = %1328, %1299, %1249, %1217, %1158
  %1344 = phi ptr [ %1159, %1158 ], [ %1218, %1217 ], [ %1252, %1249 ], [ %1302, %1299 ], [ %1305, %1328 ]
  %1345 = load ptr, ptr %16, align 8, !tbaa !64
  %1346 = icmp eq ptr %1345, %14
  br i1 %1346, label %1352, label %1347

1347:                                             ; preds = %1343, %1339, %1334
  %1348 = phi ptr [ %1337, %1334 ], [ %1341, %1339 ], [ %1345, %1343 ]
  %1349 = phi i1 [ false, %1334 ], [ true, %1339 ], [ false, %1343 ]
  %1350 = phi ptr [ %1335, %1334 ], [ %1340, %1339 ], [ %1344, %1343 ]
  %1351 = phi ptr [ %1335, %1334 ], [ undef, %1339 ], [ %307, %1343 ]
  call void @Perl_safesysfree(ptr noundef %1348) #8
  br label %1352

1352:                                             ; preds = %1328, %1299, %1249, %1347, %1343, %1339, %1334
  %1353 = phi i1 [ false, %1334 ], [ true, %1339 ], [ false, %1343 ], [ %1349, %1347 ], [ false, %1249 ], [ false, %1299 ], [ false, %1328 ]
  %1354 = phi ptr [ %1335, %1334 ], [ %1340, %1339 ], [ %1344, %1343 ], [ %1350, %1347 ], [ %1305, %1328 ], [ %1302, %1299 ], [ %1252, %1249 ]
  %1355 = phi ptr [ %1335, %1334 ], [ undef, %1339 ], [ %307, %1343 ], [ %1351, %1347 ], [ undef, %1249 ], [ undef, %1299 ], [ undef, %1328 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %14) #8
  br i1 %1353, label %1356, label %1416

1356:                                             ; preds = %1128, %1352, %1134, %991
  %1357 = phi ptr [ %993, %991 ], [ %1354, %1352 ], [ %826, %1134 ], [ %826, %1128 ]
  %1358 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 21
  %1359 = ptrtoint ptr %1357 to i64
  %1360 = load i8, ptr %1358, align 1, !tbaa !111, !range !73, !noundef !74
  %1361 = icmp eq i8 %1360, 0
  br i1 %1361, label %1362, label %1416

1362:                                             ; preds = %1356
  %1363 = icmp ult ptr %1357, %2
  br i1 %1363, label %1364, label %1416

1364:                                             ; preds = %1362
  %1365 = getelementptr i8, ptr %1357, i64 %6
  %1366 = sub i64 0, %1359
  %1367 = getelementptr i8, ptr %1365, i64 %1366
  br label %1368

1368:                                             ; preds = %1364, %1372
  %1369 = phi ptr [ %1373, %1372 ], [ %1357, %1364 ]
  %1370 = load i8, ptr %1369, align 1, !tbaa !68
  %1371 = icmp eq i8 %1370, 62
  br i1 %1371, label %1375, label %1372

1372:                                             ; preds = %1368
  %1373 = getelementptr inbounds i8, ptr %1369, i64 1
  %1374 = icmp eq ptr %1373, %1367
  br i1 %1374, label %1416, label %1368, !llvm.loop !185

1375:                                             ; preds = %1368
  %1376 = getelementptr inbounds %struct.token_pos, ptr %17, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8
  store ptr %826, ptr %17, align 8, !tbaa !106
  store ptr %1369, ptr %1376, align 8, !tbaa !108
  %1377 = getelementptr inbounds i8, ptr %1369, i64 1
  call fastcc void @report_event(ptr noundef %0, i32 noundef 1, ptr noundef %307, ptr noundef nonnull %1377, i32 noundef %3, ptr noundef nonnull %17, i32 noundef 1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8
  br label %1416

1378:                                             ; preds = %694
  %1379 = getelementptr inbounds i8, ptr %307, i64 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  store ptr %1379, ptr %7, align 8, !tbaa !106
  %1380 = icmp ult ptr %1379, %2
  br i1 %1380, label %1381, label %1414

1381:                                             ; preds = %1378
  %1382 = getelementptr inbounds %struct.token_pos, ptr %7, i64 0, i32 1
  %1383 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 24
  %1384 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 31
  %1385 = ptrtoint ptr %307 to i64
  br label %1386

1386:                                             ; preds = %1381, %1405
  %1387 = phi ptr [ %1379, %1381 ], [ %1406, %1405 ]
  %1388 = load i8, ptr %1387, align 1, !tbaa !68
  %1389 = icmp eq i8 %1388, 62
  br i1 %1389, label %1390, label %1412

1390:                                             ; preds = %1386
  store ptr %1387, ptr %1382, align 8, !tbaa !108
  %1391 = getelementptr inbounds i8, ptr %1387, i64 1
  %1392 = load i8, ptr %1383, align 4, !tbaa !120, !range !73, !noundef !74
  %1393 = icmp eq i8 %1392, 0
  br i1 %1393, label %1394, label %1397

1394:                                             ; preds = %1390
  %1395 = load i8, ptr %1384, align 1, !tbaa !186, !range !73, !noundef !74
  %1396 = icmp eq i8 %1395, 0
  br i1 %1396, label %1411, label %1397

1397:                                             ; preds = %1394, %1390
  %1398 = ptrtoint ptr %1391 to i64
  %1399 = sub i64 %1398, %1385
  %1400 = icmp slt i64 %1399, 4
  br i1 %1400, label %1405, label %1401

1401:                                             ; preds = %1397
  %1402 = getelementptr inbounds i8, ptr %1387, i64 -1
  %1403 = load i8, ptr %1402, align 1, !tbaa !68
  %1404 = icmp eq i8 %1403, 63
  br i1 %1404, label %1408, label %1405

1405:                                             ; preds = %1397, %1401, %1412
  %1406 = phi ptr [ %1413, %1412 ], [ %1391, %1401 ], [ %1391, %1397 ]
  %1407 = icmp ult ptr %1406, %2
  br i1 %1407, label %1386, label %1414, !llvm.loop !187

1408:                                             ; preds = %1401
  %1409 = getelementptr inbounds %struct.token_pos, ptr %7, i64 0, i32 1
  %1410 = getelementptr inbounds i8, ptr %1387, i64 -1
  store ptr %1410, ptr %1409, align 8, !tbaa !108
  br label %1411

1411:                                             ; preds = %1394, %1408
  call fastcc void @report_event(ptr noundef %0, i32 noundef 5, ptr noundef %307, ptr noundef nonnull %1391, i32 noundef %3, ptr noundef nonnull %7, i32 noundef 1, ptr noundef %4)
  br label %1414

1412:                                             ; preds = %1386
  %1413 = getelementptr inbounds i8, ptr %1387, i64 1
  br label %1405

1414:                                             ; preds = %1405, %1378, %1411
  %1415 = phi ptr [ %1391, %1411 ], [ %307, %1378 ], [ %307, %1405 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  br label %1416

1416:                                             ; preds = %1372, %1362, %1352, %991, %818, %1375, %1356, %1131, %1128, %824, %821, %785, %694, %1414, %692
  %1417 = phi ptr [ %693, %692 ], [ %1415, %1414 ], [ null, %694 ], [ null, %824 ], [ %786, %785 ], [ %823, %821 ], [ %1377, %1375 ], [ %1129, %1128 ], [ %1133, %1131 ], [ null, %1356 ], [ %307, %818 ], [ %994, %991 ], [ %1355, %1352 ], [ %307, %1362 ], [ %307, %1372 ]
  %1418 = icmp eq ptr %1417, null
  br i1 %1418, label %1421, label %1419

1419:                                             ; preds = %1416
  %1420 = icmp eq ptr %1417, %307
  br i1 %1420, label %1426, label %1421

1421:                                             ; preds = %1419, %1416
  %1422 = phi ptr [ %307, %1416 ], [ %1417, %1419 ]
  %1423 = phi ptr [ %313, %1416 ], [ %1417, %1419 ]
  %1424 = load i8, ptr %24, align 2, !tbaa !80, !range !73, !noundef !74
  %1425 = icmp eq i8 %1424, 0
  br i1 %1425, label %134, label %1426

1426:                                             ; preds = %1419, %1421, %306, %131, %192, %5, %301, %305
  %1427 = phi ptr [ %303, %305 ], [ %303, %301 ], [ %1, %5 ], [ %193, %192 ], [ %248, %306 ], [ %1423, %1421 ], [ %307, %1419 ], [ %133, %131 ]
  ret ptr %1427
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @flush_pending_text(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 25
  %4 = load i8, ptr %3, align 1, !tbaa !123, !range !73, !noundef !74
  %5 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %8 = load i8, ptr %7, align 8, !tbaa !115, !range !73, !noundef !74
  %9 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !113
  %11 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !114
  store i8 0, ptr %3, align 1, !tbaa !123
  store ptr null, ptr %5, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 13
  %16 = load i8, ptr %15, align 8, !tbaa !124, !range !73, !noundef !74
  store i8 %16, ptr %7, align 8, !tbaa !115
  %17 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 14
  %18 = load i64, ptr %17, align 8, !tbaa !125
  store i64 %18, ptr %9, align 8, !tbaa !113
  %19 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 15
  %20 = load i64, ptr %19, align 8, !tbaa !126
  store i64 %20, ptr %11, align 8, !tbaa !95
  %21 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 16
  %22 = load i64, ptr %21, align 8, !tbaa !127
  store i64 %22, ptr %13, align 8, !tbaa !114
  %23 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = load ptr, ptr %6, align 8, !tbaa !77
  %26 = getelementptr inbounds %struct.xpv, ptr %25, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !78
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !69
  %31 = and i32 %30, 536870912
  tail call fastcc void @report_event(ptr noundef %0, i32 noundef 4, ptr noundef %24, ptr noundef %28, i32 noundef %31, ptr noundef null, i32 noundef 0, ptr noundef %1)
  %32 = load i32, ptr %29, align 4, !tbaa !69
  %33 = and i32 %32, 1610547455
  store i32 %33, ptr %29, align 4, !tbaa !69
  %34 = and i32 %32, 33554432
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %2
  %37 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %6) #8
  br label %38

38:                                               ; preds = %36, %2
  store i8 %4, ptr %3, align 1, !tbaa !123
  store ptr %6, ptr %5, align 8, !tbaa !48
  store i8 %8, ptr %7, align 8, !tbaa !115
  store i64 %10, ptr %9, align 8, !tbaa !113
  store i64 %12, ptr %11, align 8, !tbaa !95
  store i64 %14, ptr %13, align 8, !tbaa !114
  ret void
}

declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i1 @probably_utf8_chunk(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  br label %4

4:                                                ; preds = %7, %2
  %5 = phi ptr [ %3, %2 ], [ %8, %7 ]
  %6 = icmp ugt ptr %5, %0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %5, i64 -1
  %9 = load i8, ptr %8, align 1, !tbaa !68
  %10 = and i8 %9, -64
  %11 = icmp eq i8 %10, -128
  br i1 %11, label %4, label %12, !llvm.loop !188

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
  %23 = load i8, ptr %16, align 1, !tbaa !68
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !68
  %27 = zext i8 %26 to i64
  %28 = icmp eq i64 %20, %27
  %29 = select i1 %28, ptr %3, ptr %16
  br label %30

30:                                               ; preds = %22, %15
  %31 = phi ptr [ %16, %15 ], [ %29, %22 ]
  br label %32

32:                                               ; preds = %35, %30
  %33 = phi ptr [ %0, %30 ], [ %36, %35 ]
  %34 = icmp ult ptr %33, %31
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  %37 = load i8, ptr %33, align 1, !tbaa !68
  %38 = icmp sgt i8 %37, -1
  br i1 %38, label %32, label %39

39:                                               ; preds = %35
  %40 = ptrtoint ptr %31 to i64
  %41 = sub i64 %40, %18
  %42 = tail call zeroext i1 @Perl_is_utf8_string(ptr noundef %0, i64 noundef %41) #8
  br label %43

43:                                               ; preds = %32, %39
  %44 = phi i1 [ %42, %39 ], [ false, %32 ]
  ret i1 %44
}

declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

declare i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_chop(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @Perl_utf8_distance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @sv_lower(ptr noundef returned %0) unnamed_addr #0 !prof !34 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !69
  %5 = and i32 %4, 430018304
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !78
  store i64 %10, ptr %2, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  br label %15

13:                                               ; preds = %1
  %14 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2) #8
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %12, %7 ], [ %14, %13 ]
  %17 = load i64, ptr %2, align 8, !tbaa !81
  %18 = add i64 %17, -1
  store i64 %18, ptr %2, align 8, !tbaa !81
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15, %20
  %21 = phi ptr [ %30, %20 ], [ %16, %15 ]
  %22 = load i8, ptr %21, align 1, !tbaa !68
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !65
  %26 = and i32 %25, 16400
  %27 = icmp eq i32 %26, 16400
  %28 = add i8 %22, 32
  %29 = select i1 %27, i8 %28, i8 %22
  store i8 %29, ptr %21, align 1, !tbaa !68
  %30 = getelementptr inbounds i8, ptr %21, i64 1
  %31 = load i64, ptr %2, align 8, !tbaa !81
  %32 = add i64 %31, -1
  store i64 %32, ptr %2, align 8, !tbaa !81
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %34, label %20, !llvm.loop !189

34:                                               ; preds = %20, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret ptr %0
}

declare i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_insert_flags(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_utf8_decode(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @decode_entities(ptr noundef returned %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 !prof !34 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [13 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %9 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !69
  %11 = and i32 %10, 430018304
  %12 = icmp eq i32 %11, 1024
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 8, !tbaa !77
  %15 = getelementptr inbounds %struct.xpv, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !78
  store i64 %16, ptr %4, align 8, !tbaa !81
  %17 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  br label %21

19:                                               ; preds = %3
  %20 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 2) #8
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi ptr [ %18, %13 ], [ %20, %19 ]
  %23 = load i64, ptr %4, align 8, !tbaa !81
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %6) #8
  br label %25

25:                                               ; preds = %362, %21
  %26 = phi ptr [ %363, %362 ], [ %22, %21 ]
  %27 = phi ptr [ %364, %362 ], [ %22, %21 ]
  %28 = phi ptr [ %365, %362 ], [ %24, %21 ]
  %29 = phi i32 [ %366, %362 ], [ 0, %21 ]
  %30 = phi i32 [ %242, %362 ], [ 0, %21 ]
  br label %31

31:                                               ; preds = %25, %35
  %32 = phi ptr [ %36, %35 ], [ %26, %25 ]
  %33 = phi ptr [ %38, %35 ], [ %27, %25 ]
  %34 = icmp ult ptr %32, %28
  br i1 %34, label %35, label %367

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %32, i64 1
  %37 = load i8, ptr %32, align 1, !tbaa !68
  %38 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %37, ptr %33, align 1, !tbaa !68
  %39 = icmp eq i8 %37, 38
  br i1 %39, label %40, label %31, !llvm.loop !190

40:                                               ; preds = %35
  %41 = icmp ult ptr %36, %28
  br i1 %41, label %42, label %154

42:                                               ; preds = %40
  %43 = load i8, ptr %36, align 1, !tbaa !68
  %44 = icmp eq i8 %43, 35
  br i1 %44, label %45, label %154

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, ptr %32, i64 2
  %47 = icmp ult ptr %46, %28
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  %49 = load i8, ptr %46, align 1, !tbaa !68
  switch i8 %49, label %76 [
    i8 120, label %50
    i8 88, label %50
  ]

50:                                               ; preds = %48, %48
  br label %51

51:                                               ; preds = %50, %71
  %52 = phi i64 [ %72, %71 ], [ 3, %50 ]
  %53 = phi i32 [ %73, %71 ], [ 0, %50 ]
  %54 = phi i64 [ %74, %71 ], [ 0, %50 ]
  %55 = getelementptr inbounds i8, ptr %32, i64 %52
  %56 = icmp ult ptr %55, %28
  br i1 %56, label %57, label %107

57:                                               ; preds = %51
  %58 = load i8, ptr %55, align 1, !tbaa !68
  %59 = sext i8 %58 to i32
  %60 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) @PL_hexdigit, i32 noundef %59) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = shl i64 %54, 4
  %64 = ptrtoint ptr %60 to i64
  %65 = sub i64 %64, ptrtoint (ptr @PL_hexdigit to i64)
  %66 = and i64 %65, 15
  %67 = or disjoint i64 %66, %63
  %68 = icmp ugt i64 %67, 1114111
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = add nsw i64 %52, 1
  br label %71

71:                                               ; preds = %62, %57, %69
  %72 = phi i64 [ %52, %57 ], [ %52, %62 ], [ %70, %69 ]
  %73 = phi i32 [ %53, %57 ], [ 0, %62 ], [ 1, %69 ]
  %74 = phi i64 [ %54, %57 ], [ %67, %62 ], [ %67, %69 ]
  %75 = phi i1 [ false, %57 ], [ false, %62 ], [ true, %69 ]
  br i1 %75, label %51, label %107

76:                                               ; preds = %48, %45
  %77 = icmp ult ptr %46, %28
  br i1 %77, label %78, label %107

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %32, i64 2
  %80 = load i8, ptr %79, align 1, !tbaa !68
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !65
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %107, label %94

86:                                               ; preds = %103
  %87 = getelementptr inbounds i8, ptr %32, i64 %104
  %88 = load i8, ptr %87, align 1, !tbaa !68
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !65
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %107, label %94, !llvm.loop !191

94:                                               ; preds = %78, %86
  %95 = phi i8 [ %88, %86 ], [ %80, %78 ]
  %96 = phi i64 [ %104, %86 ], [ 2, %78 ]
  %97 = phi i64 [ %101, %86 ], [ 0, %78 ]
  %98 = mul i64 %97, 10
  %99 = sext i8 %95 to i64
  %100 = add i64 %98, -48
  %101 = add nsw i64 %100, %99
  %102 = icmp ugt i64 %101, 1114111
  br i1 %102, label %107, label %103

103:                                              ; preds = %94
  %104 = add nuw nsw i64 %96, 1
  %105 = getelementptr inbounds i8, ptr %32, i64 %104
  %106 = icmp ult ptr %105, %28
  br i1 %106, label %86, label %107, !llvm.loop !191

107:                                              ; preds = %71, %51, %94, %86, %103, %78, %76
  %108 = phi i64 [ 2, %76 ], [ 2, %78 ], [ %104, %103 ], [ %104, %86 ], [ %96, %94 ], [ %52, %51 ], [ %72, %71 ]
  %109 = phi i32 [ 0, %76 ], [ 0, %78 ], [ 1, %103 ], [ 1, %86 ], [ 0, %94 ], [ %53, %51 ], [ %73, %71 ]
  %110 = phi i64 [ 0, %76 ], [ 0, %78 ], [ %101, %103 ], [ %101, %86 ], [ %101, %94 ], [ %54, %51 ], [ %74, %71 ]
  %111 = icmp ne i64 %110, 0
  %112 = icmp ne i32 %109, 0
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %114, label %238

114:                                              ; preds = %107
  %115 = load i32, ptr %9, align 4, !tbaa !69
  %116 = and i32 %115, 536870912
  %117 = icmp eq i32 %116, 0
  %118 = icmp ult i64 %110, 256
  %119 = and i1 %118, %117
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = trunc i64 %110 to i8
  store i8 %121, ptr %6, align 1, !tbaa !68
  store i64 1, ptr %5, align 8, !tbaa !81
  br label %238

122:                                              ; preds = %114
  %123 = and i64 %110, -2
  %124 = icmp eq i64 %123, 65534
  br i1 %124, label %238, label %125

125:                                              ; preds = %122
  %126 = trunc i64 %110 to i32
  %127 = and i32 %126, -1024
  switch i32 %127, label %137 [
    i32 56320, label %128
    i32 55296, label %146
  ]

128:                                              ; preds = %125
  %129 = icmp eq i32 %29, 0
  br i1 %129, label %146, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds i8, ptr %33, i64 -2
  %132 = shl i32 %29, 10
  %133 = add i32 %132, -56623104
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, 9216
  %136 = add i64 %135, %110
  br label %146

137:                                              ; preds = %125
  %138 = add i64 %110, -64976
  %139 = icmp ult i64 %138, 32
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = and i64 %110, 65534
  %142 = icmp eq i64 %141, 65534
  %143 = icmp ugt i64 %110, 1114111
  %144 = or i1 %143, %142
  br i1 %144, label %145, label %146

145:                                              ; preds = %137, %140
  br label %146

146:                                              ; preds = %125, %128, %140, %145, %130
  %147 = phi ptr [ %38, %145 ], [ %38, %140 ], [ %38, %128 ], [ %131, %130 ], [ %38, %125 ]
  %148 = phi i64 [ 65533, %145 ], [ %110, %140 ], [ 65533, %128 ], [ %136, %130 ], [ 65533, %125 ]
  %149 = phi i32 [ 0, %145 ], [ 0, %140 ], [ 0, %128 ], [ 0, %130 ], [ %126, %125 ]
  %150 = ptrtoint ptr %6 to i64
  %151 = call ptr @Perl_uvuni_to_utf8(ptr noundef nonnull %6, i64 noundef %148) #8
  %152 = ptrtoint ptr %151 to i64
  %153 = sub i64 %152, %150
  store i64 %153, ptr %5, align 8, !tbaa !81
  br label %238

154:                                              ; preds = %42, %40
  %155 = getelementptr inbounds i8, ptr %32, i64 1
  %156 = icmp ult ptr %155, %28
  br i1 %156, label %157, label %170

157:                                              ; preds = %154, %166
  %158 = phi i64 [ %167, %166 ], [ 1, %154 ]
  %159 = getelementptr inbounds i8, ptr %32, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !68
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !65
  %164 = and i32 %163, 16385
  %165 = icmp eq i32 %164, 16385
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = add nuw nsw i64 %158, 1
  %168 = getelementptr inbounds i8, ptr %32, i64 %167
  %169 = icmp ult ptr %168, %28
  br i1 %169, label %157, label %170, !llvm.loop !192

170:                                              ; preds = %157, %166, %154
  %171 = phi i64 [ 1, %154 ], [ %158, %157 ], [ %167, %166 ]
  %172 = icmp ne ptr %1, null
  %173 = getelementptr inbounds i8, ptr %32, i64 %171
  %174 = icmp ne i64 %171, 1
  %175 = and i1 %172, %174
  br i1 %175, label %176, label %238

176:                                              ; preds = %170
  %177 = trunc i64 %171 to i32
  %178 = add i32 %177, -1
  %179 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %1, ptr noundef nonnull %36, i32 noundef %178, i32 noundef 32, ptr noundef null, i32 noundef 0) #8
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load i8, ptr %173, align 1, !tbaa !68
  %183 = icmp eq i8 %182, 59
  br i1 %183, label %184, label %208

184:                                              ; preds = %181
  %185 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %1, ptr noundef nonnull %36, i32 noundef %177, i32 noundef 32, ptr noundef null, i32 noundef 0) #8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %208, label %187

187:                                              ; preds = %184, %176
  %188 = phi ptr [ %179, %176 ], [ %185, %184 ]
  %189 = load ptr, ptr %188, align 8, !tbaa !64
  %190 = getelementptr inbounds %struct.sv, ptr %189, i64 0, i32 2
  %191 = load i32, ptr %190, align 4, !tbaa !69
  %192 = and i32 %191, 2098176
  %193 = icmp eq i32 %192, 1024
  br i1 %193, label %194, label %200

194:                                              ; preds = %187
  %195 = load ptr, ptr %189, align 8, !tbaa !77
  %196 = getelementptr inbounds %struct.xpv, ptr %195, i64 0, i32 2
  %197 = load i64, ptr %196, align 8, !tbaa !78
  store i64 %197, ptr %5, align 8, !tbaa !81
  %198 = getelementptr inbounds %struct.sv, ptr %189, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !68
  br label %202

200:                                              ; preds = %187
  %201 = call ptr @Perl_sv_2pv_flags(ptr noundef %189, ptr noundef nonnull %5, i32 noundef 2) #8
  br label %202

202:                                              ; preds = %200, %194
  %203 = phi ptr [ %199, %194 ], [ %201, %200 ]
  %204 = load ptr, ptr %188, align 8, !tbaa !64
  %205 = getelementptr inbounds %struct.sv, ptr %204, i64 0, i32 2
  %206 = load i32, ptr %205, align 4, !tbaa !69
  %207 = and i32 %206, 536870912
  br label %238

208:                                              ; preds = %184, %181
  br i1 %2, label %209, label %238

209:                                              ; preds = %208, %212
  %210 = phi i64 [ %213, %212 ], [ %171, %208 ]
  %211 = icmp sgt i64 %210, 2
  br i1 %211, label %212, label %238

212:                                              ; preds = %209
  %213 = add nsw i64 %210, -1
  %214 = trunc i64 %210 to i32
  %215 = add i32 %214, -2
  %216 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %1, ptr noundef nonnull %36, i32 noundef %215, i32 noundef 32, ptr noundef null, i32 noundef 0) #8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %209, label %218, !llvm.loop !193

218:                                              ; preds = %212
  %219 = load ptr, ptr %216, align 8, !tbaa !64
  %220 = getelementptr inbounds %struct.sv, ptr %219, i64 0, i32 2
  %221 = load i32, ptr %220, align 4, !tbaa !69
  %222 = and i32 %221, 2098176
  %223 = icmp eq i32 %222, 1024
  br i1 %223, label %224, label %230

224:                                              ; preds = %218
  %225 = load ptr, ptr %219, align 8, !tbaa !77
  %226 = getelementptr inbounds %struct.xpv, ptr %225, i64 0, i32 2
  %227 = load i64, ptr %226, align 8, !tbaa !78
  store i64 %227, ptr %5, align 8, !tbaa !81
  %228 = getelementptr inbounds %struct.sv, ptr %219, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !68
  br label %232

230:                                              ; preds = %218
  %231 = call ptr @Perl_sv_2pv_flags(ptr noundef %219, ptr noundef nonnull %5, i32 noundef 2) #8
  br label %232

232:                                              ; preds = %230, %224
  %233 = phi ptr [ %229, %224 ], [ %231, %230 ]
  %234 = load ptr, ptr %216, align 8, !tbaa !64
  %235 = getelementptr inbounds %struct.sv, ptr %234, i64 0, i32 2
  %236 = load i32, ptr %235, align 4, !tbaa !69
  %237 = and i32 %236, 536870912
  br label %238

238:                                              ; preds = %209, %170, %232, %208, %202, %107, %146, %122, %120
  %239 = phi i64 [ %108, %120 ], [ %108, %122 ], [ %108, %146 ], [ %108, %107 ], [ %213, %232 ], [ %171, %208 ], [ %171, %202 ], [ %171, %170 ], [ %171, %209 ]
  %240 = phi ptr [ %38, %120 ], [ %38, %122 ], [ %147, %146 ], [ %38, %107 ], [ %38, %232 ], [ %38, %208 ], [ %38, %202 ], [ %38, %170 ], [ %38, %209 ]
  %241 = phi i32 [ %29, %120 ], [ %29, %122 ], [ %149, %146 ], [ %29, %107 ], [ 0, %232 ], [ 0, %208 ], [ 0, %202 ], [ 0, %170 ], [ 0, %209 ]
  %242 = phi i32 [ 0, %120 ], [ %30, %122 ], [ 1, %146 ], [ %30, %107 ], [ %237, %232 ], [ %30, %208 ], [ %207, %202 ], [ %30, %170 ], [ %30, %209 ]
  %243 = phi ptr [ %6, %120 ], [ null, %122 ], [ %6, %146 ], [ null, %107 ], [ %233, %232 ], [ null, %208 ], [ %203, %202 ], [ null, %170 ], [ null, %209 ]
  %244 = getelementptr inbounds i8, ptr %32, i64 %239
  %245 = icmp eq ptr %243, null
  br i1 %245, label %246, label %248

246:                                              ; preds = %238
  %247 = icmp sgt i64 %239, 1
  br i1 %247, label %355, label %362

248:                                              ; preds = %238
  %249 = icmp ult ptr %244, %28
  br i1 %249, label %250, label %255

250:                                              ; preds = %248
  %251 = load i8, ptr %244, align 1, !tbaa !68
  %252 = icmp eq i8 %251, 59
  %253 = zext i1 %252 to i64
  %254 = getelementptr inbounds i8, ptr %244, i64 %253
  br label %255

255:                                              ; preds = %250, %248
  %256 = phi ptr [ %244, %248 ], [ %254, %250 ]
  %257 = getelementptr inbounds i8, ptr %240, i64 -1
  %258 = load i8, ptr %256, align 1, !tbaa !68
  %259 = icmp eq i8 %258, 38
  %260 = select i1 %259, i32 %241, i32 0
  %261 = load i32, ptr %9, align 4, !tbaa !69
  %262 = and i32 %261, 536870912
  %263 = icmp eq i32 %262, 0
  %264 = icmp ne i32 %242, 0
  %265 = select i1 %263, i1 %264, i1 false
  br i1 %265, label %266, label %286

266:                                              ; preds = %255
  %267 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %268 = load ptr, ptr %267, align 8, !tbaa !68
  %269 = ptrtoint ptr %257 to i64
  %270 = ptrtoint ptr %268 to i64
  %271 = sub i64 %269, %270
  store i64 %271, ptr %7, align 8, !tbaa !81
  %272 = call ptr @Perl_bytes_to_utf8(ptr noundef %268, ptr noundef nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  %273 = ptrtoint ptr %28 to i64
  %274 = ptrtoint ptr %256 to i64
  %275 = sub i64 %273, %274
  store i64 %275, ptr %8, align 8, !tbaa !81
  %276 = call ptr @Perl_bytes_to_utf8(ptr noundef nonnull %256, ptr noundef nonnull %8) #8
  %277 = load i64, ptr %7, align 8, !tbaa !81
  call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef %272, i64 noundef %277) #8
  %278 = load i64, ptr %8, align 8, !tbaa !81
  call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef %276, i64 noundef %278, i32 noundef 2) #8
  %279 = load i32, ptr %9, align 4, !tbaa !69
  %280 = or i32 %279, 536870912
  store i32 %280, ptr %9, align 4, !tbaa !69
  call void @Perl_safesysfree(ptr noundef %272) #8
  call void @Perl_safesysfree(ptr noundef %276) #8
  %281 = load ptr, ptr %267, align 8, !tbaa !68
  %282 = load i64, ptr %7, align 8, !tbaa !81
  %283 = getelementptr inbounds i8, ptr %281, i64 %282
  %284 = load i64, ptr %8, align 8, !tbaa !81
  %285 = getelementptr inbounds i8, ptr %283, i64 %284
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br label %290

286:                                              ; preds = %255
  %287 = select i1 %263, i1 true, i1 %264
  br i1 %287, label %290, label %288

288:                                              ; preds = %286
  %289 = call ptr @Perl_bytes_to_utf8(ptr noundef nonnull %243, ptr noundef nonnull %5) #8
  br label %290

290:                                              ; preds = %286, %288, %266
  %291 = phi ptr [ %283, %266 ], [ %256, %286 ], [ %256, %288 ]
  %292 = phi ptr [ %283, %266 ], [ %257, %286 ], [ %257, %288 ]
  %293 = phi ptr [ %285, %266 ], [ %28, %286 ], [ %28, %288 ]
  %294 = phi ptr [ null, %266 ], [ null, %286 ], [ %289, %288 ]
  %295 = phi ptr [ %243, %266 ], [ %243, %286 ], [ %289, %288 ]
  %296 = load i64, ptr %5, align 8, !tbaa !81
  %297 = getelementptr inbounds i8, ptr %292, i64 %296
  %298 = icmp ugt ptr %297, %291
  br i1 %298, label %299, label %335

299:                                              ; preds = %290
  %300 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %301 = ptrtoint ptr %291 to i64
  %302 = ptrtoint ptr %292 to i64
  %303 = sub i64 %302, %301
  %304 = add i64 %296, %303
  %305 = load ptr, ptr %300, align 8, !tbaa !68
  %306 = ptrtoint ptr %305 to i64
  %307 = ptrtoint ptr %293 to i64
  %308 = sub i64 %307, %306
  %309 = load i32, ptr %9, align 4, !tbaa !69
  %310 = and i32 %309, 268435456
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %319

312:                                              ; preds = %299
  %313 = load ptr, ptr %0, align 8, !tbaa !77
  %314 = getelementptr inbounds %struct.xpv, ptr %313, i64 0, i32 3
  %315 = load i64, ptr %314, align 8, !tbaa !68
  %316 = add i64 %304, 1
  %317 = add i64 %316, %308
  %318 = icmp ult i64 %315, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %312, %299
  %320 = add i64 %304, 1
  %321 = add i64 %320, %308
  %322 = call ptr @Perl_sv_grow(ptr noundef %0, i64 noundef %321) #8
  br label %323

323:                                              ; preds = %312, %319
  %324 = sub i64 %301, %306
  %325 = sub i64 %302, %306
  %326 = load ptr, ptr %300, align 8, !tbaa !68
  %327 = getelementptr inbounds i8, ptr %326, i64 %325
  %328 = getelementptr inbounds i8, ptr %326, i64 %324
  %329 = getelementptr inbounds i8, ptr %326, i64 %308
  %330 = getelementptr inbounds i8, ptr %328, i64 %304
  %331 = ptrtoint ptr %329 to i64
  %332 = ptrtoint ptr %328 to i64
  %333 = sub i64 %331, %332
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %330, ptr align 1 %328, i64 %333, i1 false)
  %334 = getelementptr inbounds i8, ptr %329, i64 %304
  br label %335

335:                                              ; preds = %323, %290
  %336 = phi ptr [ %330, %323 ], [ %291, %290 ]
  %337 = phi ptr [ %327, %323 ], [ %292, %290 ]
  %338 = phi ptr [ %334, %323 ], [ %293, %290 ]
  %339 = load i64, ptr %5, align 8, !tbaa !81
  %340 = add i64 %339, -1
  store i64 %340, ptr %5, align 8, !tbaa !81
  %341 = icmp eq i64 %339, 0
  br i1 %341, label %351, label %342

342:                                              ; preds = %335, %342
  %343 = phi ptr [ %345, %342 ], [ %295, %335 ]
  %344 = phi ptr [ %347, %342 ], [ %337, %335 ]
  %345 = getelementptr inbounds i8, ptr %343, i64 1
  %346 = load i8, ptr %343, align 1, !tbaa !68
  %347 = getelementptr inbounds i8, ptr %344, i64 1
  store i8 %346, ptr %344, align 1, !tbaa !68
  %348 = load i64, ptr %5, align 8, !tbaa !81
  %349 = add i64 %348, -1
  store i64 %349, ptr %5, align 8, !tbaa !81
  %350 = icmp eq i64 %348, 0
  br i1 %350, label %351, label %342, !llvm.loop !194

351:                                              ; preds = %342, %335
  %352 = phi ptr [ %337, %335 ], [ %347, %342 ]
  %353 = icmp eq ptr %294, null
  br i1 %353, label %362, label %354

354:                                              ; preds = %351
  call void @Perl_safesysfree(ptr noundef nonnull %294) #8
  br label %362

355:                                              ; preds = %246, %355
  %356 = phi ptr [ %358, %355 ], [ %36, %246 ]
  %357 = phi ptr [ %360, %355 ], [ %240, %246 ]
  %358 = getelementptr inbounds i8, ptr %356, i64 1
  %359 = load i8, ptr %356, align 1, !tbaa !68
  %360 = getelementptr inbounds i8, ptr %357, i64 1
  store i8 %359, ptr %357, align 1, !tbaa !68
  %361 = icmp ult ptr %358, %244
  br i1 %361, label %355, label %362, !llvm.loop !195

362:                                              ; preds = %355, %246, %351, %354
  %363 = phi ptr [ %336, %351 ], [ %336, %354 ], [ %244, %246 ], [ %244, %355 ]
  %364 = phi ptr [ %352, %351 ], [ %352, %354 ], [ %240, %246 ], [ %360, %355 ]
  %365 = phi ptr [ %338, %351 ], [ %338, %354 ], [ %28, %246 ], [ %28, %355 ]
  %366 = phi i32 [ %260, %351 ], [ %260, %354 ], [ %241, %246 ], [ %241, %355 ]
  br label %25, !llvm.loop !190

367:                                              ; preds = %31
  store i8 0, ptr %33, align 1, !tbaa !68
  %368 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %369 = load ptr, ptr %368, align 8, !tbaa !68
  %370 = ptrtoint ptr %33 to i64
  %371 = ptrtoint ptr %369 to i64
  %372 = sub i64 %370, %371
  %373 = load ptr, ptr %0, align 8, !tbaa !77
  %374 = getelementptr inbounds %struct.xpv, ptr %373, i64 0, i32 2
  store i64 %372, ptr %374, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret ptr %0
}

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @Perl_call_method(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_free_tmps() local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_uvuni_to_utf8(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

declare ptr @Perl_av_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @marked_section_update(ptr nocapture noundef %0) unnamed_addr #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 18
  store i32 0, ptr %5, align 8, !tbaa !119
  %6 = icmp eq ptr %4, null
  br i1 %6, label %72, label %7

7:                                                ; preds = %1
  %8 = tail call i64 @Perl_av_len(ptr noundef nonnull %4) #8
  %9 = and i64 %8, 2147483648
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %72

11:                                               ; preds = %7
  %12 = add nuw nsw i64 %8, 1
  %13 = and i64 %12, 4294967295
  br label %14

14:                                               ; preds = %11, %69
  %15 = phi i64 [ 0, %11 ], [ %70, %69 ]
  %16 = call ptr @Perl_av_fetch(ptr noundef nonnull %4, i64 noundef %15, i32 noundef 0) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %69, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = call i64 @Perl_av_len(ptr noundef %21) #8
  %23 = and i64 %22, 2147483648
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %69

25:                                               ; preds = %18
  %26 = add nuw nsw i64 %22, 1
  %27 = and i64 %26, 4294967295
  br label %28

28:                                               ; preds = %25, %66
  %29 = phi i64 [ 0, %25 ], [ %67, %66 ]
  %30 = call ptr @Perl_av_fetch(ptr noundef %21, i64 noundef %29, i32 noundef 0) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %33 = load ptr, ptr %30, align 8, !tbaa !64
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !69
  %36 = and i32 %35, 2098176
  %37 = icmp eq i32 %36, 1024
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !77
  %40 = getelementptr inbounds %struct.xpv, ptr %39, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !78
  store i64 %41, ptr %2, align 8, !tbaa !81
  %42 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !68
  br label %46

44:                                               ; preds = %32
  %45 = call ptr @Perl_sv_2pv_flags(ptr noundef %33, ptr noundef nonnull %2, i32 noundef 2) #8
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi ptr [ %43, %38 ], [ %45, %44 ]
  %48 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(8) @.str.83) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(7) @.str.84) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(6) @.str.85) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(7) @.str.86) #9
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 4, i32 0
  br label %60

60:                                               ; preds = %56, %53, %50, %46
  %61 = phi i32 [ 1, %46 ], [ 2, %50 ], [ 3, %53 ], [ %59, %56 ]
  %62 = load i32, ptr %5, align 8, !tbaa !119
  %63 = icmp ult i32 %62, %61
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 %61, ptr %5, align 8, !tbaa !119
  br label %65

65:                                               ; preds = %64, %60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %66

66:                                               ; preds = %65, %28
  %67 = add nuw nsw i64 %29, 1
  %68 = icmp eq i64 %67, %27
  br i1 %68, label %69, label %28, !llvm.loop !196

69:                                               ; preds = %66, %18, %14
  %70 = add nuw nsw i64 %15, 1
  %71 = icmp eq i64 %70, %13
  br i1 %71, label %72, label %14, !llvm.loop !197

72:                                               ; preds = %69, %7, %1
  %73 = load i32, ptr %5, align 8, !tbaa !119
  %74 = icmp eq i32 %73, 3
  %75 = getelementptr inbounds %struct.p_state, ptr %0, i64 0, i32 9
  %76 = zext i1 %74 to i8
  store i8 %76, ptr %75, align 8, !tbaa !115
  ret void
}

declare i64 @Perl_av_len(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @tokens_grow(ptr nocapture noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) unnamed_addr #0 !prof !34 {
  %4 = load i32, ptr %1, align 4, !tbaa !65
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 4)
  %6 = shl nuw nsw i32 %5, 1
  br i1 %2, label %7, label %12

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !64
  %9 = zext nneg i32 %6 to i64
  %10 = shl nuw nsw i64 %9, 4
  %11 = tail call ptr @Perl_safesysrealloc(ptr noundef %8, i64 noundef %10) #8
  br label %27

12:                                               ; preds = %3
  %13 = zext nneg i32 %6 to i64
  %14 = shl nuw nsw i64 %13, 4
  %15 = tail call ptr @Perl_safesysmalloc(i64 noundef %14) #8
  %16 = load i32, ptr %1, align 4, !tbaa !65
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12, %18
  %19 = phi i64 [ %23, %18 ], [ 0, %12 ]
  %20 = getelementptr inbounds %struct.token_pos, ptr %15, i64 %19
  %21 = load ptr, ptr %0, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.token_pos, ptr %21, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !198
  %23 = add nuw nsw i64 %19, 1
  %24 = load i32, ptr %1, align 4, !tbaa !65
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %18, label %27, !llvm.loop !199

27:                                               ; preds = %18, %12, %7
  %28 = phi ptr [ %11, %7 ], [ %15, %12 ], [ %15, %18 ]
  store ptr %28, ptr %0, align 8, !tbaa !64
  store i32 %6, ptr %1, align 4, !tbaa !65
  ret void
}

declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @strnEQx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) unnamed_addr #5 !prof !34 {
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
  %13 = load i8, ptr %11, align 1, !tbaa !68
  br i1 %7, label %35, label %14

14:                                               ; preds = %8
  %15 = zext i8 %13 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !65
  %18 = and i32 %17, 16400
  %19 = icmp eq i32 %18, 16400
  %20 = add i8 %13, 32
  %21 = zext i8 %20 to i32
  %22 = sext i8 %13 to i32
  %23 = select i1 %19, i32 %21, i32 %22
  %24 = load i8, ptr %10, align 1, !tbaa !68
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !65
  %28 = and i32 %27, 16400
  %29 = icmp eq i32 %28, 16400
  %30 = add i8 %24, 32
  %31 = zext i8 %30 to i32
  %32 = sext i8 %24 to i32
  %33 = select i1 %29, i32 %31, i32 %32
  %34 = icmp eq i32 %23, %33
  br i1 %34, label %38, label %42

35:                                               ; preds = %8
  %36 = load i8, ptr %10, align 1, !tbaa !68
  %37 = icmp eq i8 %13, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %14
  %39 = getelementptr inbounds i8, ptr %11, i64 1
  %40 = getelementptr inbounds i8, ptr %10, i64 1
  %41 = icmp eq i64 %12, 0
  br i1 %41, label %42, label %8, !llvm.loop !200

42:                                               ; preds = %14, %38, %35, %4
  %43 = phi i32 [ 1, %4 ], [ 0, %14 ], [ 1, %38 ], [ 0, %35 ]
  ret i32 %43
}

declare zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_block_gimme() local_unnamed_addr #2

declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 40}
!36 = !{!"magic", !37, i64 0, !37, i64 8, !40, i64 16, !38, i64 18, !38, i64 19, !41, i64 24, !37, i64 32, !37, i64 40}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"long", !38, i64 0}
!42 = !{!43, !37, i64 8}
!43 = !{!"p_state", !44, i64 0, !37, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !45, i64 40, !45, i64 41, !45, i64 42, !37, i64 48, !45, i64 56, !45, i64 57, !37, i64 64, !37, i64 72, !45, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !37, i64 112, !44, i64 120, !37, i64 128, !45, i64 136, !45, i64 137, !45, i64 138, !45, i64 139, !45, i64 140, !45, i64 141, !45, i64 142, !45, i64 143, !45, i64 144, !45, i64 145, !45, i64 146, !45, i64 147, !45, i64 148, !37, i64 152, !38, i64 160, !44, i64 304, !37, i64 312, !37, i64 320, !37, i64 328, !37, i64 336, !44, i64 344, !37, i64 352, !37, i64 360}
!44 = !{!"int", !38, i64 0}
!45 = !{!"_Bool", !38, i64 0}
!46 = !{!47, !44, i64 8}
!47 = !{!"sv", !37, i64 0, !44, i64 8, !44, i64 12, !38, i64 16}
!48 = !{!43, !37, i64 72}
!49 = !{!43, !37, i64 112}
!50 = !{!43, !37, i64 128}
!51 = !{!43, !37, i64 152}
!52 = !{!53, !37, i64 0}
!53 = !{!"p_handler", !37, i64 0, !37, i64 8}
!54 = !{!53, !37, i64 8}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!43, !37, i64 312}
!59 = !{!43, !37, i64 320}
!60 = !{!43, !37, i64 328}
!61 = !{!43, !37, i64 336}
!62 = !{!43, !37, i64 360}
!63 = !{!43, !44, i64 0}
!64 = !{!37, !37, i64 0}
!65 = !{!44, !44, i64 0}
!66 = !{!67, !37, i64 0}
!67 = !{!"cv", !37, i64 0, !44, i64 8, !44, i64 12, !38, i64 16}
!68 = !{!38, !38, i64 0}
!69 = !{!47, !44, i64 12}
!70 = !{!43, !37, i64 352}
!71 = !{!36, !37, i64 8}
!72 = !{!43, !45, i64 41}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{!76, !37, i64 0}
!76 = !{!"gp", !37, i64 0, !37, i64 8, !37, i64 16, !44, i64 24, !44, i64 28, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !44, i64 64, !44, i64 67, !37, i64 72}
!77 = !{!47, !37, i64 0}
!78 = !{!79, !41, i64 16}
!79 = !{!"xpv", !37, i64 0, !38, i64 8, !41, i64 16, !38, i64 24}
!80 = !{!43, !45, i64 42}
!81 = !{!41, !41, i64 0}
!82 = distinct !{!82, !56, !57}
!83 = !{!45, !45, i64 0}
!84 = !{!85, !38, i64 34}
!85 = !{!"op", !37, i64 0, !37, i64 8, !37, i64 16, !41, i64 24, !44, i64 32, !44, i64 33, !44, i64 33, !44, i64 33, !44, i64 33, !44, i64 33, !44, i64 33, !44, i64 33, !38, i64 34, !38, i64 35}
!86 = distinct !{!86, !56, !57}
!87 = distinct !{!87, !56, !57}
!88 = distinct !{!88, !56, !57}
!89 = distinct !{!89, !56, !57}
!90 = distinct !{!90, !56, !57}
!91 = distinct !{!91, !56, !57}
!92 = distinct !{!92, !56, !57}
!93 = distinct !{!93, !56, !57}
!94 = distinct !{!94, !56, !57}
!95 = !{!43, !41, i64 24}
!96 = !{!43, !44, i64 304}
!97 = distinct !{!97, !56, !57}
!98 = distinct !{!98, !56, !57}
!99 = distinct !{!99, !56, !57}
!100 = distinct !{!100, !56, !57}
!101 = distinct !{!101, !56, !57}
!102 = !{!85, !38, i64 35}
!103 = !{!85, !41, i64 24}
!104 = !{!43, !45, i64 40}
!105 = !{!43, !37, i64 48}
!106 = !{!107, !37, i64 0}
!107 = !{!"token_pos", !37, i64 0, !37, i64 8}
!108 = !{!107, !37, i64 8}
!109 = !{!43, !37, i64 64}
!110 = distinct !{!110, !56, !57}
!111 = !{!43, !45, i64 137}
!112 = !{!43, !45, i64 57}
!113 = !{!43, !41, i64 16}
!114 = !{!43, !41, i64 32}
!115 = !{!43, !45, i64 56}
!116 = !{!43, !45, i64 145}
!117 = !{!43, !45, i64 142}
!118 = distinct !{!118, !56, !57}
!119 = !{!43, !44, i64 120}
!120 = !{!43, !45, i64 140}
!121 = !{!43, !45, i64 143}
!122 = !{!43, !44, i64 344}
!123 = !{!43, !45, i64 141}
!124 = !{!43, !45, i64 80}
!125 = !{!43, !41, i64 88}
!126 = !{!43, !41, i64 96}
!127 = !{!43, !41, i64 104}
!128 = distinct !{!128, !56, !57}
!129 = distinct !{!129, !56, !57}
!130 = !{!43, !45, i64 148}
!131 = distinct !{!131, !56, !57}
!132 = distinct !{!132, !56, !57}
!133 = distinct !{!133, !56, !57}
!134 = distinct !{!134, !56, !57}
!135 = distinct !{!135, !56, !57}
!136 = !{!43, !45, i64 144}
!137 = distinct !{!137, !56, !57}
!138 = distinct !{!138, !56, !57}
!139 = distinct !{!139, !56, !57}
!140 = distinct !{!140, !56, !57}
!141 = distinct !{!141, !56, !57}
!142 = distinct !{!142, !56, !57}
!143 = distinct !{!143, !56, !57}
!144 = distinct !{!144, !56, !57}
!145 = !{!43, !45, i64 138}
!146 = !{!43, !45, i64 146}
!147 = distinct !{!147, !56, !57}
!148 = distinct !{!148, !56, !57}
!149 = distinct !{!149, !56, !57}
!150 = distinct !{!150, !56, !57}
!151 = distinct !{!151, !56, !57}
!152 = distinct !{!152, !56, !57}
!153 = distinct !{!153, !56, !57}
!154 = distinct !{!154, !56, !57}
!155 = distinct !{!155, !56, !57}
!156 = !{!157, !37, i64 8}
!157 = !{!"literal_tag", !44, i64 0, !37, i64 8, !44, i64 16}
!158 = distinct !{!158, !56, !57}
!159 = !{!157, !44, i64 0}
!160 = distinct !{!160, !56, !57}
!161 = distinct !{!161, !56, !57}
!162 = !{!43, !45, i64 139}
!163 = distinct !{!163, !56, !57}
!164 = distinct !{!164, !56, !57}
!165 = distinct !{!165, !56, !57}
!166 = distinct !{!166, !57}
!167 = distinct !{!167, !56, !57}
!168 = distinct !{!168, !56, !57}
!169 = distinct !{!169, !56, !57}
!170 = !{!43, !45, i64 136}
!171 = distinct !{!171, !56, !57}
!172 = distinct !{!172, !56, !57}
!173 = distinct !{!173, !56, !57}
!174 = distinct !{!174, !56, !57}
!175 = distinct !{!175, !56, !57}
!176 = distinct !{!176, !57}
!177 = distinct !{!177, !56, !57}
!178 = !{i32 0, i32 2}
!179 = distinct !{!179, !56, !57}
!180 = distinct !{!180, !56, !57}
!181 = distinct !{!181, !56, !57}
!182 = distinct !{!182, !57}
!183 = distinct !{!183, !56, !57}
!184 = distinct !{!184, !57}
!185 = distinct !{!185, !56, !57}
!186 = !{!43, !45, i64 147}
!187 = distinct !{!187, !56, !57}
!188 = distinct !{!188, !56, !57}
!189 = distinct !{!189, !56, !57}
!190 = distinct !{!190, !56, !57}
!191 = distinct !{!191, !56, !57}
!192 = distinct !{!192, !56, !57}
!193 = distinct !{!193, !56, !57}
!194 = distinct !{!194, !56, !57}
!195 = distinct !{!195, !56, !57}
!196 = distinct !{!196, !56, !57}
!197 = distinct !{!197, !56, !57}
!198 = !{i64 0, i64 8, !64, i64 8, i64 8, !64}
!199 = distinct !{!199, !56, !57}
!200 = distinct !{!200, !56, !57}
