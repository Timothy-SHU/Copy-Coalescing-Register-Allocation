; ModuleID = 'simulator/expression.tab.cc'
source_filename = "simulator/expression.tab.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LineColumn = type { i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.Expression::Elem" = type { i32, %union.anon }
%union.anon = type { double }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.1 }
%union.anon.1 = type { ptr }

$_ZN10Expression4ElemaSENS_6OpTypeE = comdat any

$_ZN10Expression4ElemaSEPKc = comdat any

$_ZN10Expression4ElemaSEb = comdat any

$_ZN10Expression4ElemaSEl = comdat any

$_ZN10Expression4ElemaSEd = comdat any

$_ZN10Expression4ElemaSEPNS_7FunctorE = comdat any

$__clang_call_terminate = comdat any

$_Z10opp_strdupPKc = comdat any

$_ZN10Expression4ElemC2Ev = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTV17opp_runtime_error = comdat any

@expressionxpos = dso_local local_unnamed_addr global %struct.LineColumn zeroinitializer, align 8
@expressionxprevpos = dso_local local_unnamed_addr global %struct.LineColumn zeroinitializer, align 8
@expressionyydebug = dso_local local_unnamed_addr global i32 0, align 4
@expressionyychar = dso_local local_unnamed_addr global i32 0, align 4
@expressionyylval = dso_local local_unnamed_addr global ptr null, align 8
@expressionyynerrs = dso_local local_unnamed_addr global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"Starting parse\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Entering state %d\0A\00", align 1
@_ZL6yypact = internal unnamed_addr constant [82 x i16] [i16 68, i16 -30, i16 -30, i16 -29, i16 -30, i16 -30, i16 -30, i16 68, i16 68, i16 68, i16 68, i16 11, i16 263, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 -30, i16 34, i16 -30, i16 -30, i16 -30, i16 182, i16 -30, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 68, i16 -30, i16 95, i16 -30, i16 61, i16 61, i16 61, i16 61, i16 313, i16 313, i16 313, i16 326, i16 326, i16 326, i16 -28, i16 -28, i16 238, i16 61, i16 61, i16 -21, i16 -21, i16 -20, i16 -20, i16 -20, i16 -20, i16 -30, i16 68, i16 68, i16 124, i16 288, i16 -30, i16 68, i16 153, i16 -30, i16 68, i16 210, i16 -30], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"Reading a token: \00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Now at end of input.\0A\00", align 1
@_ZL11yytranslate = internal unnamed_addr constant [284 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02$\02\02'(\22 )!\02#\02\02\02\02\02\02\02\02\02\02\1D\02\1F\02\1E\1C\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02%\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B&", align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Next token is\00", align 1
@_ZL7yycheck = internal unnamed_addr constant [364 x i8] c"\07\08\09\0A !\22#$%'\00\13\22#$%%\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-\FF\FF\07\08\09\0A\0B\0C\FF\FF\FF\FF\FF\FF\FF\14\FF\FF\FF\18\FF\FF\FF\FF\FFGH\FF!\FFL\FF\FFO'(\07\08\09\0A\0B\0C\FF\15\16\17\FF\19\1A\14\FF\FF\FF\18 !\22#$%\FF\FF!\FF\FF\FF\FF\FF'\0D\0E\0F\10\11\12\13\FF\15\16\17\FF\19\1A\FF\1C\FF\1E\1F !\22#$%\FF\FF()\0D\0E\0F\10\11\12\13\FF\15\16\17\FF\19\1A\FF\1C\FF\1E\1F !\22#$%\FF\FF()\0D\0E\0F\10\11\12\13\FF\15\16\17\FF\19\1A\FF\1C\FF\1E\1F !\22#$%\FF\FF()\0D\0E\0F\10\11\12\13\FF\15\16\17\FF\19\1A\FF\1C\FF\1E\1F !\22#$%\FF\FF(\0D\0E\0F\10\11\12\13\FF\15\16\17\FF\19\1A\FF\1C\FF\1E\1F !\22#$%\FF\FF(\0D\0E\0F\10\11\12\13\FF\15\16\17\FF\19\1A\FF\1C\1D\1E\1F !\22#$%\0D\0E\0F\10\11\12\13\FF\15\16\17\FF\19\1A\FF\1C\FF\1E\1F !\22#$%\0D\0E\0F\10\11\12\13\FF\15\16\17\FF\19\1A\FF\FF\FF\1E\1F !\22#$%\0D\0E\0F\10\FF\FF\FF\FF\15\16\17\FF\19\1A\FF\FF\FF\1E\1F !\22#$%\19\1A\FF\FF\FF\FF\FF !\22#$%", align 16
@_ZL7yytable = internal unnamed_addr constant [364 x i8] c"\14\15\16\17()*+,-\13\18/*+,--123456789:;<=>?@ABCDE\00\00\01\02\03\04\05\06\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\00\00IJ\00\09\00M\00\00P\0A.\01\02\03\04\05\06\00 !\22\00#$\07\00\00\00\08()*+,-\00\00\09\00\00\00\00\00\0A\19\1A\1B\1C\1D\1E\1F\00 !\22\00#$\00%\00&'()*+,-\00\00FG\19\1A\1B\1C\1D\1E\1F\00 !\22\00#$\00%\00&'()*+,-\00\00KL\19\1A\1B\1C\1D\1E\1F\00 !\22\00#$\00%\00&'()*+,-\00\00NO\19\1A\1B\1C\1D\1E\1F\00 !\22\00#$\00%\00&'()*+,-\00\000\19\1A\1B\1C\1D\1E\1F\00 !\22\00#$\00%\00&'()*+,-\00\00Q\19\1A\1B\1C\1D\1E\1F\00 !\22\00#$\00%H&'()*+,-\19\1A\1B\1C\1D\1E\1F\00 !\22\00#$\00%\00&'()*+,-\19\1A\1B\1C\1D\1E\1F\00 !\22\00#$\00\00\00&'()*+,-\19\1A\1B\1C\00\00\00\00 !\22\00#$\00\00\00&'()*+,-#$\00\00\00\00\00()*+,-", align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"Shifting\00", align 1
@_ZL8yydefact = internal unnamed_addr constant [82 x i8] c"\00)*$+,(\00\00\00\00\00\02\03\22#%&'\00\15\19\0B\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1D\00\04\0C\0D\0F\11\12\13\14\16\17\18\1A\1B\00\0E\10\05\06\07\08\09\0A\1E\00\00\00\1C\1F\00\00 \00\00!", align 16
@_ZL4yyr2 = internal unnamed_addr constant [45 x i8] c"\00\02\01\01\03\03\03\03\03\03\03\02\03\03\03\03\03\03\03\03\03\02\03\03\03\02\03\03\05\03\04\06\08\0A\01\01\01\01\01\01\01\01\01\01\01", align 16
@_ZL1e = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"-> $$ =\00", align 1
@_ZL4yyr1 = internal unnamed_addr constant [45 x i8] c"\00*+,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,--.///01122", align 16
@_ZL7yypgoto = internal unnamed_addr constant [9 x i8] c"\E2\E2\F9\E2\E2\E2\E2\E2\E2", align 1
@_ZL9yydefgoto = internal unnamed_addr constant [9 x i8] c"\FF\0B\0C\0D\0E\0F\10\11\12", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@_ZL6yystos = internal unnamed_addr constant [82 x i8] c"\00\07\08\09\0A\0B\0C\14\18!'+,-./012',,,,\00\0D\0E\0F\10\11\12\13\15\16\17\19\1A\1C\1E\1F !\22#$%(,(,,,,,,,,,,,,,,,,,,,,,()\1D,,(),(),(", align 16
@.str.12 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Cleanup: discarding lookahead\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Cleanup: popping\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"token %s (\00", align 1
@_ZL7yytname = internal unnamed_addr constant [52 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr null], align 16
@.str.16 = private unnamed_addr constant [11 x i8] c"nterm %s (\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"DOUBLETYPE\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"INTTYPE\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"STRINGTYPE\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"BOOLTYPE\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"TRUE_\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"FALSE_\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"INTCONSTANT\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"REALCONSTANT\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"STRINGCONSTANT\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"EQ_\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"NE_\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"GE_\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"LE_\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"AND_\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"OR_\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"XOR_\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"NOT_\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"BINAND_\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"BINOR_\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"BINXOR_\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"BINCOMPL_\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"SHIFTLEFT_\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"SHIFTRIGHT_\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"INVALID_CHAR\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"'?'\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"'>'\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"'<'\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"'+'\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"'-'\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"'*'\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"'/'\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"'%'\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"'^'\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"UMIN_\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"simple_expr\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"stringliteral\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"boolliteral\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"numliteral\00", align 1
@_ZL7yyrline = internal unnamed_addr constant [45 x i8] c"\00{{\7F\80\82\84\86\88\8A\8C\8F\93\95\97\99\9B\9D\A0\A2\A4\A7\AB\AD\AF\B2\B5\B7\B9\BC\BE\C0\C2\C4\C9\CA\CE\D3\D4\D5\D9\DE\E0\E5\E7", align 16
@.str.69 = private unnamed_addr constant [39 x i8] c"Reducing stack by rule %d (line %lu):\0A\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"   $%d = \00", align 1
@_ZL5yyrhs = internal unnamed_addr constant [164 x i8] c"+\00\FF,\FF-\FF',(\FF, ,\FF,!,\FF,\22,\FF,#,\FF,$,\FF,%,\FF!,\FF,\0D,\FF,\0E,\FF,\1E,\FF,\0F,\FF,\1F,\FF,\10,\FF,\11,\FF,\12,\FF,\13,\FF\14,\FF,\15,\FF,\16,\FF,\17,\FF\18,\FF,\19,\FF,\1A,\FF,\1C,\1D,\FF\09'(\FF\09',(\FF\09',),(\FF\09',),),(\FF\09',),),),(\FF.\FF/\FF\09\FF0\FF1\FF2\FF\0C\FF\07\FF\08\FF\0A\FF\0B\FF", align 16
@_ZL6yyprhs = internal unnamed_addr constant [45 x i8] c"\00\00\03\05\07\0B\0F\13\17\1B\1F#&*.26:>BFJMQUY\\`djnsz\83\8E\90\92\94\96\98\9A\9C\9E\A0\A2", align 16
@_ZTISt9exception = external constant ptr
@_ZL8resolver = internal unnamed_addr global ptr null, align 8
@.str.71 = private unnamed_addr constant [10 x i8] c"Stack now\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@_ZZL14yysyntax_errorPciiE12yyunexpected = internal unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 16
@_ZZL14yysyntax_errorPciiE11yyexpecting = internal constant [15 x i8] c", expecting %s\00", align 1
@_ZZL14yysyntax_errorPciiE4yyor = internal constant [7 x i8] c" or %s\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1
@_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiE6active = internal unnamed_addr global i1 false, align 1
@expressionyyin = external local_unnamed_addr global ptr, align 8
@expressionyyout = external local_unnamed_addr global ptr, align 8
@.str.74 = private unnamed_addr constant [41 x i8] c"parser is unable to allocate work memory\00", align 1
@_ZTISt13runtime_error = external constant ptr
@.str.75 = private unnamed_addr constant [49 x i8] c"non-reentrant parser invoked again while parsing\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z17expressionyyparsev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !40 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca [200 x i16], align 16
  %3 = alloca [200 x ptr], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %3) #21
  %5 = load i32, ptr @expressionyydebug, align 4, !tbaa !41
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !45
  %9 = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %8) #22
  br label %10

