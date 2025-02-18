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

$_ZN10Expression4ElemaSEPKc = comdat any

$__clang_call_terminate = comdat any

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
@_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiE6active = internal unnamed_addr global i1 false, align 1
@expressionyyin = external local_unnamed_addr global ptr, align 8
@expressionyyout = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [41 x i8] c"parser is unable to allocate work memory\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZL8resolver = internal unnamed_addr global ptr null, align 8
@_ZTISt9exception = external constant ptr
@.str.16 = private unnamed_addr constant [11 x i8] c"token %s (\00", align 1
@_ZL7yytname = internal unnamed_addr constant [52 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr null], align 16
@.str.17 = private unnamed_addr constant [11 x i8] c"nterm %s (\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"$end\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"$undefined\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"DOUBLETYPE\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"INTTYPE\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"STRINGTYPE\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"BOOLTYPE\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"TRUE_\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"FALSE_\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"INTCONSTANT\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"REALCONSTANT\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"STRINGCONSTANT\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"EQ_\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"NE_\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"GE_\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"LE_\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"AND_\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"OR_\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"XOR_\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"NOT_\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"BINAND_\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"BINOR_\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"BINXOR_\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"BINCOMPL_\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"SHIFTLEFT_\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"SHIFTRIGHT_\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"INVALID_CHAR\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"'?'\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"'>'\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"'<'\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"'+'\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"'-'\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"'*'\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"'/'\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"'%'\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"'^'\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"UMIN_\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"simple_expr\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"stringliteral\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"boolliteral\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"numliteral\00", align 1
@_ZL7yyrline = internal unnamed_addr constant [45 x i8] c"\00{{\7F\80\82\84\86\88\8A\8C\8F\93\95\97\99\9B\9D\A0\A2\A4\A7\AB\AD\AF\B2\B5\B7\B9\BC\BE\C0\C2\C4\C9\CA\CE\D3\D4\D5\D9\DE\E0\E5\E7", align 16
@.str.70 = private unnamed_addr constant [39 x i8] c"Reducing stack by rule %d (line %lu):\0A\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"   $%d = \00", align 1
@_ZL5yyrhs = internal unnamed_addr constant [164 x i8] c"+\00\FF,\FF-\FF',(\FF, ,\FF,!,\FF,\22,\FF,#,\FF,$,\FF,%,\FF!,\FF,\0D,\FF,\0E,\FF,\1E,\FF,\0F,\FF,\1F,\FF,\10,\FF,\11,\FF,\12,\FF,\13,\FF\14,\FF,\15,\FF,\16,\FF,\17,\FF\18,\FF,\19,\FF,\1A,\FF,\1C,\1D,\FF\09'(\FF\09',(\FF\09',),(\FF\09',),),(\FF\09',),),),(\FF.\FF/\FF\09\FF0\FF1\FF2\FF\0C\FF\07\FF\08\FF\0A\FF\0B\FF", align 16
@_ZL6yyprhs = internal unnamed_addr constant [45 x i8] c"\00\00\03\05\07\0B\0F\13\17\1B\1F#&*.26:>BFJMQUY\\`djnsz\83\8E\90\92\94\96\98\9A\9C\9E\A0\A2", align 16
@.str.72 = private unnamed_addr constant [10 x i8] c"Stack now\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@_ZZL14yysyntax_errorPciiE12yyunexpected = internal unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 16
@_ZZL14yysyntax_errorPciiE11yyexpecting = internal constant [15 x i8] c", expecting %s\00", align 1
@_ZZL14yysyntax_errorPciiE4yyor = internal constant [7 x i8] c" or %s\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1
@.str.75 = private unnamed_addr constant [49 x i8] c"non-reentrant parser invoked again while parsing\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_Z17expressionyyparsev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca [200 x i16], align 16
  %3 = alloca [200 x ptr], align 16
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %3) #21
  %5 = load i32, ptr @expressionyydebug, align 4, !tbaa !35
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !39
  %9 = tail call i64 @fwrite(ptr nonnull @.str, i64 15, i64 1, ptr %8) #22
  br label %10

10:                                               ; preds = %7, %0
  store i32 0, ptr @expressionyynerrs, align 4, !tbaa !35
  store i32 -2, ptr @expressionyychar, align 4, !tbaa !35
  store i16 0, ptr %2, align 16, !tbaa !41
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  br label %21

13:                                               ; preds = %403, %407, %103
  %14 = phi i64 [ %379, %403 ], [ %379, %407 ], [ %24, %103 ]
  %15 = phi ptr [ %385, %403 ], [ %385, %407 ], [ %105, %103 ]
  %16 = phi i32 [ %406, %403 ], [ %410, %407 ], [ %86, %103 ]
  %17 = add nsw i64 %14, 2
  %18 = getelementptr inbounds i8, ptr %2, i64 %17
  %19 = trunc i32 %16 to i16
  store i16 %19, ptr %18, align 2, !tbaa !41
  %20 = icmp slt i64 %14, 396
  br i1 %20, label %21, label %434

21:                                               ; preds = %10, %13
  %22 = phi i32 [ 0, %10 ], [ %16, %13 ]
  %23 = phi ptr [ %3, %10 ], [ %15, %13 ]
  %24 = phi i64 [ 0, %10 ], [ %17, %13 ]
  %25 = load i32, ptr @expressionyydebug, align 4, !tbaa !35
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr @stderr, align 8, !tbaa !39
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.1, i32 noundef %22) #22
  br label %30

30:                                               ; preds = %21, %27
  %31 = sext i32 %22 to i64
  %32 = getelementptr inbounds [82 x i16], ptr @_ZL6yypact, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !41
  %34 = sext i16 %33 to i32
  %35 = icmp eq i16 %33, -30
  br i1 %35, label %106, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr @expressionyychar, align 4, !tbaa !35
  %38 = icmp eq i32 %37, -2
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i32, ptr @expressionyydebug, align 4, !tbaa !35
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr @stderr, align 8, !tbaa !39
  %44 = call i64 @fwrite(ptr nonnull @.str.2, i64 17, i64 1, ptr %43) #22
  br label %45

45:                                               ; preds = %42, %39
  %46 = call noundef i32 @_Z15expressionyylexv()
  store i32 %46, ptr @expressionyychar, align 4, !tbaa !35
  br label %47

47:                                               ; preds = %45, %36
  %48 = load i32, ptr @expressionyychar, align 4, !tbaa !35
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  store i32 0, ptr @expressionyychar, align 4, !tbaa !35
  %51 = load i32, ptr @expressionyydebug, align 4, !tbaa !35
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @stderr, align 8, !tbaa !39
  %55 = call i64 @fwrite(ptr nonnull @.str.3, i64 21, i64 1, ptr %54) #22
  br label %73

56:                                               ; preds = %47
  %57 = icmp ult i32 %48, 284
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = zext nneg i32 %48 to i64
  %60 = getelementptr inbounds [284 x i8], ptr @_ZL11yytranslate, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !43
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %56, %58
  %64 = phi i32 [ %62, %58 ], [ 2, %56 ]
  %65 = load i32, ptr @expressionyydebug, align 4, !tbaa !35
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @stderr, align 8, !tbaa !39
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #22
  %70 = load ptr, ptr @stderr, align 8, !tbaa !39
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKPc(ptr noundef %70, i32 noundef %64)
  %71 = load ptr, ptr @stderr, align 8, !tbaa !39
  %72 = call i32 @fputc(i32 10, ptr %71)
  br label %73

