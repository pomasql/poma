/*
    Тесты
*/

/* ------------------------------------------------------------------------- */
SELECT poma.test('pkg_require'); -- BOT
/*
  Тест pkg_require
*/
SELECT * FROM poma.pkg_require('test'); -- EOT
/* ------------------------------------------------------------------------- */

/* ------------------------------------------------------------------------- */
SELECT poma.test('array_remove'); -- BOT
/*
  Тест array_remove
*/
SELECT * FROM poma.array_remove(ARRAY['poma-sample', 'poma', 'mega_scheme'], 'mega_scheme'); -- EOT
/* ------------------------------------------------------------------------- */

/* ------------------------------------------------------------------------- */
SELECT poma.test('pkg_op_before'); -- BOT
/*
  Тест pkg_op_before
*/
SELECT poma.pkg_op_before('create', 'test_poma', 'test_poma', '', '', '', 'POMA_STRICT_is_set'); -- EOT
--TODO: RAISE EXCEPTION отработать utils.exception_test из pgm
/* ------------------------------------------------------------------------- */

/* ------------------------------------------------------------------------- */
SELECT poma.test('pkg_op_after'); -- BOT
/*
  Тест pkg_op_after
*/
SELECT poma.pkg_op_after('create', 'test_poma', 'test_poma', '', '', '', 'POMA_STRICT_is_set'); -- EOT
--TODO: RAISE EXCEPTION отработать utils.exception_test из pgm
/* ------------------------------------------------------------------------- */

/* ------------------------------------------------------------------------- */
SELECT poma.test('pkg'); -- BOT
/*
  Тест pkg
*/
SELECT code, schemas, op FROM poma.pkg('test_poma'); -- EOT
/* ------------------------------------------------------------------------- */

/* ------------------------------------------------------------------------- */
SELECT poma.test('pkg_with_non_existent_schema'); -- BOT
/*
  Тест pkg с несуществующей схемой. Ожидаемый результат: 0 строк.
*/
SELECT count(1) FROM poma.pkg('non_existent_schema'); -- EOT
/* ------------------------------------------------------------------------- */

/* ------------------------------------------------------------------------- */
SELECT poma.test('patch'); -- BOT
/*
  Тест patch
*/
SELECT poma.patch('poma_test','a83084dc0332dbc4d1f7a6c7dc7b4993','sql/poma_test/20_xxtest_once.sql','sql/poma_test/','.build/empty_test.sql'); -- EOT
SELECT poma.patch('poma_test','a83084dc0332dbc4d1f7a6c7dc7b4993','sql/poma_test/20_xxtest_once.sql','sql/poma_test/','.build/empty_test.sql'); -- EOT
/* ------------------------------------------------------------------------- */

/* ------------------------------------------------------------------------- */
SELECT poma.test('raise_on_errors'); -- BOT
/*
  Тест raise_on_errors
*/
SELECT poma.raise_on_errors(''); -- EOT
--TODO: после подключения pgm/utils можно отработать тест с исключением,- utils.exception_test
/* ------------------------------------------------------------------------- */