10:                                               ; preds = %7, %0
  store i32 0, ptr @expressionyynerrs, align 4, !tbaa !41
  store i32 -2, ptr @expressionyychar, align 4, !tbaa !41
  store i16 0, ptr %2, align 16, !tbaa !47
  br label %19

11:                                               ; preds = %310, %314, %101
  %12 = phi i64 [ %292, %310 ], [ %292, %314 ], [ %22, %101 ]
  %13 = phi ptr [ %294, %310 ], [ %294, %314 ], [ %103, %101 ]
  %14 = phi i32 [ %313, %310 ], [ %317, %314 ], [ %84, %101 ]
  %15 = add nsw i64 %12, 2
  %16 = getelementptr inbounds i8, ptr %2, i64 %15
  %17 = trunc i32 %14 to i16
  store i16 %17, ptr %16, align 2, !tbaa !47
  %18 = icmp slt i64 %12, 396
  br i1 %18, label %19, label %341

19:                                               ; preds = %10, %11
  %20 = phi i32 [ 0, %10 ], [ %14, %11 ]
  %21 = phi ptr [ %3, %10 ], [ %13, %11 ]
  %22 = phi i64 [ 0, %10 ], [ %15, %11 ]
  %23 = load i32, ptr @expressionyydebug, align 4, !tbaa !41
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @stderr, align 8, !tbaa !45
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.1, i32 noundef %20) #23
  br label %28

28:                                               ; preds = %19, %25
  %29 = sext i32 %20 to i64
  %30 = getelementptr inbounds [82 x i16], ptr @_ZL6yypact, i64 0, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !47
  %32 = sext i16 %31 to i32
  %33 = icmp eq i16 %31, -30
  br i1 %33, label %104, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr @expressionyychar, align 4, !tbaa !41
  %36 = icmp eq i32 %35, -2
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, ptr @expressionyydebug, align 4, !tbaa !41
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @stderr, align 8, !tbaa !45
  %42 = call i64 @fwrite(ptr nonnull @.str.2, i64 17, i64 1, ptr %41) #22
  br label %43

43:                                               ; preds = %40, %37
  %44 = call noundef i32 @_Z15expressionyylexv() #24
  store i32 %44, ptr @expressionyychar, align 4, !tbaa !41
  br label %45

45:                                               ; preds = %43, %34
  %46 = phi i32 [ %44, %43 ], [ %35, %34 ]
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  store i32 0, ptr @expressionyychar, align 4, !tbaa !41
  %49 = load i32, ptr @expressionyydebug, align 4, !tbaa !41
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @stderr, align 8, !tbaa !45
  %53 = call i64 @fwrite(ptr nonnull @.str.3, i64 21, i64 1, ptr %52) #22
  br label %71

54:                                               ; preds = %45
  %55 = icmp ult i32 %46, 284
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = zext nneg i32 %46 to i64
  %58 = getelementptr inbounds [284 x i8], ptr @_ZL11yytranslate, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !49
  %60 = zext i8 %59 to i32
  br label %61

61:                                               ; preds = %54, %56
  %62 = phi i32 [ %60, %56 ], [ 2, %54 ]
  %63 = load i32, ptr @expressionyydebug, align 4, !tbaa !41
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr @stderr, align 8, !tbaa !45
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #23
  %68 = load ptr, ptr @stderr, align 8, !tbaa !45
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKPc(ptr noundef %68, i32 noundef %62) #24
  %69 = load ptr, ptr @stderr, align 8, !tbaa !45
  %70 = call i32 @fputc(i32 10, ptr %69)
  br label %71

71:                                               ; preds = %61, %65, %48, %51
  %72 = phi i32 [ 0, %51 ], [ 0, %48 ], [ %62, %65 ], [ %62, %61 ]
  %73 = add nsw i32 %72, %32
  %74 = icmp ugt i32 %73, 363
  br i1 %74, label %104, label %75

75:                                               ; preds = %71
  %76 = zext nneg i32 %73 to i64
  %77 = getelementptr inbounds [364 x i8], ptr @_ZL7yycheck, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !49
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %72, %79
  br i1 %80, label %81, label %104

81:                                               ; preds = %75
  %82 = getelementptr inbounds [364 x i8], ptr @_ZL7yytable, i64 0, i64 %76
  %83 = load i8, ptr %82, align 1, !tbaa !49
  %84 = zext i8 %83 to i32
  %85 = icmp eq i8 %83, 0
  br i1 %85, label %318, label %86