73:                                               ; preds = %63, %67, %50, %53
  %74 = phi i32 [ 0, %53 ], [ 0, %50 ], [ %64, %67 ], [ %64, %63 ]
  %75 = add nsw i32 %74, %34
  %76 = icmp ugt i32 %75, 363
  br i1 %76, label %106, label %77

77:                                               ; preds = %73
  %78 = zext nneg i32 %75 to i64
  %79 = getelementptr inbounds [364 x i8], ptr @_ZL7yycheck, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !43
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %74, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %77
  %84 = getelementptr inbounds [364 x i8], ptr @_ZL7yytable, i64 0, i64 %78
  %85 = load i8, ptr %84, align 1, !tbaa !43
  %86 = zext i8 %85 to i32
  %87 = icmp eq i8 %85, 0
  br i1 %87, label %411, label %88

88:                                               ; preds = %83
  %89 = icmp eq i32 %75, 11
  br i1 %89, label %435, label %90

90:                                               ; preds = %88
  %91 = load i32, ptr @expressionyydebug, align 4, !tbaa !35
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr @stderr, align 8, !tbaa !39
  %95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #22
  %96 = load ptr, ptr @stderr, align 8, !tbaa !39
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKPc(ptr noundef %96, i32 noundef %74)
  %97 = load ptr, ptr @stderr, align 8, !tbaa !39
  %98 = call i32 @fputc(i32 10, ptr %97)
  br label %99

99:                                               ; preds = %93, %90
  %100 = load i32, ptr @expressionyychar, align 4, !tbaa !35
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 -2, ptr @expressionyychar, align 4, !tbaa !35
  br label %103

103:                                              ; preds = %102, %99
  %104 = load ptr, ptr @expressionyylval, align 8, !tbaa !39
  %105 = getelementptr inbounds ptr, ptr %23, i64 1
  store ptr %104, ptr %105, align 8, !tbaa !39
  br label %13

106:                                              ; preds = %73, %77, %30
  %107 = getelementptr inbounds [82 x i8], ptr @_ZL8yydefact, i64 0, i64 %31
  %108 = load i8, ptr %107, align 1, !tbaa !43
  %109 = zext i8 %108 to i32
  %110 = icmp eq i8 %108, 0
  br i1 %110, label %411, label %111

111:                                              ; preds = %106
  %112 = zext i8 %108 to i64
  %113 = getelementptr inbounds [45 x i8], ptr @_ZL4yyr2, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !43
  %115 = zext i8 %114 to i64
  %116 = sub nsw i64 1, %115
  %117 = getelementptr inbounds ptr, ptr %23, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !39
  %119 = load i32, ptr @expressionyydebug, align 4, !tbaa !35
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %148, label %121

121:                                              ; preds = %111
  %122 = getelementptr inbounds [45 x i8], ptr @_ZL7yyrline, i64 0, i64 %112
  %123 = load i8, ptr %122, align 1, !tbaa !43
  %124 = zext i8 %123 to i64
  %125 = load ptr, ptr @stderr, align 8, !tbaa !39
  %126 = add nsw i32 %109, -1
  %127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.70, i32 noundef %126, i64 noundef %124) #22
  %128 = getelementptr inbounds [45 x i8], ptr @_ZL6yyprhs, i64 0, i64 %112
  %129 = call i8 @llvm.umax.i8(i8 %114, i8 1)
  %130 = zext i8 %129 to i64
  br label %131

131:                                              ; preds = %121, %131
  %132 = phi i64 [ 0, %121 ], [ %134, %131 ]
  %133 = load ptr, ptr @stderr, align 8, !tbaa !39
  %134 = add nuw nsw i64 %132, 1
  %135 = trunc i64 %134 to i32
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.71, i32 noundef %135) #22
  %137 = load ptr, ptr @stderr, align 8, !tbaa !39
  %138 = load i8, ptr %128, align 1, !tbaa !43
  %139 = zext i8 %138 to i64
  %140 = add nuw i64 %132, %139
  %141 = and i64 %140, 4294967295
  %142 = getelementptr inbounds [164 x i8], ptr @_ZL5yyrhs, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !43
  %144 = sext i8 %143 to i32
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKPc(ptr noundef %137, i32 noundef %144)
  %145 = load ptr, ptr @stderr, align 8, !tbaa !39
  %146 = call i32 @fputc(i32 10, ptr %145)
  %147 = icmp eq i64 %134, %130
  br i1 %147, label %148, label %131, !llvm.loop !44

148:                                              ; preds = %131, %111
  switch i8 %108, label %363 [
    i8 5, label %149
    i8 6, label %153
    i8 7, label %157
    i8 8, label %161
    i8 9, label %165
    i8 10, label %169
    i8 11, label %173
    i8 12, label %177
    i8 13, label %181
    i8 14, label %185
    i8 15, label %189
    i8 16, label %193
    i8 17, label %197
    i8 18, label %201
    i8 19, label %205
    i8 20, label %209
    i8 21, label %213
    i8 22, label %217
    i8 23, label %221
    i8 24, label %225
    i8 25, label %229
    i8 26, label %233
    i8 27, label %237
    i8 28, label %241
    i8 29, label %245
    i8 30, label %251
    i8 31, label %257
    i8 32, label %263
    i8 33, label %269
    i8 36, label %275
    i8 40, label %309
    i8 41, label %336
    i8 42, label %340
    i8 43, label %344
    i8 44, label %354
  ]

149:                                              ; preds = %148
  %150 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %151 = getelementptr inbounds %"class.Expression::Elem", ptr %150, i64 1
  store ptr %151, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %150, align 8, !tbaa !47
  %152 = getelementptr inbounds %"class.Expression::Elem", ptr %150, i64 0, i32 1
  store i32 0, ptr %152, align 8, !tbaa !43
  br label %363

153:                                              ; preds = %148
  %154 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %155 = getelementptr inbounds %"class.Expression::Elem", ptr %154, i64 1
  store ptr %155, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %154, align 8, !tbaa !47
  %156 = getelementptr inbounds %"class.Expression::Elem", ptr %154, i64 0, i32 1
  store i32 1, ptr %156, align 8, !tbaa !43
  br label %363

157:                                              ; preds = %148
  %158 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %159 = getelementptr inbounds %"class.Expression::Elem", ptr %158, i64 1
  store ptr %159, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %158, align 8, !tbaa !47
  %160 = getelementptr inbounds %"class.Expression::Elem", ptr %158, i64 0, i32 1
  store i32 2, ptr %160, align 8, !tbaa !43
  br label %363

161:                                              ; preds = %148
  %162 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %163 = getelementptr inbounds %"class.Expression::Elem", ptr %162, i64 1
  store ptr %163, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %162, align 8, !tbaa !47
  %164 = getelementptr inbounds %"class.Expression::Elem", ptr %162, i64 0, i32 1
  store i32 3, ptr %164, align 8, !tbaa !43
  br label %363

165:                                              ; preds = %148
  %166 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %167 = getelementptr inbounds %"class.Expression::Elem", ptr %166, i64 1
  store ptr %167, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %166, align 8, !tbaa !47
  %168 = getelementptr inbounds %"class.Expression::Elem", ptr %166, i64 0, i32 1
  store i32 4, ptr %168, align 8, !tbaa !43
  br label %363

169:                                              ; preds = %148
  %170 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %171 = getelementptr inbounds %"class.Expression::Elem", ptr %170, i64 1
  store ptr %171, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %170, align 8, !tbaa !47
  %172 = getelementptr inbounds %"class.Expression::Elem", ptr %170, i64 0, i32 1
  store i32 5, ptr %172, align 8, !tbaa !43
  br label %363

173:                                              ; preds = %148
  %174 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %175 = getelementptr inbounds %"class.Expression::Elem", ptr %174, i64 1
  store ptr %175, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %174, align 8, !tbaa !47
  %176 = getelementptr inbounds %"class.Expression::Elem", ptr %174, i64 0, i32 1
  store i32 6, ptr %176, align 8, !tbaa !43
  br label %363

177:                                              ; preds = %148
  %178 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %179 = getelementptr inbounds %"class.Expression::Elem", ptr %178, i64 1
  store ptr %179, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %178, align 8, !tbaa !47
  %180 = getelementptr inbounds %"class.Expression::Elem", ptr %178, i64 0, i32 1
  store i32 7, ptr %180, align 8, !tbaa !43
  br label %363

181:                                              ; preds = %148
  %182 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %183 = getelementptr inbounds %"class.Expression::Elem", ptr %182, i64 1
  store ptr %183, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %182, align 8, !tbaa !47
  %184 = getelementptr inbounds %"class.Expression::Elem", ptr %182, i64 0, i32 1
  store i32 8, ptr %184, align 8, !tbaa !43
  br label %363

185:                                              ; preds = %148
  %186 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %187 = getelementptr inbounds %"class.Expression::Elem", ptr %186, i64 1
  store ptr %187, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %186, align 8, !tbaa !47
  %188 = getelementptr inbounds %"class.Expression::Elem", ptr %186, i64 0, i32 1
  store i32 9, ptr %188, align 8, !tbaa !43
  br label %363

189:                                              ; preds = %148
  %190 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %191 = getelementptr inbounds %"class.Expression::Elem", ptr %190, i64 1
  store ptr %191, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %190, align 8, !tbaa !47
  %192 = getelementptr inbounds %"class.Expression::Elem", ptr %190, i64 0, i32 1
  store i32 10, ptr %192, align 8, !tbaa !43
  br label %363

193:                                              ; preds = %148
  %194 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %195 = getelementptr inbounds %"class.Expression::Elem", ptr %194, i64 1
  store ptr %195, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %194, align 8, !tbaa !47
  %196 = getelementptr inbounds %"class.Expression::Elem", ptr %194, i64 0, i32 1
  store i32 11, ptr %196, align 8, !tbaa !43
  br label %363

197:                                              ; preds = %148
  %198 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %199 = getelementptr inbounds %"class.Expression::Elem", ptr %198, i64 1
  store ptr %199, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %198, align 8, !tbaa !47
  %200 = getelementptr inbounds %"class.Expression::Elem", ptr %198, i64 0, i32 1
  store i32 12, ptr %200, align 8, !tbaa !43
  br label %363

201:                                              ; preds = %148
  %202 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %203 = getelementptr inbounds %"class.Expression::Elem", ptr %202, i64 1
  store ptr %203, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %202, align 8, !tbaa !47
  %204 = getelementptr inbounds %"class.Expression::Elem", ptr %202, i64 0, i32 1
  store i32 14, ptr %204, align 8, !tbaa !43
  br label %363

205:                                              ; preds = %148
  %206 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %207 = getelementptr inbounds %"class.Expression::Elem", ptr %206, i64 1
  store ptr %207, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %206, align 8, !tbaa !47
  %208 = getelementptr inbounds %"class.Expression::Elem", ptr %206, i64 0, i32 1
  store i32 15, ptr %208, align 8, !tbaa !43
  br label %363

209:                                              ; preds = %148
  %210 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %211 = getelementptr inbounds %"class.Expression::Elem", ptr %210, i64 1
  store ptr %211, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %210, align 8, !tbaa !47
  %212 = getelementptr inbounds %"class.Expression::Elem", ptr %210, i64 0, i32 1
  store i32 16, ptr %212, align 8, !tbaa !43
  br label %363

213:                                              ; preds = %148
  %214 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %215 = getelementptr inbounds %"class.Expression::Elem", ptr %214, i64 1
  store ptr %215, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %214, align 8, !tbaa !47
  %216 = getelementptr inbounds %"class.Expression::Elem", ptr %214, i64 0, i32 1
  store i32 17, ptr %216, align 8, !tbaa !43
  br label %363

217:                                              ; preds = %148
  %218 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %219 = getelementptr inbounds %"class.Expression::Elem", ptr %218, i64 1
  store ptr %219, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %218, align 8, !tbaa !47
  %220 = getelementptr inbounds %"class.Expression::Elem", ptr %218, i64 0, i32 1
  store i32 18, ptr %220, align 8, !tbaa !43
  br label %363

221:                                              ; preds = %148
  %222 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %223 = getelementptr inbounds %"class.Expression::Elem", ptr %222, i64 1
  store ptr %223, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %222, align 8, !tbaa !47
  %224 = getelementptr inbounds %"class.Expression::Elem", ptr %222, i64 0, i32 1
  store i32 19, ptr %224, align 8, !tbaa !43
  br label %363

225:                                              ; preds = %148
  %226 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %227 = getelementptr inbounds %"class.Expression::Elem", ptr %226, i64 1
  store ptr %227, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %226, align 8, !tbaa !47
  %228 = getelementptr inbounds %"class.Expression::Elem", ptr %226, i64 0, i32 1
  store i32 20, ptr %228, align 8, !tbaa !43
  br label %363

229:                                              ; preds = %148
  %230 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %231 = getelementptr inbounds %"class.Expression::Elem", ptr %230, i64 1
  store ptr %231, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %230, align 8, !tbaa !47
  %232 = getelementptr inbounds %"class.Expression::Elem", ptr %230, i64 0, i32 1
  store i32 21, ptr %232, align 8, !tbaa !43
  br label %363

233:                                              ; preds = %148
  %234 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %235 = getelementptr inbounds %"class.Expression::Elem", ptr %234, i64 1
  store ptr %235, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %234, align 8, !tbaa !47
  %236 = getelementptr inbounds %"class.Expression::Elem", ptr %234, i64 0, i32 1
  store i32 22, ptr %236, align 8, !tbaa !43
  br label %363

237:                                              ; preds = %148
  %238 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %239 = getelementptr inbounds %"class.Expression::Elem", ptr %238, i64 1
  store ptr %239, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %238, align 8, !tbaa !47
  %240 = getelementptr inbounds %"class.Expression::Elem", ptr %238, i64 0, i32 1
  store i32 23, ptr %240, align 8, !tbaa !43
  br label %363

241:                                              ; preds = %148
  %242 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %243 = getelementptr inbounds %"class.Expression::Elem", ptr %242, i64 1
  store ptr %243, ptr @_ZL1e, align 8, !tbaa !39
  store i32 5, ptr %242, align 8, !tbaa !47
  %244 = getelementptr inbounds %"class.Expression::Elem", ptr %242, i64 0, i32 1
  store i32 13, ptr %244, align 8, !tbaa !43
  br label %363