86:                                               ; preds = %81
  %87 = icmp eq i32 %73, 11
  br i1 %87, label %342, label %88

88:                                               ; preds = %86
  %89 = load i32, ptr @expressionyydebug, align 4, !tbaa !41
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr @stderr, align 8, !tbaa !45
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #23
  %94 = load ptr, ptr @stderr, align 8, !tbaa !45
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKPc(ptr noundef %94, i32 noundef %72) #24
  %95 = load ptr, ptr @stderr, align 8, !tbaa !45
  %96 = call i32 @fputc(i32 10, ptr %95)
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i32, ptr @expressionyychar, align 4, !tbaa !41
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i32 -2, ptr @expressionyychar, align 4, !tbaa !41
  br label %101

101:                                              ; preds = %100, %97
  %102 = load ptr, ptr @expressionyylval, align 8, !tbaa !45
  %103 = getelementptr inbounds ptr, ptr %21, i64 1
  store ptr %102, ptr %103, align 8, !tbaa !45
  br label %11

104:                                              ; preds = %71, %75, %28
  %105 = getelementptr inbounds [82 x i8], ptr @_ZL8yydefact, i64 0, i64 %29
  %106 = load i8, ptr %105, align 1, !tbaa !49
  %107 = zext i8 %106 to i32
  %108 = icmp eq i8 %106, 0
  br i1 %108, label %318, label %109

109:                                              ; preds = %104
  %110 = zext i8 %106 to i64
  %111 = getelementptr inbounds [45 x i8], ptr @_ZL4yyr2, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !49
  %113 = zext i8 %112 to i64
  %114 = sub nsw i64 1, %113
  %115 = getelementptr inbounds ptr, ptr %21, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !45
  %117 = load i32, ptr @expressionyydebug, align 4, !tbaa !41
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %109
  call fastcc void @_ZL15yy_reduce_printPPci(ptr noundef nonnull %21, i32 noundef %107) #24
  br label %120

120:                                              ; preds = %119, %109
  switch i8 %106, label %261 [
    i8 5, label %121
    i8 6, label %124
    i8 7, label %127
    i8 8, label %130
    i8 9, label %133
    i8 10, label %136
    i8 11, label %139
    i8 12, label %142
    i8 13, label %145
    i8 14, label %148
    i8 15, label %151
    i8 16, label %154
    i8 17, label %157
    i8 18, label %160
    i8 19, label %163
    i8 20, label %166
    i8 21, label %169
    i8 22, label %172
    i8 23, label %175
    i8 24, label %178
    i8 25, label %181
    i8 26, label %184
    i8 27, label %187
    i8 28, label %190
    i8 29, label %193
    i8 30, label %199
    i8 31, label %205
    i8 32, label %211
    i8 33, label %217
    i8 36, label %223
    i8 40, label %228
    i8 41, label %239
    i8 42, label %242
    i8 43, label %245
    i8 44, label %253
  ]

121:                                              ; preds = %120
  %122 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %123 = getelementptr inbounds %"class.Expression::Elem", ptr %122, i64 1
  store ptr %123, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %122, i32 noundef 0) #24
  br label %261

124:                                              ; preds = %120
  %125 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %126 = getelementptr inbounds %"class.Expression::Elem", ptr %125, i64 1
  store ptr %126, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %125, i32 noundef 1) #24
  br label %261

127:                                              ; preds = %120
  %128 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %129 = getelementptr inbounds %"class.Expression::Elem", ptr %128, i64 1
  store ptr %129, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %128, i32 noundef 2) #24
  br label %261

130:                                              ; preds = %120
  %131 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %132 = getelementptr inbounds %"class.Expression::Elem", ptr %131, i64 1
  store ptr %132, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %131, i32 noundef 3) #24
  br label %261

133:                                              ; preds = %120
  %134 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %135 = getelementptr inbounds %"class.Expression::Elem", ptr %134, i64 1
  store ptr %135, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %134, i32 noundef 4) #24
  br label %261

136:                                              ; preds = %120
  %137 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %138 = getelementptr inbounds %"class.Expression::Elem", ptr %137, i64 1
  store ptr %138, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %137, i32 noundef 5) #24
  br label %261

139:                                              ; preds = %120
  %140 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %141 = getelementptr inbounds %"class.Expression::Elem", ptr %140, i64 1
  store ptr %141, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %140, i32 noundef 6) #24
  br label %261

142:                                              ; preds = %120
  %143 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %144 = getelementptr inbounds %"class.Expression::Elem", ptr %143, i64 1
  store ptr %144, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %143, i32 noundef 7) #24
  br label %261

145:                                              ; preds = %120
  %146 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %147 = getelementptr inbounds %"class.Expression::Elem", ptr %146, i64 1
  store ptr %147, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %146, i32 noundef 8) #24
  br label %261

148:                                              ; preds = %120
  %149 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %150 = getelementptr inbounds %"class.Expression::Elem", ptr %149, i64 1
  store ptr %150, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %149, i32 noundef 9) #24
  br label %261

151:                                              ; preds = %120
  %152 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %153 = getelementptr inbounds %"class.Expression::Elem", ptr %152, i64 1
  store ptr %153, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %152, i32 noundef 10) #24
  br label %261

154:                                              ; preds = %120
  %155 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %156 = getelementptr inbounds %"class.Expression::Elem", ptr %155, i64 1
  store ptr %156, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %155, i32 noundef 11) #24
  br label %261

157:                                              ; preds = %120
  %158 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %159 = getelementptr inbounds %"class.Expression::Elem", ptr %158, i64 1
  store ptr %159, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %158, i32 noundef 12) #24
  br label %261

160:                                              ; preds = %120
  %161 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %162 = getelementptr inbounds %"class.Expression::Elem", ptr %161, i64 1
  store ptr %162, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %161, i32 noundef 14) #24
  br label %261

163:                                              ; preds = %120
  %164 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %165 = getelementptr inbounds %"class.Expression::Elem", ptr %164, i64 1
  store ptr %165, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %164, i32 noundef 15) #24
  br label %261

166:                                              ; preds = %120
  %167 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %168 = getelementptr inbounds %"class.Expression::Elem", ptr %167, i64 1
  store ptr %168, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %167, i32 noundef 16) #24
  br label %261

169:                                              ; preds = %120
  %170 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %171 = getelementptr inbounds %"class.Expression::Elem", ptr %170, i64 1
  store ptr %171, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %170, i32 noundef 17) #24
  br label %261

172:                                              ; preds = %120
  %173 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %174 = getelementptr inbounds %"class.Expression::Elem", ptr %173, i64 1
  store ptr %174, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %173, i32 noundef 18) #24
  br label %261

175:                                              ; preds = %120
  %176 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %177 = getelementptr inbounds %"class.Expression::Elem", ptr %176, i64 1
  store ptr %177, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %176, i32 noundef 19) #24
  br label %261

178:                                              ; preds = %120
  %179 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %180 = getelementptr inbounds %"class.Expression::Elem", ptr %179, i64 1
  store ptr %180, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %179, i32 noundef 20) #24
  br label %261

181:                                              ; preds = %120
  %182 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %183 = getelementptr inbounds %"class.Expression::Elem", ptr %182, i64 1
  store ptr %183, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %182, i32 noundef 21) #24
  br label %261

184:                                              ; preds = %120
  %185 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %186 = getelementptr inbounds %"class.Expression::Elem", ptr %185, i64 1
  store ptr %186, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %185, i32 noundef 22) #24
  br label %261

187:                                              ; preds = %120
  %188 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %189 = getelementptr inbounds %"class.Expression::Elem", ptr %188, i64 1
  store ptr %189, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %188, i32 noundef 23) #24
  br label %261

190:                                              ; preds = %120
  %191 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %192 = getelementptr inbounds %"class.Expression::Elem", ptr %191, i64 1
  store ptr %192, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %191, i32 noundef 13) #24
  br label %261

193:                                              ; preds = %120
  %194 = getelementptr inbounds ptr, ptr %21, i64 -2
  %195 = load ptr, ptr %194, align 8, !tbaa !45
  call fastcc void @_ZL11addFunctionPKci(ptr noundef %195, i32 noundef 0) #24
  %196 = load ptr, ptr %194, align 8, !tbaa !45
  %197 = icmp eq ptr %196, null
  br i1 %197, label %261, label %198

198:                                              ; preds = %193
  call void @_ZdaPv(ptr noundef nonnull %196) #25
  br label %261

199:                                              ; preds = %120
  %200 = getelementptr inbounds ptr, ptr %21, i64 -3
  %201 = load ptr, ptr %200, align 8, !tbaa !45
  call fastcc void @_ZL11addFunctionPKci(ptr noundef %201, i32 noundef 1) #24
  %202 = load ptr, ptr %200, align 8, !tbaa !45
  %203 = icmp eq ptr %202, null
  br i1 %203, label %261, label %204

204:                                              ; preds = %199
  call void @_ZdaPv(ptr noundef nonnull %202) #25
  br label %261

205:                                              ; preds = %120
  %206 = getelementptr inbounds ptr, ptr %21, i64 -5
  %207 = load ptr, ptr %206, align 8, !tbaa !45
  call fastcc void @_ZL11addFunctionPKci(ptr noundef %207, i32 noundef 2) #24
  %208 = load ptr, ptr %206, align 8, !tbaa !45
  %209 = icmp eq ptr %208, null
  br i1 %209, label %261, label %210

210:                                              ; preds = %205
  call void @_ZdaPv(ptr noundef nonnull %208) #25
  br label %261

211:                                              ; preds = %120
  %212 = getelementptr inbounds ptr, ptr %21, i64 -7
  %213 = load ptr, ptr %212, align 8, !tbaa !45
  call fastcc void @_ZL11addFunctionPKci(ptr noundef %213, i32 noundef 3) #24
  %214 = load ptr, ptr %212, align 8, !tbaa !45
  %215 = icmp eq ptr %214, null
  br i1 %215, label %261, label %216

216:                                              ; preds = %211
  call void @_ZdaPv(ptr noundef nonnull %214) #25
  br label %261

217:                                              ; preds = %120
  %218 = getelementptr inbounds ptr, ptr %21, i64 -9
  %219 = load ptr, ptr %218, align 8, !tbaa !45
  call fastcc void @_ZL11addFunctionPKci(ptr noundef %219, i32 noundef 4) #24
  %220 = load ptr, ptr %218, align 8, !tbaa !45
  %221 = icmp eq ptr %220, null
  br i1 %221, label %261, label %222

222:                                              ; preds = %217
  call void @_ZdaPv(ptr noundef nonnull %220) #25
  br label %261

223:                                              ; preds = %120
  %224 = load ptr, ptr %21, align 8, !tbaa !45
  call fastcc void @_ZL14addVariableRefPKc(ptr noundef %224) #24
  %225 = load ptr, ptr %21, align 8, !tbaa !45
  %226 = icmp eq ptr %225, null
  br i1 %226, label %261, label %227

227:                                              ; preds = %223
  call void @_ZdaPv(ptr noundef nonnull %225) #25
  br label %261

228:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  %229 = load ptr, ptr %21, align 8, !tbaa !45
  call void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %229) #24
  %230 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  %231 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %232 = getelementptr inbounds %"class.Expression::Elem", ptr %231, i64 1
  store ptr %232, ptr @_ZL1e, align 8, !tbaa !45
  invoke void @_ZN10Expression4ElemaSEPKc(ptr noundef nonnull align 8 dereferenceable(16) %231, ptr noundef %230) #24
          to label %233 unwind label %237

233:                                              ; preds = %228
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  %234 = load ptr, ptr %21, align 8, !tbaa !45
  %235 = icmp eq ptr %234, null
  br i1 %235, label %261, label %236

236:                                              ; preds = %233
  call void @_ZdaPv(ptr noundef nonnull %234) #25
  br label %261

237:                                              ; preds = %228
  %238 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #21
  resume { ptr, i32 } %238

239:                                              ; preds = %120
  %240 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %241 = getelementptr inbounds %"class.Expression::Elem", ptr %240, i64 1
  store ptr %241, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSEb(ptr noundef nonnull align 8 dereferenceable(16) %240, i1 noundef zeroext true) #24
  br label %261

242:                                              ; preds = %120
  %243 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %244 = getelementptr inbounds %"class.Expression::Elem", ptr %243, i64 1
  store ptr %244, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSEb(ptr noundef nonnull align 8 dereferenceable(16) %243, i1 noundef zeroext false) #24
  br label %261

245:                                              ; preds = %120
  %246 = load ptr, ptr %21, align 8, !tbaa !45
  %247 = call noundef i64 @_Z8opp_atolPKc(ptr noundef %246) #24
  %248 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %249 = getelementptr inbounds %"class.Expression::Elem", ptr %248, i64 1
  store ptr %249, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSEl(ptr noundef nonnull align 8 dereferenceable(16) %248, i64 noundef %247) #24
  %250 = load ptr, ptr %21, align 8, !tbaa !45
  %251 = icmp eq ptr %250, null
  br i1 %251, label %261, label %252

252:                                              ; preds = %245
  call void @_ZdaPv(ptr noundef nonnull %250) #25
  br label %261

253:                                              ; preds = %120
  %254 = load ptr, ptr %21, align 8, !tbaa !45
  %255 = call noundef double @_Z8opp_atofPKc(ptr noundef %254) #24
  %256 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %257 = getelementptr inbounds %"class.Expression::Elem", ptr %256, i64 1
  store ptr %257, ptr @_ZL1e, align 8, !tbaa !45
  call void @_ZN10Expression4ElemaSEd(ptr noundef nonnull align 8 dereferenceable(16) %256, double noundef %255) #24
  %258 = load ptr, ptr %21, align 8, !tbaa !45
  %259 = icmp eq ptr %258, null
  br i1 %259, label %261, label %260

260:                                              ; preds = %253
  call void @_ZdaPv(ptr noundef nonnull %258) #25
  br label %261

261:                                              ; preds = %121, %124, %127, %130, %133, %136, %139, %142, %145, %148, %151, %154, %157, %160, %163, %166, %169, %172, %175, %178, %181, %184, %187, %190, %239, %242, %198, %193, %204, %199, %210, %205, %216, %211, %222, %217, %227, %223, %236, %233, %252, %245, %260, %253, %120
  %262 = load i32, ptr @expressionyydebug, align 4, !tbaa !41
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %261
  %265 = sub nsw i64 0, %113
  %266 = getelementptr inbounds ptr, ptr %21, i64 %265
  %267 = shl nsw i64 %265, 1
  %268 = add nsw i64 %267, %22
  %269 = getelementptr inbounds i8, ptr %2, i64 %268
  %270 = getelementptr inbounds [45 x i8], ptr @_ZL4yyr1, i64 0, i64 %110
  %271 = load i8, ptr %270, align 1, !tbaa !49
  br label %289

272:                                              ; preds = %261
  %273 = load ptr, ptr @stderr, align 8, !tbaa !45
  %274 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #23
  %275 = load ptr, ptr @stderr, align 8, !tbaa !45
  %276 = getelementptr inbounds [45 x i8], ptr @_ZL4yyr1, i64 0, i64 %110
  %277 = load i8, ptr %276, align 1, !tbaa !49
  %278 = zext i8 %277 to i32
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKPc(ptr noundef %275, i32 noundef %278) #24
  %279 = load ptr, ptr @stderr, align 8, !tbaa !45
  %280 = call i32 @fputc(i32 10, ptr %279)
  %281 = load i32, ptr @expressionyydebug, align 4, !tbaa !41
  %282 = sub nsw i64 0, %113
  %283 = getelementptr inbounds ptr, ptr %21, i64 %282
  %284 = shl nsw i64 %282, 1
  %285 = add nsw i64 %284, %22
  %286 = getelementptr inbounds i8, ptr %2, i64 %285
  %287 = icmp eq i32 %281, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %272
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %286) #24
  br label %289