245:                                              ; preds = %148
  %246 = getelementptr inbounds ptr, ptr %23, i64 -2
  %247 = load ptr, ptr %246, align 8, !tbaa !39
  call fastcc void @_ZL11addFunctionPKci(ptr noundef %247, i32 noundef 0)
  %248 = load ptr, ptr %246, align 8, !tbaa !39
  %249 = icmp eq ptr %248, null
  br i1 %249, label %363, label %250

250:                                              ; preds = %245
  call void @_ZdaPv(ptr noundef %248) #23
  br label %363

251:                                              ; preds = %148
  %252 = getelementptr inbounds ptr, ptr %23, i64 -3
  %253 = load ptr, ptr %252, align 8, !tbaa !39
  call fastcc void @_ZL11addFunctionPKci(ptr noundef %253, i32 noundef 1)
  %254 = load ptr, ptr %252, align 8, !tbaa !39
  %255 = icmp eq ptr %254, null
  br i1 %255, label %363, label %256

256:                                              ; preds = %251
  call void @_ZdaPv(ptr noundef %254) #23
  br label %363

257:                                              ; preds = %148
  %258 = getelementptr inbounds ptr, ptr %23, i64 -5
  %259 = load ptr, ptr %258, align 8, !tbaa !39
  call fastcc void @_ZL11addFunctionPKci(ptr noundef %259, i32 noundef 2)
  %260 = load ptr, ptr %258, align 8, !tbaa !39
  %261 = icmp eq ptr %260, null
  br i1 %261, label %363, label %262

262:                                              ; preds = %257
  call void @_ZdaPv(ptr noundef %260) #23
  br label %363

263:                                              ; preds = %148
  %264 = getelementptr inbounds ptr, ptr %23, i64 -7
  %265 = load ptr, ptr %264, align 8, !tbaa !39
  call fastcc void @_ZL11addFunctionPKci(ptr noundef %265, i32 noundef 3)
  %266 = load ptr, ptr %264, align 8, !tbaa !39
  %267 = icmp eq ptr %266, null
  br i1 %267, label %363, label %268

268:                                              ; preds = %263
  call void @_ZdaPv(ptr noundef %266) #23
  br label %363

269:                                              ; preds = %148
  %270 = getelementptr inbounds ptr, ptr %23, i64 -9
  %271 = load ptr, ptr %270, align 8, !tbaa !39
  call fastcc void @_ZL11addFunctionPKci(ptr noundef %271, i32 noundef 4)
  %272 = load ptr, ptr %270, align 8, !tbaa !39
  %273 = icmp eq ptr %272, null
  br i1 %273, label %363, label %274

274:                                              ; preds = %269
  call void @_ZdaPv(ptr noundef %272) #23
  br label %363

275:                                              ; preds = %148
  %276 = load ptr, ptr %23, align 8, !tbaa !39
  %277 = load ptr, ptr @_ZL8resolver, align 8, !tbaa !39
  %278 = load ptr, ptr %277, align 8, !tbaa !50
  %279 = getelementptr inbounds ptr, ptr %278, i64 2
  %280 = load ptr, ptr %279, align 8
  %281 = invoke noundef ptr %280(ptr noundef nonnull align 8 dereferenceable(8) %277, ptr noundef %276)
          to label %282 unwind label %288

282:                                              ; preds = %275
  %283 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %284 = getelementptr inbounds %"class.Expression::Elem", ptr %283, i64 1
  store ptr %284, ptr @_ZL1e, align 8, !tbaa !39
  store i32 4, ptr %283, align 8, !tbaa !47
  %285 = getelementptr inbounds %"class.Expression::Elem", ptr %283, i64 0, i32 1
  store ptr %281, ptr %285, align 8, !tbaa !43
  %286 = load ptr, ptr %23, align 8, !tbaa !39
  %287 = icmp eq ptr %286, null
  br i1 %287, label %363, label %308

288:                                              ; preds = %275
  %289 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %290 = extractvalue { ptr, i32 } %289, 1
  %291 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #21
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %303

293:                                              ; preds = %288
  %294 = extractvalue { ptr, i32 } %289, 0
  %295 = call ptr @__cxa_begin_catch(ptr %294) #21
  %296 = load ptr, ptr %295, align 8, !tbaa !50
  %297 = getelementptr inbounds ptr, ptr %296, i64 2
  %298 = load ptr, ptr %297, align 8
  %299 = call noundef ptr %298(ptr noundef nonnull align 8 dereferenceable(8) %295) #21
  invoke void @_Z17expressionyyerrorPKc(ptr noundef %299)
          to label %300 unwind label %301

300:                                              ; preds = %293
  unreachable

301:                                              ; preds = %293
  %302 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %303 unwind label %305

303:                                              ; preds = %288, %301, %335
  %304 = phi { ptr, i32 } [ %326, %335 ], [ %289, %288 ], [ %302, %301 ]
  resume { ptr, i32 } %304

305:                                              ; preds = %301
  %306 = landingpad { ptr, i32 }
          catch ptr null
  %307 = extractvalue { ptr, i32 } %306, 0
  call void @__clang_call_terminate(ptr %307) #24
  unreachable

308:                                              ; preds = %282
  call void @_ZdaPv(ptr noundef %286) #23
  br label %363

309:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  %310 = load ptr, ptr %23, align 8, !tbaa !39
  call void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %310)
  %311 = load ptr, ptr %4, align 8, !tbaa !52
  %312 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %313 = getelementptr inbounds %"class.Expression::Elem", ptr %312, i64 1
  store ptr %313, ptr @_ZL1e, align 8, !tbaa !39
  invoke void @_ZN10Expression4ElemaSEPKc(ptr noundef nonnull align 8 dereferenceable(16) %312, ptr noundef %311)
          to label %314 unwind label %325

314:                                              ; preds = %309
  %315 = load ptr, ptr %4, align 8, !tbaa !52
  %316 = icmp eq ptr %315, %11
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load i64, ptr %12, align 8, !tbaa !56
  %319 = icmp ult i64 %318, 16
  call void @llvm.assume(i1 %319)
  br label %321

320:                                              ; preds = %314
  call void @_ZdlPv(ptr noundef %315) #23
  br label %321

321:                                              ; preds = %317, %320
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  %322 = load ptr, ptr %23, align 8, !tbaa !39
  %323 = icmp eq ptr %322, null
  br i1 %323, label %363, label %324

324:                                              ; preds = %321
  call void @_ZdaPv(ptr noundef %322) #23
  br label %363

325:                                              ; preds = %309
  %326 = landingpad { ptr, i32 }
          cleanup
  %327 = load ptr, ptr %4, align 8, !tbaa !52
  %328 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %329 = icmp eq ptr %327, %328
  br i1 %329, label %330, label %334

330:                                              ; preds = %325
  %331 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %332 = load i64, ptr %331, align 8, !tbaa !56
  %333 = icmp ult i64 %332, 16
  call void @llvm.assume(i1 %333)
  br label %335

334:                                              ; preds = %325
  call void @_ZdlPv(ptr noundef %327) #23
  br label %335