289:                                              ; preds = %264, %288, %272
  %290 = phi i8 [ %271, %264 ], [ %277, %288 ], [ %277, %272 ]
  %291 = phi ptr [ %269, %264 ], [ %286, %288 ], [ %286, %272 ]
  %292 = phi i64 [ %268, %264 ], [ %285, %288 ], [ %285, %272 ]
  %293 = phi ptr [ %266, %264 ], [ %283, %288 ], [ %283, %272 ]
  %294 = getelementptr inbounds ptr, ptr %293, i64 1
  store ptr %116, ptr %294, align 8, !tbaa !45
  %295 = zext i8 %290 to i64
  %296 = add nsw i64 %295, -42
  %297 = getelementptr inbounds [9 x i8], ptr @_ZL7yypgoto, i64 0, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !49
  %299 = sext i8 %298 to i32
  %300 = load i16, ptr %291, align 2, !tbaa !47
  %301 = sext i16 %300 to i32
  %302 = add nsw i32 %301, %299
  %303 = icmp ult i32 %302, 364
  br i1 %303, label %304, label %314

304:                                              ; preds = %289
  %305 = zext nneg i32 %302 to i64
  %306 = getelementptr inbounds [364 x i8], ptr @_ZL7yycheck, i64 0, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !49
  %308 = sext i8 %307 to i16
  %309 = icmp eq i16 %300, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = getelementptr inbounds [364 x i8], ptr @_ZL7yytable, i64 0, i64 %305
  %312 = load i8, ptr %311, align 1, !tbaa !49
  %313 = zext i8 %312 to i32
  br label %11

314:                                              ; preds = %304, %289
  %315 = getelementptr inbounds [9 x i8], ptr @_ZL9yydefgoto, i64 0, i64 %296
  %316 = load i8, ptr %315, align 1, !tbaa !49
  %317 = sext i8 %316 to i32
  br label %11

318:                                              ; preds = %104, %81
  %319 = load i32, ptr @expressionyynerrs, align 4, !tbaa !41
  %320 = add nsw i32 %319, 1
  store i32 %320, ptr @expressionyynerrs, align 4, !tbaa !41
  %321 = load i32, ptr @expressionyychar, align 4, !tbaa !41
  %322 = call fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef null, i32 noundef %20, i32 noundef %321) #24
  %323 = icmp ugt i64 %322, 128
  br i1 %323, label %324, label %332

324:                                              ; preds = %318
  %325 = shl i64 %322, 1
  %326 = icmp sgt i64 %322, -1
  %327 = select i1 %326, i64 %325, i64 -1
  %328 = call noalias ptr @malloc(i64 noundef %327) #27
  %329 = icmp eq ptr %328, null
  %330 = select i1 %329, i64 128, i64 %327
  %331 = select i1 %329, ptr %1, ptr %328
  br label %332

332:                                              ; preds = %324, %318
  %333 = phi i64 [ %330, %324 ], [ 128, %318 ]
  %334 = phi ptr [ %331, %324 ], [ %1, %318 ]
  %335 = add i64 %322, -1
  %336 = icmp ult i64 %335, %333
  br i1 %336, label %337, label %340

337:                                              ; preds = %332
  %338 = load i32, ptr @expressionyychar, align 4, !tbaa !41
  %339 = call fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef %334, i32 noundef %20, i32 noundef %338) #24
  call void @_Z17expressionyyerrorPKc(ptr noundef %334) #24
  unreachable

340:                                              ; preds = %332
  call void @_Z17expressionyyerrorPKc(ptr noundef nonnull @.str.9) #24
  unreachable

341:                                              ; preds = %11
  call void @_Z17expressionyyerrorPKc(ptr noundef nonnull @.str.12) #24
  unreachable

342:                                              ; preds = %86
  %343 = load i32, ptr @expressionyychar, align 4
  switch i32 %343, label %344 [
    i32 -2, label %345
    i32 0, label %345
  ]

344:                                              ; preds = %342
  call fastcc void @_ZL10yydestructPKciPPc(ptr noundef nonnull @.str.13, i32 noundef %72) #24
  br label %345

345:                                              ; preds = %342, %342, %344
  %346 = getelementptr inbounds i8, ptr %2, i64 %22
  %347 = load i32, ptr @expressionyydebug, align 4, !tbaa !41
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %350, label %349

349:                                              ; preds = %345
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %346) #24
  br label %350

350:                                              ; preds = %349, %345
  %351 = icmp eq i64 %22, 0
  br i1 %351, label %361, label %352

352:                                              ; preds = %350, %352
  %353 = phi ptr [ %359, %352 ], [ %346, %350 ]
  %354 = load i16, ptr %353, align 2, !tbaa !47
  %355 = sext i16 %354 to i64
  %356 = getelementptr inbounds [82 x i8], ptr @_ZL6yystos, i64 0, i64 %355
  %357 = load i8, ptr %356, align 1, !tbaa !49
  %358 = zext i8 %357 to i32
  call fastcc void @_ZL10yydestructPKciPPc(ptr noundef nonnull @.str.14, i32 noundef %358) #24
  %359 = getelementptr inbounds i16, ptr %353, i64 -1
  %360 = icmp eq ptr %359, %2
  br i1 %360, label %361, label %352, !llvm.loop !50

361:                                              ; preds = %352, %350
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #21
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef i32 @_Z15expressionyylexv() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKPc(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !40 !PGOFuncName !52 {
  %3 = icmp slt i32 %1, 42
  %4 = zext nneg i32 %1 to i64
  %5 = sext i32 %1 to i64
  %6 = select i1 %3, i64 %5, i64 %4
  %7 = select i1 %3, ptr @.str.15, ptr @.str.16
  %8 = getelementptr inbounds [52 x ptr], ptr @_ZL7yytname, i64 0, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %9) #24
  %11 = tail call i32 @fputc(i32 41, ptr %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL15yy_reduce_printPPci(ptr nocapture noundef readnone %0, i32 noundef %1) unnamed_addr #4 !prof !40 !PGOFuncName !53 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds [45 x i8], ptr @_ZL4yyr2, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !49
  %6 = getelementptr inbounds [45 x i8], ptr @_ZL7yyrline, i64 0, i64 %3
  %7 = load i8, ptr %6, align 1, !tbaa !49
  %8 = zext i8 %7 to i64
  %9 = load ptr, ptr @stderr, align 8, !tbaa !45
  %10 = add nsw i32 %1, -1
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.69, i32 noundef %10, i64 noundef %8) #23
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds [45 x i8], ptr @_ZL6yyprhs, i64 0, i64 %3
  %15 = tail call i8 @llvm.umax.i8(i8 %5, i8 1)
  %16 = zext i8 %15 to i64
  br label %17

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %20, %17 ]
  %19 = load ptr, ptr @stderr, align 8, !tbaa !45
  %20 = add nuw nsw i64 %18, 1
  %21 = trunc i64 %20 to i32
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.70, i32 noundef %21) #23
  %23 = load ptr, ptr @stderr, align 8, !tbaa !45
  %24 = load i8, ptr %14, align 1, !tbaa !49
  %25 = zext i8 %24 to i64
  %26 = add nuw i64 %18, %25
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds [164 x i8], ptr @_ZL5yyrhs, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !49
  %30 = sext i8 %29 to i32
  tail call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKPc(ptr noundef %23, i32 noundef %30) #24
  %31 = load ptr, ptr @stderr, align 8, !tbaa !45
  %32 = tail call i32 @fputc(i32 10, ptr %31)
  %33 = icmp eq i64 %20, %16
  br i1 %33, label %34, label %17, !llvm.loop !54

34:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression4ElemaSENS_6OpTypeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !40 {
  store i32 5, ptr %0, align 8, !tbaa !55
  %3 = getelementptr inbounds %"class.Expression::Elem", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL11addFunctionPKci(ptr noundef %0, i32 noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !40 !PGOFuncName !58 {
  %3 = load ptr, ptr @_ZL8resolver, align 8, !tbaa !45
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0, i32 noundef %1) #24
          to label %8 unwind label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %10 = getelementptr inbounds %"class.Expression::Elem", ptr %9, i64 1
  store ptr %10, ptr @_ZL1e, align 8, !tbaa !45
  tail call void @_ZN10Expression4ElemaSEPNS_7FunctorE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %7) #24
  ret void

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %13 = extractvalue { ptr, i32 } %12, 1
  %14 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #21
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = extractvalue { ptr, i32 } %12, 0
  %18 = tail call ptr @__cxa_begin_catch(ptr %17) #21
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %18) #26
  invoke void @_Z17expressionyyerrorPKc(ptr noundef %22) #24
          to label %23 unwind label %24

23:                                               ; preds = %16
  unreachable

24:                                               ; preds = %16
  %25 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %26 unwind label %28

26:                                               ; preds = %24, %11
  %27 = phi { ptr, i32 } [ %12, %11 ], [ %25, %24 ]
  resume { ptr, i32 } %27

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #28
  unreachable
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL14addVariableRefPKc(ptr noundef %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !40 !PGOFuncName !61 {
  %2 = load ptr, ptr @_ZL8resolver, align 8, !tbaa !45
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %0) #24
          to label %7 unwind label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %9 = getelementptr inbounds %"class.Expression::Elem", ptr %8, i64 1
  store ptr %9, ptr @_ZL1e, align 8, !tbaa !45
  tail call void @_ZN10Expression4ElemaSEPNS_7FunctorE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %6) #24
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %12 = extractvalue { ptr, i32 } %11, 1
  %13 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #21
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = extractvalue { ptr, i32 } %11, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #21
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %17) #26
  invoke void @_Z17expressionyyerrorPKc(ptr noundef %21) #24
          to label %22 unwind label %23

22:                                               ; preds = %15
  unreachable

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %25 unwind label %27

25:                                               ; preds = %23, %10
  %26 = phi { ptr, i32 } [ %11, %10 ], [ %24, %23 ]
  resume { ptr, i32 } %26

27:                                               ; preds = %23
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #28
  unreachable
}

; Function Attrs: optsize
declare void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression4ElemaSEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !40 {
  store i32 3, ptr %0, align 8, !tbaa !55
  %3 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %1) #24
  %4 = getelementptr inbounds %"class.Expression::Elem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !49
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression4ElemaSEb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 !prof !40 {
  %3 = zext i1 %1 to i8
  store i32 1, ptr %0, align 8, !tbaa !55
  %4 = getelementptr inbounds %"class.Expression::Elem", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare noundef i64 @_Z8opp_atolPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression4ElemaSEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !40 {
  store i32 2, ptr %0, align 8, !tbaa !55
  %3 = sitofp i64 %1 to double
  %4 = getelementptr inbounds %"class.Expression::Elem", ptr %0, i64 0, i32 1
  store double %3, ptr %4, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare noundef double @_Z8opp_atofPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression4ElemaSEd(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1) local_unnamed_addr #5 comdat align 2 !prof !40 {
  store i32 2, ptr %0, align 8, !tbaa !55
  %3 = getelementptr inbounds %"class.Expression::Elem", ptr %0, i64 0, i32 1
  store double %1, ptr %3, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL14yy_stack_printPsS_(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !prof !40 !PGOFuncName !62 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !45
  %4 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 9, i64 1, ptr %3) #22
  %5 = icmp ugt ptr %0, %1
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %12, %6 ], [ %0, %2 ]
  %8 = load ptr, ptr @stderr, align 8, !tbaa !45
  %9 = load i16, ptr %7, align 2, !tbaa !47
  %10 = sext i16 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.72, i32 noundef %10) #23
  %12 = getelementptr inbounds i16, ptr %7, i64 1
  %13 = icmp ugt ptr %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !63

14:                                               ; preds = %6, %2
  %15 = load ptr, ptr @stderr, align 8, !tbaa !45
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 !prof !40 !PGOFuncName !64 {
  %4 = alloca [5 x ptr], align 16
  %5 = alloca [60 x i8], align 16
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [82 x i16], ptr @_ZL6yypact, i64 0, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !47
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i16 %8, -30
  br i1 %10, label %11, label %109

11:                                               ; preds = %3
  %12 = icmp ult i32 %2, 284
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = zext nneg i32 %2 to i64
  %15 = getelementptr inbounds [284 x i8], ptr @_ZL11yytranslate, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !49
  %17 = zext i8 %16 to i64
  br label %18

18:                                               ; preds = %11, %13
  %19 = phi i64 [ %17, %13 ], [ 2, %11 ]
  %20 = getelementptr inbounds [52 x ptr], ptr @_ZL7yytname, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = tail call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef null, ptr noundef %21) #24
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #21
  %23 = icmp slt i16 %8, 0
  %24 = sub nsw i32 0, %9
  %25 = select i1 %23, i32 %24, i32 0
  %26 = sub nsw i32 364, %9
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 42)
  store ptr %21, ptr %4, align 16, !tbaa !45
  %28 = getelementptr inbounds i8, ptr %5, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %5, ptr noundef nonnull align 16 dereferenceable(28) @_ZZL14yysyntax_errorPciiE12yyunexpected, i64 28, i1 false) #26
  %29 = icmp slt i32 %25, %27
  br i1 %29, label %30, label %72

30:                                               ; preds = %18
  %31 = sext i32 %25 to i64
  %32 = sext i16 %8 to i64
  %33 = sext i32 %27 to i64
  br label %34

34:                                               ; preds = %30, %64
  %35 = phi i64 [ %31, %30 ], [ %70, %64 ]
  %36 = phi i32 [ 1, %30 ], [ %69, %64 ]
  %37 = phi i64 [ %22, %30 ], [ %68, %64 ]
  %38 = phi ptr [ @_ZZL14yysyntax_errorPciiE11yyexpecting, %30 ], [ %67, %64 ]
  %39 = phi ptr [ %28, %30 ], [ %66, %64 ]
  %40 = phi i32 [ 0, %30 ], [ %65, %64 ]
  %41 = add nsw i64 %35, %32
  %42 = getelementptr inbounds [364 x i8], ptr @_ZL7yycheck, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !49
  %44 = sext i8 %43 to i32
  %45 = trunc i64 %35 to i32
  %46 = icmp eq i32 %45, %44
  %47 = icmp ne i64 %35, 1
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %64

49:                                               ; preds = %34
  %50 = icmp eq i32 %36, 5
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  store i8 0, ptr %28, align 1, !tbaa !49
  br label %72

52:                                               ; preds = %49
  %53 = getelementptr inbounds [52 x ptr], ptr @_ZL7yytname, i64 0, i64 %35
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = add nsw i32 %36, 1
  %56 = sext i32 %36 to i64
  %57 = getelementptr inbounds [5 x ptr], ptr %4, i64 0, i64 %56
  store ptr %54, ptr %57, align 8, !tbaa !45
  %58 = call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef null, ptr noundef %54) #24
  %59 = add i64 %58, %37
  %60 = icmp ult i64 %59, %37
  %61 = zext i1 %60 to i32
  %62 = or i32 %40, %61
  %63 = call ptr @stpcpy(ptr noundef %39, ptr noundef %38) #26
  br label %64

64:                                               ; preds = %34, %52
  %65 = phi i32 [ %62, %52 ], [ %40, %34 ]
  %66 = phi ptr [ %63, %52 ], [ %39, %34 ]
  %67 = phi ptr [ @_ZZL14yysyntax_errorPciiE4yyor, %52 ], [ %38, %34 ]
  %68 = phi i64 [ %59, %52 ], [ %37, %34 ]
  %69 = phi i32 [ %55, %52 ], [ %36, %34 ]
  %70 = add nsw i64 %35, 1
  %71 = icmp slt i64 %70, %33
  br i1 %71, label %34, label %72, !llvm.loop !65