335:                                              ; preds = %330, %334
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #21
  br label %303

336:                                              ; preds = %148
  %337 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %338 = getelementptr inbounds %"class.Expression::Elem", ptr %337, i64 1
  store ptr %338, ptr @_ZL1e, align 8, !tbaa !39
  store i32 1, ptr %337, align 8, !tbaa !47
  %339 = getelementptr inbounds %"class.Expression::Elem", ptr %337, i64 0, i32 1
  store i8 1, ptr %339, align 8, !tbaa !43
  br label %363

340:                                              ; preds = %148
  %341 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %342 = getelementptr inbounds %"class.Expression::Elem", ptr %341, i64 1
  store ptr %342, ptr @_ZL1e, align 8, !tbaa !39
  store i32 1, ptr %341, align 8, !tbaa !47
  %343 = getelementptr inbounds %"class.Expression::Elem", ptr %341, i64 0, i32 1
  store i8 0, ptr %343, align 8, !tbaa !43
  br label %363

344:                                              ; preds = %148
  %345 = load ptr, ptr %23, align 8, !tbaa !39
  %346 = call noundef i64 @_Z8opp_atolPKc(ptr noundef %345)
  %347 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %348 = getelementptr inbounds %"class.Expression::Elem", ptr %347, i64 1
  store ptr %348, ptr @_ZL1e, align 8, !tbaa !39
  store i32 2, ptr %347, align 8, !tbaa !47
  %349 = sitofp i64 %346 to double
  %350 = getelementptr inbounds %"class.Expression::Elem", ptr %347, i64 0, i32 1
  store double %349, ptr %350, align 8, !tbaa !43
  %351 = load ptr, ptr %23, align 8, !tbaa !39
  %352 = icmp eq ptr %351, null
  br i1 %352, label %363, label %353

353:                                              ; preds = %344
  call void @_ZdaPv(ptr noundef %351) #23
  br label %363

354:                                              ; preds = %148
  %355 = load ptr, ptr %23, align 8, !tbaa !39
  %356 = call noundef double @_Z8opp_atofPKc(ptr noundef %355)
  %357 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %358 = getelementptr inbounds %"class.Expression::Elem", ptr %357, i64 1
  store ptr %358, ptr @_ZL1e, align 8, !tbaa !39
  store i32 2, ptr %357, align 8, !tbaa !47
  %359 = getelementptr inbounds %"class.Expression::Elem", ptr %357, i64 0, i32 1
  store double %356, ptr %359, align 8, !tbaa !43
  %360 = load ptr, ptr %23, align 8, !tbaa !39
  %361 = icmp eq ptr %360, null
  br i1 %361, label %363, label %362

362:                                              ; preds = %354
  call void @_ZdaPv(ptr noundef %360) #23
  br label %363

363:                                              ; preds = %149, %153, %157, %161, %165, %169, %173, %177, %181, %185, %189, %193, %197, %201, %205, %209, %213, %217, %221, %225, %229, %233, %237, %241, %336, %340, %250, %245, %256, %251, %262, %257, %268, %263, %274, %269, %308, %282, %324, %321, %353, %344, %362, %354, %148
  %364 = load i32, ptr @expressionyydebug, align 4, !tbaa !35
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %375, label %366

366:                                              ; preds = %363
  %367 = load ptr, ptr @stderr, align 8, !tbaa !39
  %368 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %367, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #22
  %369 = load ptr, ptr @stderr, align 8, !tbaa !39
  %370 = getelementptr inbounds [45 x i8], ptr @_ZL4yyr1, i64 0, i64 %112
  %371 = load i8, ptr %370, align 1, !tbaa !43
  %372 = zext i8 %371 to i32
  call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKPc(ptr noundef %369, i32 noundef %372)
  %373 = load ptr, ptr @stderr, align 8, !tbaa !39
  %374 = call i32 @fputc(i32 10, ptr %373)
  br label %375

375:                                              ; preds = %366, %363
  %376 = sub nsw i64 0, %115
  %377 = getelementptr inbounds ptr, ptr %23, i64 %376
  %378 = shl nsw i64 %376, 1
  %379 = add nsw i64 %378, %24
  %380 = getelementptr inbounds i8, ptr %2, i64 %379
  %381 = load i32, ptr @expressionyydebug, align 4, !tbaa !35
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %384, label %383

383:                                              ; preds = %375
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %380)
  br label %384

384:                                              ; preds = %383, %375
  %385 = getelementptr inbounds ptr, ptr %377, i64 1
  store ptr %118, ptr %385, align 8, !tbaa !39
  %386 = getelementptr inbounds [45 x i8], ptr @_ZL4yyr1, i64 0, i64 %112
  %387 = load i8, ptr %386, align 1, !tbaa !43
  %388 = zext i8 %387 to i64
  %389 = add nsw i64 %388, -42
  %390 = getelementptr inbounds [9 x i8], ptr @_ZL7yypgoto, i64 0, i64 %389
  %391 = load i8, ptr %390, align 1, !tbaa !43
  %392 = sext i8 %391 to i32
  %393 = load i16, ptr %380, align 2, !tbaa !41
  %394 = sext i16 %393 to i32
  %395 = add nsw i32 %394, %392
  %396 = icmp ult i32 %395, 364
  br i1 %396, label %397, label %407

397:                                              ; preds = %384
  %398 = zext nneg i32 %395 to i64
  %399 = getelementptr inbounds [364 x i8], ptr @_ZL7yycheck, i64 0, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !43
  %401 = sext i8 %400 to i16
  %402 = icmp eq i16 %393, %401
  br i1 %402, label %403, label %407

403:                                              ; preds = %397
  %404 = getelementptr inbounds [364 x i8], ptr @_ZL7yytable, i64 0, i64 %398
  %405 = load i8, ptr %404, align 1, !tbaa !43
  %406 = zext i8 %405 to i32
  br label %13

407:                                              ; preds = %397, %384
  %408 = getelementptr inbounds [9 x i8], ptr @_ZL9yydefgoto, i64 0, i64 %389
  %409 = load i8, ptr %408, align 1, !tbaa !43
  %410 = sext i8 %409 to i32
  br label %13

411:                                              ; preds = %106, %83
  %412 = load i32, ptr @expressionyynerrs, align 4, !tbaa !35
  %413 = add nsw i32 %412, 1
  store i32 %413, ptr @expressionyynerrs, align 4, !tbaa !35
  %414 = load i32, ptr @expressionyychar, align 4, !tbaa !35
  %415 = call fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef null, i32 noundef %22, i32 noundef %414)
  %416 = icmp ugt i64 %415, 128
  br i1 %416, label %417, label %425

417:                                              ; preds = %411
  %418 = shl i64 %415, 1
  %419 = icmp sgt i64 %415, -1
  %420 = select i1 %419, i64 %418, i64 -1
  %421 = call noalias ptr @malloc(i64 noundef %420) #25
  %422 = icmp eq ptr %421, null
  %423 = select i1 %422, i64 128, i64 %420
  %424 = select i1 %422, ptr %1, ptr %421
  br label %425

425:                                              ; preds = %417, %411
  %426 = phi i64 [ %423, %417 ], [ 128, %411 ]
  %427 = phi ptr [ %424, %417 ], [ %1, %411 ]
  %428 = add i64 %415, -1
  %429 = icmp ult i64 %428, %426
  br i1 %429, label %430, label %433