72:                                               ; preds = %64, %18, %51
  %73 = phi i32 [ %40, %51 ], [ 0, %18 ], [ %65, %64 ]
  %74 = phi i64 [ %22, %51 ], [ %22, %18 ], [ %68, %64 ]
  %75 = phi i32 [ 1, %51 ], [ 1, %18 ], [ %69, %64 ]
  %76 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #29
  %77 = add i64 %76, %74
  %78 = icmp ult i64 %77, %74
  %79 = zext i1 %78 to i32
  %80 = or i32 %73, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %72
  %83 = icmp eq ptr %0, null
  br i1 %83, label %107, label %84

84:                                               ; preds = %82, %101
  %85 = phi ptr [ %106, %101 ], [ %5, %82 ]
  %86 = phi ptr [ %105, %101 ], [ %0, %82 ]
  %87 = phi i32 [ %104, %101 ], [ 0, %82 ]
  %88 = load i8, ptr %85, align 1, !tbaa !49
  store i8 %88, ptr %86, align 1, !tbaa !49
  switch i8 %88, label %101 [
    i8 0, label %107
    i8 37, label %89
  ]

89:                                               ; preds = %84
  %90 = getelementptr inbounds i8, ptr %85, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !49
  %92 = icmp eq i8 %91, 115
  %93 = icmp slt i32 %87, %75
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = add nsw i32 %87, 1
  %97 = sext i32 %87 to i64
  %98 = getelementptr inbounds [5 x ptr], ptr %4, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !45
  %100 = call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef nonnull %86, ptr noundef %99) #24
  br label %101

101:                                              ; preds = %89, %84, %95
  %102 = phi i64 [ %100, %95 ], [ 1, %84 ], [ 1, %89 ]
  %103 = phi i64 [ 2, %95 ], [ 1, %84 ], [ 1, %89 ]
  %104 = phi i32 [ %96, %95 ], [ %87, %84 ], [ %87, %89 ]
  %105 = getelementptr inbounds i8, ptr %86, i64 %102
  %106 = getelementptr inbounds i8, ptr %85, i64 %103
  br label %84, !llvm.loop !66

107:                                              ; preds = %84, %82, %72
  %108 = phi i64 [ -1, %72 ], [ %77, %82 ], [ %77, %84 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  br label %109

109:                                              ; preds = %3, %107
  %110 = phi i64 [ %108, %107 ], [ 0, %3 ]
  ret i64 %110
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_Z17expressionyyerrorPKc(ptr nocapture noundef readonly %0) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = alloca [250 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 250, ptr nonnull %2) #21
  %3 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #26
  %4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds [250 x i8], ptr %2, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !49
  %8 = icmp eq i8 %7, 10
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8 0, ptr %6, align 1, !tbaa !49
  br label %10

10:                                               ; preds = %9, %1
  %11 = call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %2) #24
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #30
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %11) #21
  call void @llvm.lifetime.end.p0(i64 250, ptr nonnull %2) #21
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL10yydestructPKciPPc(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !prof !40 !PGOFuncName !67 {
  %3 = load i32, ptr @expressionyydebug, align 4, !tbaa !41
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  %7 = select i1 %6, ptr @.str.73, ptr %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !45
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #23
  %10 = load ptr, ptr @stderr, align 8, !tbaa !45
  tail call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKPc(ptr noundef %10, i32 noundef %1) #24
  %11 = load ptr, ptr @stderr, align 8, !tbaa !45
  %12 = tail call i32 @fputc(i32 10, ptr %11)
  br label %13

13:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression4ElemaSEPNS_7FunctorE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !40 {
  store i32 4, ptr %0, align 8, !tbaa !55
  %3 = getelementptr inbounds %"class.Expression::Elem", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !49
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z10opp_strdupPKc(ptr noundef %0) local_unnamed_addr #0 comdat !prof !68 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !69

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !49
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !70

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %8 = add i64 %7, 1
  %9 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %8) #31
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #26
  br label %11

11:                                               ; preds = %1, %3, %6
  %12 = phi ptr [ %9, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !prof !40 !PGOFuncName !71 {
  %3 = load i8, ptr %1, align 1, !tbaa !49
  %4 = icmp eq i8 %3, 34
  br i1 %4, label %5, label %25

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %21, %20 ], [ 0, %5 ]
  %9 = phi ptr [ %17, %20 ], [ %1, %5 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !49
  switch i8 %11, label %16 [
    i8 39, label %25
    i8 44, label %25
    i8 92, label %12
    i8 34, label %22
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %9, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !49
  %15 = icmp eq i8 %14, 92
  br i1 %15, label %16, label %25

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %10, %7 ], [ %13, %12 ]
  br i1 %6, label %20, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 %11, ptr %19, align 1, !tbaa !49
  br label %20

20:                                               ; preds = %18, %16
  %21 = add i64 %8, 1
  br label %7, !llvm.loop !72

22:                                               ; preds = %7
  br i1 %6, label %34, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 0, ptr %24, align 1, !tbaa !49
  br label %34

25:                                               ; preds = %7, %7, %12, %2
  %26 = icmp eq ptr %0, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  br label %34

29:                                               ; preds = %25
  %30 = tail call ptr @stpcpy(ptr noundef nonnull %0, ptr noundef nonnull %1) #26
  %31 = ptrtoint ptr %30 to i64
  %32 = ptrtoint ptr %0 to i64
  %33 = sub i64 %31, %32
  br label %34

34:                                               ; preds = %23, %22, %29, %27
  %35 = phi i64 [ %33, %29 ], [ %28, %27 ], [ %8, %22 ], [ %8, %23 ]
  ret i64 %35
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias noundef writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERi(ptr noundef %0, ptr noundef %1, ptr nocapture noundef nonnull align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call fastcc void @_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiEN5GuardC2Ev() #24
  store ptr null, ptr %2, align 8, !tbaa !45
  store i32 0, ptr %3, align 4, !tbaa !41
  store i32 0, ptr getelementptr inbounds (%struct.LineColumn, ptr @expressionxpos, i64 0, i32 1), align 4, !tbaa !73
  store i32 1, ptr @expressionxpos, align 8, !tbaa !75
  %5 = load i64, ptr @expressionxpos, align 8
  store i64 %5, ptr @expressionxprevpos, align 8
  store ptr null, ptr @expressionyyin, align 8, !tbaa !45
  %6 = load ptr, ptr @stderr, align 8, !tbaa !45
  store ptr %6, ptr @expressionyyout, align 8, !tbaa !45
  %7 = invoke noundef ptr @_Z24expressionyy_scan_stringPKc(ptr noundef %0) #24
          to label %8 unwind label %13

8:                                                ; preds = %4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.74) #24
          to label %12 unwind label %15

12:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #30
          to label %112 unwind label %13

13:                                               ; preds = %12, %4
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %107

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #21
  br label %107

17:                                               ; preds = %8
  %18 = invoke noalias noundef nonnull dereferenceable(1608) ptr @_Znam(i64 noundef 1608) #31
          to label %19 unwind label %29

19:                                               ; preds = %17
  store i64 100, ptr %18, align 16
  br label %20

20:                                               ; preds = %20, %19
  %21 = phi i64 [ 8, %19 ], [ %23, %20 ]
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  tail call void @_ZN10Expression4ElemC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #24
  %23 = add nuw nsw i64 %21, 16
  %24 = icmp eq i64 %23, 1608
  br i1 %24, label %25, label %20

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, ptr %18, i64 8
  store ptr %26, ptr @_ZL1e, align 8, !tbaa !45
  store ptr %1, ptr @_ZL8resolver, align 8, !tbaa !45
  %27 = invoke noundef i32 @_Z17expressionyyparsev() #24
          to label %28 unwind label %31

28:                                               ; preds = %25
  invoke void @_Z26expressionyy_delete_bufferP15yy_buffer_state(ptr noundef nonnull %7) #24
          to label %53 unwind label %81

29:                                               ; preds = %17
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %107

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %33 = extractvalue { ptr, i32 } %32, 1
  %34 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #21
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %107

36:                                               ; preds = %31
  %37 = extractvalue { ptr, i32 } %32, 0
  %38 = tail call ptr @__cxa_begin_catch(ptr %37) #21
  invoke void @_Z26expressionyy_delete_bufferP15yy_buffer_state(ptr noundef nonnull %7) #24
          to label %39 unwind label %51

39:                                               ; preds = %36
  %40 = load i64, ptr %18, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = shl nsw i64 %40, 4
  %44 = or disjoint i64 %43, 8
  br label %45

45:                                               ; preds = %42, %45
  %46 = phi i64 [ %47, %45 ], [ %44, %42 ]
  %47 = add nsw i64 %46, -16
  %48 = getelementptr inbounds i8, ptr %18, i64 %47
  tail call void @_ZN10Expression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %48) #26
  %49 = icmp eq i64 %47, 8
  br i1 %49, label %50, label %45

50:                                               ; preds = %45, %39
  tail call void @_ZdaPv(ptr noundef nonnull %18) #25
  invoke void @__cxa_rethrow() #30
          to label %112 unwind label %51

51:                                               ; preds = %50, %36
  %52 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %107 unwind label %109

53:                                               ; preds = %28
  %54 = load ptr, ptr @_ZL1e, align 8, !tbaa !45
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %26 to i64
  %57 = sub i64 %55, %56
  %58 = lshr exact i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, ptr %3, align 4, !tbaa !41
  %60 = shl i64 %57, 28
  %61 = ashr i64 %60, 32
  %62 = icmp ugt i64 %61, 1152921504606846975
  %63 = shl nsw i64 %61, 4
  %64 = or disjoint i64 %63, 8
  %65 = select i1 %62, i64 -1, i64 %64
  %66 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %65) #31
          to label %67 unwind label %81

67:                                               ; preds = %53
  store i64 %61, ptr %66, align 16
  %68 = getelementptr inbounds i8, ptr %66, i64 8
  %69 = icmp ult i64 %60, 4294967296
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %"class.Expression::Elem", ptr %68, i64 %61
  br label %72

72:                                               ; preds = %72, %70
  %73 = phi ptr [ %68, %70 ], [ %74, %72 ]
  tail call void @_ZN10Expression4ElemC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %73) #24
  %74 = getelementptr inbounds %"class.Expression::Elem", ptr %73, i64 1
  %75 = icmp eq ptr %74, %71
  br i1 %75, label %76, label %72

76:                                               ; preds = %72
  %77 = load i32, ptr %3, align 4, !tbaa !41
  br label %78

78:                                               ; preds = %76, %67
  %79 = phi i32 [ %77, %76 ], [ %59, %67 ]
  store ptr %68, ptr %2, align 8, !tbaa !45
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %83, label %95

81:                                               ; preds = %53, %28
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %107

83:                                               ; preds = %78, %88
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  %85 = getelementptr inbounds %"class.Expression::Elem", ptr %26, i64 %84
  %86 = load ptr, ptr %2, align 8, !tbaa !45
  %87 = getelementptr inbounds %"class.Expression::Elem", ptr %86, i64 %84
  invoke void @_ZN10Expression4ElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef nonnull align 8 dereferenceable(16) %85) #24
          to label %88 unwind label %93

88:                                               ; preds = %83
  %89 = add nuw nsw i64 %84, 1
  %90 = load i32, ptr %3, align 4, !tbaa !41
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %83, label %95, !llvm.loop !76

93:                                               ; preds = %83
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %107

95:                                               ; preds = %88, %78
  %96 = load i64, ptr %18, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %95
  %99 = shl nsw i64 %96, 4
  %100 = or disjoint i64 %99, 8
  br label %101

101:                                              ; preds = %98, %101
  %102 = phi i64 [ %103, %101 ], [ %100, %98 ]
  %103 = add nsw i64 %102, -16
  %104 = getelementptr inbounds i8, ptr %18, i64 %103
  tail call void @_ZN10Expression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %104) #26
  %105 = icmp eq i64 %103, 8
  br i1 %105, label %106, label %101

106:                                              ; preds = %101, %95
  tail call void @_ZdaPv(ptr noundef nonnull %18) #25
  tail call fastcc void @_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiEN5GuardD2Ev() #26
  ret void

107:                                              ; preds = %51, %29, %93, %81, %31, %15, %13
  %108 = phi { ptr, i32 } [ %14, %13 ], [ %16, %15 ], [ %30, %29 ], [ %94, %93 ], [ %82, %81 ], [ %32, %31 ], [ %52, %51 ]
  tail call fastcc void @_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiEN5GuardD2Ev() #26
  resume { ptr, i32 } %108

109:                                              ; preds = %51
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  tail call void @__clang_call_terminate(ptr %111) #28
  unreachable

112:                                              ; preds = %50, %12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiEN5GuardC2Ev() unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 !PGOFuncName !77 {
  %1 = load i1, ptr @_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiE6active, align 1
  br i1 %1, label %2, label %7

2:                                                ; preds = %0
  %3 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.75) #24
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #30
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6

7:                                                ; preds = %0
  store i1 true, ptr @_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiE6active, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: optsize
declare noundef ptr @_Z24expressionyy_scan_stringPKc(ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #17

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression4ElemC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  store i32 0, ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN10Expression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: optsize
declare void @_Z26expressionyy_delete_bufferP15yy_buffer_state(ptr noundef) local_unnamed_addr #3

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN10Expression4ElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiEN5GuardD2Ev() unnamed_addr #18 align 2 !prof !40 !PGOFuncName !78 {
  store i1 false, ptr @_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiE6active, align 1
  ret void
}

; Function Attrs: optsize
declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !59
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #26
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #26
  tail call void @_ZdlPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #26
  ret ptr %3
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #20

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(none) }
attributes #11 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { cold }
attributes #23 = { cold optsize }
attributes #24 = { optsize }
attributes #25 = { builtin nounwind optsize }
attributes #26 = { nounwind optsize }
attributes #27 = { nounwind optsize allocsize(0) }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind optsize willreturn memory(read) }
attributes #30 = { noreturn }
attributes #31 = { builtin optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!39}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412426}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38}
!36 = !{ptr @_Z10opp_strdupPKc, ptr @strlen, i64 188204299}
!37 = !{ptr @_Z10opp_strdupPKc, ptr @_Znam, i64 188204299}
!38 = !{ptr @_Z10opp_strdupPKc, ptr @strcpy, i64 188204299}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !43, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !43, i64 0}
!49 = !{!43, !43, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"expression.tab.cc:_ZL15yy_symbol_printP8_IO_FILEiPKPc"}
!53 = !{!"expression.tab.cc:_ZL15yy_reduce_printPPci"}
!54 = distinct !{!54, !51}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSN10Expression4ElemE", !57, i64 0, !43, i64 8}
!57 = !{!"_ZTSN10Expression4Elem4TypeE", !43, i64 0}
!58 = !{!"expression.tab.cc:_ZL11addFunctionPKci"}
!59 = !{!60, !60, i64 0}
!60 = !{!"vtable pointer", !44, i64 0}
!61 = !{!"expression.tab.cc:_ZL14addVariableRefPKc"}
!62 = !{!"expression.tab.cc:_ZL14yy_stack_printPsS_"}
!63 = distinct !{!63, !51}
!64 = !{!"expression.tab.cc:_ZL14yysyntax_errorPcii"}
!65 = distinct !{!65, !51}
!66 = distinct !{!66, !51}
!67 = !{!"expression.tab.cc:_ZL10yydestructPKciPPc"}
!68 = !{!"function_entry_count", i64 188204319}
!69 = !{!"branch_weights", i32 13, i32 188204308}
!70 = !{!"branch_weights", i32 7, i32 188204302}
!71 = !{!"expression.tab.cc:_ZL9yytnamerrPcPKc"}
!72 = distinct !{!72, !51}
!73 = !{!74, !42, i64 4}
!74 = !{!"_ZTS10LineColumn", !42, i64 0, !42, i64 4}
!75 = !{!74, !42, i64 0}
!76 = distinct !{!76, !51}
!77 = !{!"expression.tab.cc:_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiEN5GuardC2Ev"}
!78 = !{!"expression.tab.cc:_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiEN5GuardD2Ev"}