430:                                              ; preds = %425
  %431 = load i32, ptr @expressionyychar, align 4, !tbaa !35
  %432 = call fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef %427, i32 noundef %22, i32 noundef %431)
  call void @_Z17expressionyyerrorPKc(ptr noundef %427)
  unreachable

433:                                              ; preds = %425
  call void @_Z17expressionyyerrorPKc(ptr noundef nonnull @.str.9)
  unreachable

434:                                              ; preds = %13
  call void @_Z17expressionyyerrorPKc(ptr noundef nonnull @.str.12)
  unreachable

435:                                              ; preds = %88
  %436 = getelementptr inbounds i8, ptr %2, i64 %24
  %437 = load i32, ptr @expressionyychar, align 4
  switch i32 %437, label %438 [
    i32 -2, label %439
    i32 0, label %439
  ]

438:                                              ; preds = %435
  call fastcc void @_ZL10yydestructPKciPPc(ptr noundef nonnull @.str.13, i32 noundef %74)
  br label %439

439:                                              ; preds = %435, %435, %438
  %440 = load i32, ptr @expressionyydebug, align 4, !tbaa !35
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %439
  call fastcc void @_ZL14yy_stack_printPsS_(ptr noundef nonnull %2, ptr noundef nonnull %436)
  br label %443

443:                                              ; preds = %442, %439
  %444 = icmp eq i64 %24, 0
  br i1 %444, label %454, label %445

445:                                              ; preds = %443, %445
  %446 = phi ptr [ %452, %445 ], [ %436, %443 ]
  %447 = load i16, ptr %446, align 2, !tbaa !41
  %448 = sext i16 %447 to i64
  %449 = getelementptr inbounds [82 x i8], ptr @_ZL6yystos, i64 0, i64 %448
  %450 = load i8, ptr %449, align 1, !tbaa !43
  %451 = zext i8 %450 to i32
  call fastcc void @_ZL10yydestructPKciPPc(ptr noundef nonnull @.str.14, i32 noundef %451)
  %452 = getelementptr inbounds i16, ptr %446, i64 -1
  %453 = icmp eq ptr %452, %2
  br i1 %453, label %454, label %445, !llvm.loop !57

454:                                              ; preds = %445, %443
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #21
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare noundef i32 @_Z15expressionyylexv() local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKPc(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !34 {
  %3 = icmp slt i32 %1, 42
  %4 = zext nneg i32 %1 to i64
  %5 = sext i32 %1 to i64
  %6 = select i1 %3, i64 %5, i64 %4
  %7 = select i1 %3, ptr @.str.16, ptr @.str.17
  %8 = getelementptr inbounds [52 x ptr], ptr @_ZL7yytname, i64 0, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %9)
  %11 = tail call i32 @fputc(i32 41, ptr %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZL11addFunctionPKci(ptr noundef %0, i32 noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = load ptr, ptr @_ZL8resolver, align 8, !tbaa !39
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %0, i32 noundef %1)
          to label %8 unwind label %12

8:                                                ; preds = %2
  %9 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %10 = getelementptr inbounds %"class.Expression::Elem", ptr %9, i64 1
  store ptr %10, ptr @_ZL1e, align 8, !tbaa !39
  store i32 4, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %"class.Expression::Elem", ptr %9, i64 0, i32 1
  store ptr %7, ptr %11, align 8, !tbaa !43
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %14 = extractvalue { ptr, i32 } %13, 1
  %15 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #21
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = extractvalue { ptr, i32 } %13, 0
  %19 = tail call ptr @__cxa_begin_catch(ptr %18) #21
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19) #21
  invoke void @_Z17expressionyyerrorPKc(ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %17
  unreachable

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %27 unwind label %29

27:                                               ; preds = %25, %12
  %28 = phi { ptr, i32 } [ %13, %12 ], [ %26, %25 ]
  resume { ptr, i32 } %28

29:                                               ; preds = %25
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #24
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10Expression4ElemaSEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !34 {
  store i32 3, ptr %0, align 8, !tbaa !47
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !43
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %9 = add i64 %8, 1
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #27
  %11 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %1) #21
  br label %12

12:                                               ; preds = %2, %4, %7
  %13 = phi ptr [ %10, %7 ], [ null, %4 ], [ null, %2 ]
  %14 = getelementptr inbounds %"class.Expression::Elem", ptr %0, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !43
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef i64 @_Z8opp_atolPKc(ptr noundef) local_unnamed_addr #3

declare noundef double @_Z8opp_atofPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL14yy_stack_printPsS_(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !prof !34 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !39
  %4 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 9, i64 1, ptr %3) #22
  %5 = icmp ugt ptr %0, %1
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %12, %6 ], [ %0, %2 ]
  %8 = load ptr, ptr @stderr, align 8, !tbaa !39
  %9 = load i16, ptr %7, align 2, !tbaa !41
  %10 = sext i16 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.73, i32 noundef %10) #22
  %12 = getelementptr inbounds i16, ptr %7, i64 1
  %13 = icmp ugt ptr %12, %1
  br i1 %13, label %14, label %6, !llvm.loop !58

14:                                               ; preds = %6, %2
  %15 = load ptr, ptr @stderr, align 8, !tbaa !39
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @_ZL14yysyntax_errorPcii(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !34 {
  %4 = alloca [5 x ptr], align 16
  %5 = alloca [60 x i8], align 16
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [82 x i16], ptr @_ZL6yypact, i64 0, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !41
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i16 %8, -30
  br i1 %10, label %11, label %109

11:                                               ; preds = %3
  %12 = icmp ult i32 %2, 284
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = zext nneg i32 %2 to i64
  %15 = getelementptr inbounds [284 x i8], ptr @_ZL11yytranslate, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !43
  %17 = zext i8 %16 to i64
  br label %18

18:                                               ; preds = %11, %13
  %19 = phi i64 [ %17, %13 ], [ 2, %11 ]
  %20 = getelementptr inbounds [52 x ptr], ptr @_ZL7yytname, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = tail call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef null, ptr noundef %21)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #21
  %23 = icmp slt i16 %8, 0
  %24 = sub nsw i32 0, %9
  %25 = select i1 %23, i32 %24, i32 0
  %26 = sub nsw i32 364, %9
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 42)
  store ptr %21, ptr %4, align 16, !tbaa !39
  %28 = getelementptr inbounds i8, ptr %5, i64 27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %5, ptr noundef nonnull align 16 dereferenceable(28) @_ZZL14yysyntax_errorPciiE12yyunexpected, i64 28, i1 false) #21
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
  %43 = load i8, ptr %42, align 1, !tbaa !43
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
  store i8 0, ptr %28, align 1, !tbaa !43
  br label %72

52:                                               ; preds = %49
  %53 = getelementptr inbounds [52 x ptr], ptr @_ZL7yytname, i64 0, i64 %35
  %54 = load ptr, ptr %53, align 8, !tbaa !39
  %55 = add nsw i32 %36, 1
  %56 = sext i32 %36 to i64
  %57 = getelementptr inbounds [5 x ptr], ptr %4, i64 0, i64 %56
  store ptr %54, ptr %57, align 8, !tbaa !39
  %58 = call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef null, ptr noundef %54)
  %59 = add i64 %58, %37
  %60 = icmp ult i64 %59, %37
  %61 = zext i1 %60 to i32
  %62 = or i32 %40, %61
  %63 = call ptr @stpcpy(ptr noundef %39, ptr noundef %38) #21
  br label %64

64:                                               ; preds = %34, %52
  %65 = phi i32 [ %62, %52 ], [ %40, %34 ]
  %66 = phi ptr [ %63, %52 ], [ %39, %34 ]
  %67 = phi ptr [ @_ZZL14yysyntax_errorPciiE4yyor, %52 ], [ %38, %34 ]
  %68 = phi i64 [ %59, %52 ], [ %37, %34 ]
  %69 = phi i32 [ %55, %52 ], [ %36, %34 ]
  %70 = add nsw i64 %35, 1
  %71 = icmp slt i64 %70, %33
  br i1 %71, label %34, label %72, !llvm.loop !59

72:                                               ; preds = %64, %18, %51
  %73 = phi i32 [ %40, %51 ], [ 0, %18 ], [ %65, %64 ]
  %74 = phi i64 [ %22, %51 ], [ %22, %18 ], [ %68, %64 ]
  %75 = phi i32 [ 1, %51 ], [ 1, %18 ], [ %69, %64 ]
  %76 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #26
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
  %88 = load i8, ptr %85, align 1, !tbaa !43
  store i8 %88, ptr %86, align 1, !tbaa !43
  switch i8 %88, label %101 [
    i8 0, label %107
    i8 37, label %89
  ]

89:                                               ; preds = %84
  %90 = getelementptr inbounds i8, ptr %85, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !43
  %92 = icmp eq i8 %91, 115
  %93 = icmp slt i32 %87, %75
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = add nsw i32 %87, 1
  %97 = sext i32 %87 to i64
  %98 = getelementptr inbounds [5 x ptr], ptr %4, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !39
  %100 = call fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef nonnull %86, ptr noundef %99)
  br label %101

101:                                              ; preds = %89, %84, %95
  %102 = phi i64 [ %100, %95 ], [ 1, %84 ], [ 1, %89 ]
  %103 = phi i64 [ 2, %95 ], [ 1, %84 ], [ 1, %89 ]
  %104 = phi i32 [ %96, %95 ], [ %87, %84 ], [ %87, %89 ]
  %105 = getelementptr inbounds i8, ptr %86, i64 %102
  %106 = getelementptr inbounds i8, ptr %85, i64 %103
  br label %84, !llvm.loop !60

107:                                              ; preds = %84, %82, %72
  %108 = phi i64 [ -1, %72 ], [ %77, %82 ], [ %77, %84 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  br label %109

109:                                              ; preds = %3, %107
  %110 = phi i64 [ %108, %107 ], [ 0, %3 ]
  ret i64 %110
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_Z17expressionyyerrorPKc(ptr nocapture noundef readonly %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca [250 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 250, ptr nonnull %2) #21
  %3 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #21
  %4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds [250 x i8], ptr %2, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !43
  %8 = icmp eq i8 %7, 10
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8 0, ptr %6, align 1, !tbaa !43
  br label %10

10:                                               ; preds = %9, %1
  %11 = call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %2)
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %11) #21
  call void @llvm.lifetime.end.p0(i64 250, ptr nonnull %2) #21
  resume { ptr, i32 } %14
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL10yydestructPKciPPc(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !prof !34 {
  %3 = load i32, ptr @expressionyydebug, align 4, !tbaa !35
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  %7 = select i1 %6, ptr @.str.74, ptr %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !39
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #22
  %10 = load ptr, ptr @stderr, align 8, !tbaa !39
  tail call fastcc void @_ZL15yy_symbol_printP8_IO_FILEiPKPc(ptr noundef %10, i32 noundef %1)
  %11 = load ptr, ptr @stderr, align 8, !tbaa !39
  %12 = tail call i32 @fputc(i32 10, ptr %11)
  br label %13

13:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERi(ptr noundef %0, ptr noundef %1, ptr nocapture noundef nonnull align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = load i1, ptr @_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiE6active, align 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.75)
          to label %8 unwind label %11

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #28
  unreachable

9:                                                ; preds = %115, %11
  %10 = phi { ptr, i32 } [ %12, %11 ], [ %116, %115 ]
  resume { ptr, i32 } %10

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #21
  br label %9

13:                                               ; preds = %4
  store i1 true, ptr @_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiE6active, align 1
  store ptr null, ptr %2, align 8, !tbaa !39
  store i32 0, ptr %3, align 4, !tbaa !35
  store i32 0, ptr getelementptr inbounds (%struct.LineColumn, ptr @expressionxpos, i64 0, i32 1), align 4, !tbaa !61
  store i32 1, ptr @expressionxpos, align 8, !tbaa !63
  %14 = load i64, ptr @expressionxpos, align 8
  store i64 %14, ptr @expressionxprevpos, align 8
  store ptr null, ptr @expressionyyin, align 8, !tbaa !39
  %15 = load ptr, ptr @stderr, align 8, !tbaa !39
  store ptr %15, ptr @expressionyyout, align 8, !tbaa !39
  %16 = invoke noundef ptr @_Z24expressionyy_scan_stringPKc(ptr noundef %0)
          to label %17 unwind label %22

17:                                               ; preds = %13
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str.15)
          to label %21 unwind label %24

21:                                               ; preds = %19
  invoke void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #28
          to label %120 unwind label %22

22:                                               ; preds = %21, %13
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %115

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #21
  br label %115

26:                                               ; preds = %17
  %27 = invoke noalias noundef nonnull dereferenceable(1608) ptr @_Znam(i64 noundef 1608) #27
          to label %28 unwind label %38

28:                                               ; preds = %26
  store i64 100, ptr %27, align 16
  br label %29

29:                                               ; preds = %29, %28
  %30 = phi i64 [ 8, %28 ], [ %32, %29 ]
  %31 = getelementptr inbounds i8, ptr %27, i64 %30
  store i32 0, ptr %31, align 8, !tbaa !47
  %32 = add nuw nsw i64 %30, 16
  %33 = icmp eq i64 %32, 1608
  br i1 %33, label %34, label %29

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, ptr %27, i64 8
  store ptr %35, ptr @_ZL1e, align 8, !tbaa !39
  store ptr %1, ptr @_ZL8resolver, align 8, !tbaa !39
  %36 = invoke noundef i32 @_Z17expressionyyparsev()
          to label %37 unwind label %40

37:                                               ; preds = %34
  invoke void @_Z26expressionyy_delete_bufferP15yy_buffer_state(ptr noundef nonnull %16)
          to label %63 unwind label %89

38:                                               ; preds = %26
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %115

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %42 = extractvalue { ptr, i32 } %41, 1
  %43 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #21
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %115

45:                                               ; preds = %40
  %46 = extractvalue { ptr, i32 } %41, 0
  %47 = tail call ptr @__cxa_begin_catch(ptr %46) #21
  invoke void @_Z26expressionyy_delete_bufferP15yy_buffer_state(ptr noundef nonnull %16)
          to label %48 unwind label %61

48:                                               ; preds = %45
  %49 = load i64, ptr %27, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = shl nsw i64 %49, 4
  %53 = or disjoint i64 %52, 8
  br label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ %56, %54 ], [ %53, %51 ]
  %56 = add nsw i64 %55, -16
  %57 = getelementptr inbounds i8, ptr %27, i64 %56
  tail call void @_ZN10Expression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %57) #21
  %58 = icmp eq i64 %56, 8
  br i1 %58, label %59, label %54

59:                                               ; preds = %54, %48
  tail call void @_ZdaPv(ptr noundef %27) #23
  invoke void @__cxa_rethrow() #28
          to label %60 unwind label %61

60:                                               ; preds = %59
  unreachable

61:                                               ; preds = %59, %45
  %62 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %115 unwind label %117

63:                                               ; preds = %37
  %64 = load ptr, ptr @_ZL1e, align 8, !tbaa !39
  %65 = ptrtoint ptr %64 to i64
  %66 = ptrtoint ptr %35 to i64
  %67 = sub i64 %65, %66
  %68 = lshr exact i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, ptr %3, align 4, !tbaa !35
  %70 = shl i64 %67, 28
  %71 = ashr i64 %70, 32
  %72 = icmp ugt i64 %71, 1152921504606846975
  %73 = shl nsw i64 %71, 4
  %74 = or disjoint i64 %73, 8
  %75 = select i1 %72, i64 -1, i64 %74
  %76 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %75) #27
          to label %77 unwind label %89

77:                                               ; preds = %63
  store i64 %71, ptr %76, align 16
  %78 = getelementptr inbounds i8, ptr %76, i64 8
  %79 = icmp ult i64 %70, 4294967296
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %"class.Expression::Elem", ptr %78, i64 %71
  br label %82

82:                                               ; preds = %82, %80
  %83 = phi ptr [ %78, %80 ], [ %84, %82 ]
  store i32 0, ptr %83, align 8, !tbaa !47
  %84 = getelementptr inbounds %"class.Expression::Elem", ptr %83, i64 1
  %85 = icmp eq ptr %84, %81
  br i1 %85, label %86, label %82

86:                                               ; preds = %82, %77
  store ptr %78, ptr %2, align 8, !tbaa !39
  %87 = load i32, ptr %3, align 4, !tbaa !35
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %91, label %103

89:                                               ; preds = %63, %37
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %115

91:                                               ; preds = %86, %96
  %92 = phi i64 [ %97, %96 ], [ 0, %86 ]
  %93 = getelementptr inbounds %"class.Expression::Elem", ptr %35, i64 %92
  %94 = load ptr, ptr %2, align 8, !tbaa !39
  %95 = getelementptr inbounds %"class.Expression::Elem", ptr %94, i64 %92
  invoke void @_ZN10Expression4ElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %95, ptr noundef nonnull align 8 dereferenceable(16) %93)
          to label %96 unwind label %101

96:                                               ; preds = %91
  %97 = add nuw nsw i64 %92, 1
  %98 = load i32, ptr %3, align 4, !tbaa !35
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %91, label %103, !llvm.loop !64

101:                                              ; preds = %91
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %115

103:                                              ; preds = %96, %86
  %104 = load i64, ptr %27, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = shl nsw i64 %104, 4
  %108 = or disjoint i64 %107, 8
  br label %109

109:                                              ; preds = %106, %109
  %110 = phi i64 [ %111, %109 ], [ %108, %106 ]
  %111 = add nsw i64 %110, -16
  %112 = getelementptr inbounds i8, ptr %27, i64 %111
  tail call void @_ZN10Expression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %112) #21
  %113 = icmp eq i64 %111, 8
  br i1 %113, label %114, label %109

114:                                              ; preds = %109, %103
  tail call void @_ZdaPv(ptr noundef %27) #23
  store i1 false, ptr @_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiE6active, align 1
  ret void

115:                                              ; preds = %61, %38, %101, %89, %40, %24, %22
  %116 = phi { ptr, i32 } [ %23, %22 ], [ %25, %24 ], [ %39, %38 ], [ %102, %101 ], [ %90, %89 ], [ %41, %40 ], [ %62, %61 ]
  store i1 false, ptr @_ZZ17doParseExpressionPKcPN10Expression8ResolverERPNS1_4ElemERiE6active, align 1
  br label %9

117:                                              ; preds = %61
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  tail call void @__clang_call_terminate(ptr %119) #24
  unreachable

120:                                              ; preds = %21
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare noundef ptr @_Z24expressionyy_scan_stringPKc(ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN10Expression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #12

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_Z26expressionyy_delete_bufferP15yy_buffer_state(ptr noundef) local_unnamed_addr #3

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN10Expression4ElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i64 @_ZL9yytnamerrPcPKc(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #16 !prof !34 {
  %3 = load i8, ptr %1, align 1, !tbaa !43
  %4 = icmp eq i8 %3, 34
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi i64 [ %22, %21 ], [ 0, %5 ]
  %9 = phi ptr [ %17, %21 ], [ %1, %5 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !43
  switch i8 %11, label %16 [
    i8 39, label %27
    i8 44, label %27
    i8 92, label %12
    i8 34, label %23
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %9, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !43
  %15 = icmp eq i8 %14, 92
  br i1 %15, label %16, label %27

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %10, %7 ], [ %13, %12 ]
  br i1 %6, label %21, label %18

18:                                               ; preds = %16
  %19 = load i8, ptr %17, align 1, !tbaa !43
  %20 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 %19, ptr %20, align 1, !tbaa !43
  br label %21

21:                                               ; preds = %18, %16
  %22 = add i64 %8, 1
  br label %7, !llvm.loop !65

23:                                               ; preds = %7
  %24 = icmp eq ptr %0, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 0, ptr %26, align 1, !tbaa !43
  br label %36

27:                                               ; preds = %12, %7, %7, %2
  %28 = icmp eq ptr %0, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  br label %36

31:                                               ; preds = %27
  %32 = tail call ptr @stpcpy(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %0 to i64
  %35 = sub i64 %33, %34
  br label %36

36:                                               ; preds = %25, %23, %31, %29
  %37 = phi i64 [ %35, %31 ], [ %30, %29 ], [ %8, %23 ], [ %8, %25 ]
  ret i64 %37
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias noundef writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !56
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #23
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !56
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #23
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  tail call void @_ZdlPv(ptr noundef %0) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #20

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(none) }
attributes #13 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { cold }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!37, !37, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSN10Expression4ElemE", !49, i64 0, !37, i64 8}
!49 = !{!"_ZTSN10Expression4Elem4TypeE", !37, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !38, i64 0}
!52 = !{!53, !40, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !54, i64 0, !55, i64 8, !37, i64 16}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!55 = !{!"long", !37, i64 0}
!56 = !{!53, !55, i64 8}
!57 = distinct !{!57, !45, !46}
!58 = distinct !{!58, !45, !46}
!59 = distinct !{!59, !45, !46}
!60 = distinct !{!60, !45, !46}
!61 = !{!62, !36, i64 4}
!62 = !{!"_ZTS10LineColumn", !36, i64 0, !36, i64 4}
!63 = !{!62, !36, i64 0}
!64 = distinct !{!64, !45, !46}
!65 = distinct !{!65, !45, !46}
